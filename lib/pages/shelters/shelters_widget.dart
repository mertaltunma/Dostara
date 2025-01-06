import '/backend/supabase/supabase.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'shelters_model.dart';
export 'shelters_model.dart';

class SheltersWidget extends StatefulWidget {
  const SheltersWidget({super.key});

  @override
  State<SheltersWidget> createState() => _SheltersWidgetState();
}

class _SheltersWidgetState extends State<SheltersWidget>
    with TickerProviderStateMixin {
  late SheltersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SheltersModel());

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
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            'Geri',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Mukta',
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Barınaklar',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Mukta',
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Text(
                          'Alt tarafta uygulamamıza kayıtlı barınakları görebilirsiniz.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Mukta',
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
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: FutureBuilder<List<SheltersRow>>(
                        future: SheltersTable().queryRows(
                          queryFn: (q) => q.order('howManyAnimalInShelter'),
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
                          List<SheltersRow> listViewSheltersRowList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewSheltersRowList.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewSheltersRow =
                                  listViewSheltersRowList[listViewIndex];
                              return Container(
                                width: double.infinity,
                                height: 169.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Opacity(
                                      opacity: 0.6,
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              listViewSheltersRow.shelterPhoto,
                                              'https://images.unsplash.com/photo-1708702907152-be8b601030d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOXx8QW5pbWFsJTIwRG9nfGVufDB8fHx8MTczMDEzMTc0MHww&ixlib=rb-4.0.3&q=80&w=1080',
                                            ),
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 2.0,
                                          sigmaY: 2.0,
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'ShelterProfile',
                                              queryParameters: {
                                                'correspondingShelter':
                                                    serializeParam(
                                                  listViewSheltersRow,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: const Color(0x34000000),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: Colors.white,
                                                width: 2.0,
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                constraints: const BoxConstraints(
                                                  maxWidth: 250.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: const Color(0x6DFFFFFF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      listViewSheltersRow
                                                          .shelterName,
                                                      'İsim',
                                                    ).maybeHandleOverflow(
                                                      maxChars: 21,
                                                      replacement: '…',
                                                    ),
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 8.0, 4.0, 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 4.0,
                                                                8.0, 4.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                valueOrDefault<
                                                                    String>(
                                                              listViewSheltersRow
                                                                  .howManyAnimalInShelter,
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Mukta',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          const TextSpan(
                                                            text: '/',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                valueOrDefault<
                                                                    String>(
                                                              listViewSheltersRow
                                                                  .capacity,
                                                              '0',
                                                            ),
                                                            style: const TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          )
                                                        ],
                                                        style: const TextStyle(),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0x6EFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: valueOrDefault<
                                                          String>(
                                                        listViewSheltersRow
                                                            .shelterLocation,
                                                        'Konum',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Mukta',
                                                            color: Colors.black,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: const Color(0x6EFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Icon(
                                                    Icons.phone_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewSheltersRow.phone,
                                                      'Telefon Numarası',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          color: Colors.black,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(width: 8.0))
                                                    .addToStart(
                                                        const SizedBox(width: 4.0))
                                                    .addToEnd(
                                                        const SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 12.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ).animateOnPageLoad(
                              animationsMap['listViewOnPageLoadAnimation']!);
                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: const BoxDecoration(),
                    ),
                  ].divide(const SizedBox(height: 8.0)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavBarWidget(
                    pageNumber: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
