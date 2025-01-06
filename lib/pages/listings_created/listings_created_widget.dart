import '/backend/supabase/supabase.dart';
import '/components/listings/listings_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'listings_created_model.dart';
export 'listings_created_model.dart';

class ListingsCreatedWidget extends StatefulWidget {
  const ListingsCreatedWidget({super.key});

  @override
  State<ListingsCreatedWidget> createState() => _ListingsCreatedWidgetState();
}

class _ListingsCreatedWidgetState extends State<ListingsCreatedWidget>
    with TickerProviderStateMixin {
  late ListingsCreatedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingsCreatedModel());

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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.listingsModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const ListingsWidget(),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('CreatListing');
                          },
                          text: 'İlan Oluştur',
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                32.0, 0.0, 32.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Mukta',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                      FutureBuilder<List<OtherAnnouncementsRow>>(
                        future: OtherAnnouncementsTable().queryRows(
                          queryFn: (q) => q.order('created_at'),
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
                          List<OtherAnnouncementsRow>
                              listViewOtherAnnouncementsRowList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewOtherAnnouncementsRowList.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewOtherAnnouncementsRow =
                                  listViewOtherAnnouncementsRowList[
                                      listViewIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'ListingPage',
                                    queryParameters: {
                                      'correspondingOtherAnnouncement':
                                          serializeParam(
                                        listViewOtherAnnouncementsRow,
                                        ParamType.SupabaseRow,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  listViewOtherAnnouncementsRow
                                                      .announcementType,
                                                  'Sahiplendirme',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      fontFamily: 'Mukta',
                                                      color: listViewOtherAnnouncementsRow
                                                                  .announcementType ==
                                                              'Yardım Çağrısı'
                                                          ? const Color(0xFFBA1414)
                                                          : const Color(0xFFF5DB02),
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                      "d/M H:mm",
                                                      listViewOtherAnnouncementsRow
                                                          .createdAt),
                                                  'Oluşturulma Zamanı',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      listViewOtherAnnouncementsRow
                                                          .animalPhoto,
                                                      'https://images.unsplash.com/photo-1489084917528-a57e68a79a1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxDYXR8ZW58MHx8fHwxNzMxNTIyMDcwfDA&ixlib=rb-4.0.3&q=80&w=1080',
                                                    ),
                                                    width: 80.0,
                                                    height: 80.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        listViewOtherAnnouncementsRow
                                                            .title,
                                                        'Başlık',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily: 'Mukta',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        listViewOtherAnnouncementsRow
                                                            .explanation,
                                                        'Açıklama',
                                                      ).maybeHandleOverflow(
                                                        maxChars: 134,
                                                        replacement: '…',
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 6,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Mukta',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 12.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.person,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 20.0,
                                                  ),
                                                  Text(
                                                    listViewOtherAnnouncementsRow
                                                        .ownerName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.phone,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      listViewOtherAnnouncementsRow
                                                          .ownerPhone,
                                                      'Telefon Numarası',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
                                              ),
                                            ],
                                          ),
                                        ].divide(const SizedBox(height: 12.0)),
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
                      Container(
                        width: double.infinity,
                        height: 80.0,
                        decoration: const BoxDecoration(),
                      ),
                    ]
                        .divide(const SizedBox(height: 16.0))
                        .addToEnd(const SizedBox(height: 32.0)),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NavBarWidget(
                    pageNumber: 11,
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
