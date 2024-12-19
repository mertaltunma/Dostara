import '/backend/supabase/supabase.dart';
import '/components/listings/listings_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home_page_lost_model.dart';
export 'home_page_lost_model.dart';

class HomePageLostWidget extends StatefulWidget {
  const HomePageLostWidget({super.key});

  @override
  State<HomePageLostWidget> createState() => _HomePageLostWidgetState();
}

class _HomePageLostWidgetState extends State<HomePageLostWidget> {
  late HomePageLostModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageLostModel());
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
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: const AlignmentDirectional(0.0, 1.0),
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.listingsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const ListingsWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            constraints: const BoxConstraints(
                              maxHeight: 550.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 1.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Kayıp Dostlar',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Mukta',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                    FutureBuilder<List<LostAnimalsPostingsRow>>(
                                      future:
                                          LostAnimalsPostingsTable().queryRows(
                                        queryFn: (q) => q,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 77.0,
                                              height: 77.0,
                                              child: SpinKitPulse(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 77.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<LostAnimalsPostingsRow>
                                            listViewLostAnimalsPostingsRowList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewLostAnimalsPostingsRowList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewLostAnimalsPostingsRow =
                                                listViewLostAnimalsPostingsRowList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'LostProfile',
                                                    queryParameters: {
                                                      'correspondingLostAnimalPosting':
                                                          serializeParam(
                                                        listViewLostAnimalsPostingsRow,
                                                        ParamType.SupabaseRow,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  elevation: 3.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  2.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            2.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listViewLostAnimalsPostingsRow
                                                                          .animalPhoto,
                                                                      'https://images.unsplash.com/photo-1507145569372-d69bae8bc9a0?w=500&h=500',
                                                                    ),
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        100.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    2.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      listViewLostAnimalsPostingsRow
                                                                          .animalName
                                                                          .maybeHandleOverflow(
                                                                        maxChars:
                                                                            15,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'İlan Veren: ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      listViewLostAnimalsPostingsRow
                                                                          .ownerName
                                                                          .maybeHandleOverflow(
                                                                        maxChars:
                                                                            20,
                                                                        replacement:
                                                                            '…',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'İletişim: ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewLostAnimalsPostingsRow
                                                                            .ownerPhone,
                                                                        '05xx xxx xxxx',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      'Konum: ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewLostAnimalsPostingsRow
                                                                            .district,
                                                                        'İlçe',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      '/',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewLostAnimalsPostingsRow
                                                                            .city,
                                                                        'İl',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Mukta',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ].divide(const SizedBox(height: 12.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('CreateLostListing');
                          },
                          text: 'Kayıp İlanı Oluştur',
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
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
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
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
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 1.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Bulunan En Son Hayvanlar',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily: 'Mukta',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  SizedBox(
                                    height: 180.0,
                                    child:
                                        FutureBuilder<List<FoundedAnimalsRow>>(
                                      future: FoundedAnimalsTable().queryRows(
                                        queryFn: (q) => q,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 77.0,
                                              height: 77.0,
                                              child: SpinKitPulse(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                size: 77.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<FoundedAnimalsRow>
                                            listViewFoundedAnimalsRowList =
                                            snapshot.data!;

                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount:
                                              listViewFoundedAnimalsRowList
                                                  .length,
                                          separatorBuilder: (_, __) =>
                                              const SizedBox(width: 16.0),
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewFoundedAnimalsRow =
                                                listViewFoundedAnimalsRowList[
                                                    listViewIndex];
                                            return Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  dateTimeFormat(
                                                      "d/M H:mm",
                                                      listViewFoundedAnimalsRow
                                                          .createdAt),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Material(
                                                  color: Colors.transparent,
                                                  elevation: 2.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Container(
                                                    width: 126.0,
                                                    height: 117.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          listViewFoundedAnimalsRow
                                                              .animalPhoto,
                                                          'data:image/jpeg;base64,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',
                                                        ),
                                                        width: 140.0,
                                                        height: 140.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: valueOrDefault<
                                                            String>(
                                                          listViewFoundedAnimalsRow
                                                              .animalName,
                                                          'İsim',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Mukta',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      const TextSpan(
                                                        text: ' • ',
                                                        style: TextStyle(),
                                                      ),
                                                      const TextSpan(
                                                        text: 'Bulundu!',
                                                        style: TextStyle(),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 8.0)),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 0.0),
                        child: Text(
                          'Create Listing',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 80.0,
                        decoration: const BoxDecoration(),
                      ),
                    ],
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.navBarModel,
                updateCallback: () => safeSetState(() {}),
                child: const NavBarWidget(
                  pageNumber: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
