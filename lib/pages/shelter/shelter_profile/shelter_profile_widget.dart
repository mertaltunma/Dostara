import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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

class _ShelterProfileWidgetState extends State<ShelterProfileWidget>
    with TickerProviderStateMixin {
  late ShelterProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShelterProfileModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                                      widget.correspondingShelter
                                          ?.howManyAnimalInShelter,
                                      '0',
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
                                  const TextSpan(
                                    text: '/',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget.correspondingShelter?.capacity,
                                      '0',
                                    ),
                                    style: const TextStyle(),
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.correspondingShelter?.explanation,
                                    'Açıklama Metni',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mukta',
                                        letterSpacing: 0.0,
                                      ),
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                        const EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                    width: 43.0,
                                    height: 43.0,
                                    child: SpinKitRipple(
                                      color: FlutterFlowTheme.of(context)
                                          .customColor3,
                                      size: 43.0,
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
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(
                                      'Barınağı Değerlendirin',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 65.0,
                                        height: 65.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0xC4E0E5EA),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                columnUsersRow?.userPhoto,
                                                'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                                              ),
                                              width: 40.0,
                                              height: 40.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            columnUsersRow?.userName,
                                            'İsim',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Mukta',
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) =>
                                          safeSetState(() => _model
                                              .ratingBarValue1 = newValue),
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: _model.ratingBarValue1 ??=
                                          3.0,
                                      unratedColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      itemCount: 5,
                                      itemSize: 34.0,
                                      glowColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            autofocus: false,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              isDense: true,
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Yorumunuz...',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0x86D1D1D1),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Mukta',
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 3,
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
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
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await CommentsTable().insert({
                                          'created_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'rate':
                                              _model.ratingBarValue1?.round(),
                                          'comment_text':
                                              _model.textController.text,
                                          'user_name': columnUsersRow?.userName,
                                          'user_photo':
                                              columnUsersRow?.userPhoto,
                                          'user_id': currentUserUid,
                                          'shelter_user_id': widget
                                              .correspondingShelter?.userId,
                                        });
                                        safeSetState(() =>
                                            _model.requestCompleter = null);
                                        await _model.waitForRequestCompleted();
                                        safeSetState(() {
                                          _model.textController?.clear();
                                        });
                                      },
                                      text: 'Değerlendirme Yap',
                                      options: FFButtonOptions(
                                        height: 50.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            32.0, 0.0, 32.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Mukta',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                      child: Text(
                        'Değerlendirmeler',
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Mukta',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 32.0),
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
                                        width: 43.0,
                                        height: 43.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor3,
                                          size: 43.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<CommentsRow> listViewCommentsRowList =
                                      snapshot.data!;

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listViewCommentsRowList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 16.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewCommentsRow =
                                          listViewCommentsRowList[
                                              listViewIndex];
                                      return Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2.0,
                                                        shape:
                                                            const CircleBorder(),
                                                        child: Container(
                                                          width: 65.0,
                                                          height: 65.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color(
                                                                0xC4D9DFE7),
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color:
                                                                  Colors.white,
                                                              width: 3.0,
                                                            ),
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewCommentsRow
                                                                    .userPhoto,
                                                                'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                                                              ),
                                                              width: 40.0,
                                                              height: 40.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewCommentsRow
                                                                  .userName,
                                                              'İsim Soyisim',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Mukta',
                                                                  fontSize:
                                                                      14.0,
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
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                    ]
                                                        .addToStart(const SizedBox(
                                                            width: 8.0))
                                                        .addToEnd(const SizedBox(
                                                            width: 8.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child:
                                                              RatingBarIndicator(
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    Icon(
                                                              Icons
                                                                  .star_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                            ),
                                                            direction:
                                                                Axis.horizontal,
                                                            rating:
                                                                valueOrDefault<
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0x86D1D1D1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listViewCommentsRow
                                                                      .commentText,
                                                                  'Comment Text',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 300,
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
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ]
                                                    .divide(
                                                        const SizedBox(height: 8.0))
                                                    .addToStart(
                                                        const SizedBox(height: 8.0))
                                                    .addToEnd(
                                                        const SizedBox(height: 8.0)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).animateOnPageLoad(animationsMap[
                                      'listViewOnPageLoadAnimation']!);
                                },
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
