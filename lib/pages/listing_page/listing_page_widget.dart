import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'listing_page_model.dart';
export 'listing_page_model.dart';

class ListingPageWidget extends StatefulWidget {
  const ListingPageWidget({
    super.key,
    required this.correspondingOtherAnnouncement,
  });

  final OtherAnnouncementsRow? correspondingOtherAnnouncement;

  @override
  State<ListingPageWidget> createState() => _ListingPageWidgetState();
}

class _ListingPageWidgetState extends State<ListingPageWidget> {
  late ListingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingPageModel());
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 300.0,
                  child: Stack(
                    children: [
                      Image.network(
                        valueOrDefault<String>(
                          widget.correspondingOtherAnnouncement?.animalPhoto,
                          'https://images.unsplash.com/photo-1520560321666-4b36560e7979?w=500&h=500',
                        ),
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.cover,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 2.0,
                            sigmaY: 2.0,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 60.0, 24.0, 12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FlutterFlowIconButton(
                                    borderRadius: 20.0,
                                    buttonSize: 40.0,
                                    fillColor: const Color(0x34000000),
                                    icon: Icon(
                                      Icons.arrow_back_rounded,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 24.0, 32.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondary,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 16.0, 8.0, 16.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.correspondingOtherAnnouncement
                                        ?.announcementType,
                                    'İlan Türü',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mukta',
                                        color:
                                            widget.correspondingOtherAnnouncement
                                                        ?.announcementType ==
                                                    'Sahiplendirme'
                                                ? const Color(0xFFF5DB02)
                                                : const Color(0xFFBA1414),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Text(
                              dateTimeFormat(
                                  "d/M H:mm",
                                  widget.correspondingOtherAnnouncement!
                                      .createdAt),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.correspondingOtherAnnouncement?.title,
                            'Başlık',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Mukta',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Açıklama',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Mukta',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.correspondingOtherAnnouncement
                                        ?.explanation,
                                    'Açıklama Metni',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mukta',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Konum',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Mukta',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  widget
                                                      .correspondingOtherAnnouncement
                                                      ?.district,
                                                  'İlçe',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                '/',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  widget
                                                      .correspondingOtherAnnouncement
                                                      ?.city,
                                                  'İl',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'İletişim',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Mukta',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'İlan Sahibi:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.correspondingOtherAnnouncement
                                            ?.ownerName,
                                        'İlan Sahibi İsmi',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Telefon:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.correspondingOtherAnnouncement
                                            ?.ownerPhone,
                                        'Telefon',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ].divide(const SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 24.0))
                          .addToEnd(const SizedBox(height: 32.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
