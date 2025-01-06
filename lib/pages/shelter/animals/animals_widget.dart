import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'animals_model.dart';
export 'animals_model.dart';

class AnimalsWidget extends StatefulWidget {
  const AnimalsWidget({
    super.key,
    required this.userId,
  });

  final String? userId;

  @override
  State<AnimalsWidget> createState() => _AnimalsWidgetState();
}

class _AnimalsWidgetState extends State<AnimalsWidget>
    with TickerProviderStateMixin {
  late AnimalsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimalsModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 700.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
            child: Text(
              'Geri',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Mukta',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Text(
                        'Barınağın Sakinleri',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mukta',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                      child: Text(
                        'Alt tarafta barınakta bulunan dostlarımızı görebilirsiniz.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mukta',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 16.0,
                    endIndent: 16.0,
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
                    child: FutureBuilder<List<AnimalsRow>>(
                      future: AnimalsTable().queryRows(
                        queryFn: (q) => q
                            .eqOrNull(
                              'user_id',
                              widget.userId,
                            )
                            .order('created_at'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 43.0,
                              height: 43.0,
                              child: SpinKitRipple(
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                size: 43.0,
                              ),
                            ),
                          );
                        }
                        List<AnimalsRow> listViewAnimalsRowList =
                            snapshot.data!;

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewAnimalsRowList.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewAnimalsRow =
                                listViewAnimalsRowList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'AnimalProfile',
                                  queryParameters: {
                                    'correspondingAnimal': serializeParam(
                                      listViewAnimalsRow,
                                      ParamType.SupabaseRow,
                                    ),
                                    'shelterId': serializeParam(
                                      widget.userId,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              listViewAnimalsRow.animalPhoto,
                                              'https://images.unsplash.com/photo-1696799428853-253be6509dd7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxDYW5lJTIwQ29yc298ZW58MHx8fHwxNzMwMjc4ODM4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                            ),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 300.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Adı',
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mukta',
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          listViewAnimalsRow
                                                              .animalName,
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Mukta',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 17.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Cinsi',
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mukta',
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewAnimalsRow
                                                                .breed,
                                                            'Tür',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Mukta',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 17.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ].divide(const SizedBox(height: 8.0)),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Barınağa Geldiği Tarih',
                                              textAlign: TextAlign.center,
                                              maxLines: 2,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                listViewAnimalsRow.dateShelter,
                                                'Tarih',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ).animateOnPageLoad(
                            animationsMap['listViewOnPageLoadAnimation']!);
                      },
                    ),
                  ),
                ]
                    .divide(const SizedBox(height: 8.0))
                    .addToEnd(const SizedBox(height: 32.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
