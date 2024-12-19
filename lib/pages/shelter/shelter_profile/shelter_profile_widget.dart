import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'shelter_profile_model.dart';
export 'shelter_profile_model.dart';

class ShelterProfileWidget extends StatefulWidget {
  const ShelterProfileWidget({
    super.key,
    required this.correspondingShelter,
  });

  final SheltersRow? correspondingShelter;

  @override
  State<ShelterProfileWidget> createState() => _ShelterProfileWidgetState();
}

class _ShelterProfileWidgetState extends State<ShelterProfileWidget> {
  late ShelterProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShelterProfileModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
          child: Container(
            decoration: const BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 300.0,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network(
                            valueOrDefault<String>(
                              widget.correspondingShelter?.shelterPhoto,
                              'https://images.unsplash.com/photo-1708702907152-be8b601030d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOXx8QW5pbWFsJTIwRG9nfGVufDB8fHx8MTczMDEzMTc0MHww&ixlib=rb-4.0.3&q=80&w=1080',
                            ),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2.0,
                              sigmaY: 2.0,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 60.0, 24.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          buttonSize: 40.0,
                                          fillColor: const Color(0x34000000),
                                          icon: Icon(
                                            Icons.arrow_back_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20.0,
                                              buttonSize: 40.0,
                                              fillColor: const Color(0x34000000),
                                              icon: Icon(
                                                Icons.share,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 24.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ].divide(const SizedBox(width: 16.0)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: AutoSizeText(
                                        valueOrDefault<String>(
                                          widget.correspondingShelter
                                              ?.shelterName,
                                          'Barınak İsmi',
                                        ),
                                        textAlign: TextAlign.center,
                                        minFontSize: 20.0,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Mukta',
                                              color: Colors.white,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.correspondingShelter
                                          ?.shelterLocation,
                                      'Konum',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kapasite',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget.correspondingShelter?.capacity,
                                      'Kapasite',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mukta',
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Telefon',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget.correspondingShelter?.phone,
                                'Telefon Numarası ',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mukta',
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 4.0)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Animals',
                              queryParameters: {
                                'userId': serializeParam(
                                  widget.correspondingShelter?.userId,
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
                          child: Container(
                            width: 300.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Hayvanları Gör',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Mukta',
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(width: 16.0)),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 16.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xC4F1F4F8),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Text(
                                    'Barınak Hakkında',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget.correspondingShelter?.explanation,
                                  'Açıklama Metni',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mukta',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 16.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xC4F1F4F8),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Text(
                                    'Bize Ulaşın',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          widget.correspondingShelter
                                              ?.shelterLocation,
                                          'Konum',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Mukta',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.email,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.correspondingShelter?.email,
                                        'E-posta',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 12.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.language,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.correspondingShelter?.website,
                                        'Web Sitesi',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 12.0)),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 32.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xC4F1F4F8),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  'Değerlendirmeler',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Mukta',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              FutureBuilder<List<CommentsRow>>(
                                future: (_model.requestCompleter ??=
                                        Completer<List<CommentsRow>>()
                                          ..complete(CommentsTable().queryRows(
                                            queryFn: (q) => q.eqOrNull(
                                              'shelter_user_id',
                                              widget
                                                  .correspondingShelter?.userId,
                                            ),
                                          )))
                                    .future,
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 77.0,
                                        height: 77.0,
                                        child: SpinKitPulse(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          size: 77.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<CommentsRow> listViewCommentsRowList =
                                      snapshot.data!;

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listViewCommentsRowList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewCommentsRow =
                                          listViewCommentsRowList[
                                              listViewIndex];
                                      return Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      valueOrDefault<String>(
                                                        listViewCommentsRow
                                                            .userPhoto,
                                                        'data:image/png;base64,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',
                                                      ),
                                                      width: 40.0,
                                                      height: 40.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          listViewCommentsRow
                                                              .userName,
                                                          'İsim Soyisim',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mukta',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: Text(
                                                        dateTimeFormat(
                                                            "d/M H:mm",
                                                            listViewCommentsRow
                                                                .createdAt),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mukta',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: RatingBarIndicator(
                                                        itemBuilder:
                                                            (context, index) =>
                                                                Icon(
                                                          Icons.star_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                        direction:
                                                            Axis.horizontal,
                                                        rating: valueOrDefault<
                                                            double>(
                                                          listViewCommentsRow
                                                              .rate
                                                              ?.toDouble(),
                                                          5.0,
                                                        ),
                                                        unratedColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        itemCount: 5,
                                                        itemSize: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        listViewCommentsRow
                                                            .commentText,
                                                        'Comment Text',
                                                      ),
                                                      maxLines: 3,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Mukta',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                              Container(
                                width: 319.0,
                                height: 288.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 0.0),
                                  child: FutureBuilder<List<UsersRow>>(
                                    future: UsersTable().querySingleRow(
                                      queryFn: (q) => q.eqOrNull(
                                        'user_id',
                                        currentUserUid,
                                      ),
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
                                      List<UsersRow> columnUsersRowList =
                                          snapshot.data!;

                                      final columnUsersRow =
                                          columnUsersRowList.isNotEmpty
                                              ? columnUsersRowList.first
                                              : null;

                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Değerlendirme Yap!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Mukta',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    columnUsersRow?.userPhoto,
                                                    'data:image/jpeg;base64,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',
                                                  ),
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    columnUsersRow?.userName,
                                                    'İsim',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          RatingBar.builder(
                                            onRatingUpdate: (newValue) =>
                                                safeSetState(() =>
                                                    _model.ratingBarValue2 =
                                                        newValue),
                                            itemBuilder: (context, index) =>
                                                Icon(
                                              Icons.star_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating:
                                                _model.ratingBarValue2 ??= 3.0,
                                            unratedColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            itemCount: 5,
                                            itemSize: 24.0,
                                            glowColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController,
                                                    focusNode: _model
                                                        .textFieldFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mukta',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          'Yorumunuzu Yapın',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Mukta',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    maxLines: 3,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .textControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await CommentsTable().insert({
                                                  'created_at':
                                                      supaSerialize<DateTime>(
                                                          getCurrentTimestamp),
                                                  'rate': _model.ratingBarValue2
                                                      ?.round(),
                                                  'comment_text': _model
                                                      .textController.text,
                                                  'user_name':
                                                      columnUsersRow?.userName,
                                                  'user_photo':
                                                      columnUsersRow?.userPhoto,
                                                  'user_id': currentUserUid,
                                                  'shelter_user_id': widget
                                                      .correspondingShelter
                                                      ?.userId,
                                                });
                                                safeSetState(() => _model
                                                    .requestCompleter = null);
                                                await _model
                                                    .waitForRequestCompleted();
                                                safeSetState(() {
                                                  _model.textController
                                                      ?.clear();
                                                });
                                              },
                                              text: 'Değerlendirme Yap',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ].addToEnd(const SizedBox(height: 32.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
