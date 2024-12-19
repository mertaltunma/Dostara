import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'shelter_informations_model.dart';
export 'shelter_informations_model.dart';

class ShelterInformationsWidget extends StatefulWidget {
  const ShelterInformationsWidget({super.key});

  @override
  State<ShelterInformationsWidget> createState() =>
      _ShelterInformationsWidgetState();
}

class _ShelterInformationsWidgetState extends State<ShelterInformationsWidget> {
  late ShelterInformationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShelterInformationsModel());

    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textFieldFocusNode6 ??= FocusNode();
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
              context.safePop();
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
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
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 32.0),
            child: FutureBuilder<List<SheltersRow>>(
              future: SheltersTable().querySingleRow(
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
                        color: FlutterFlowTheme.of(context).alternate,
                        size: 77.0,
                      ),
                    ),
                  );
                }
                List<SheltersRow> columnSheltersRowList = snapshot.data!;

                final columnSheltersRow = columnSheltersRowList.isNotEmpty
                    ? columnSheltersRowList.first
                    : null;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 134.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF181C26), Color(0xFF1F2231)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Barınak Bilgileri',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Mukta',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'Barınağın düzenli ve dikkat çekici görünmesi için aşağıda ki bilgileri doldurunuz',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mukta',
                                      color: const Color(0xFFE0E0E0),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Barınağın Kapak Fotoğrafı',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mukta',
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 250.0,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 250.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              _model.isNewImageUploaded
                                                  ? _model.uploadedFileUrl
                                                  : columnSheltersRow
                                                      ?.shelterPhoto,
                                              'data:image/jpeg;base64,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',
                                            ),
                                            width: 200.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            final selectedMedia =
                                                await selectMediaWithSourceBottomSheet(
                                              context: context,
                                              storageFolderPath: 'Dostara',
                                              allowPhoto: true,
                                            );
                                            if (selectedMedia != null &&
                                                selectedMedia.every((m) =>
                                                    validateFileFormat(
                                                        m.storagePath,
                                                        context))) {
                                              safeSetState(() => _model
                                                  .isDataUploading = true);
                                              var selectedUploadedFiles =
                                                  <FFUploadedFile>[];

                                              var downloadUrls = <String>[];
                                              try {
                                                selectedUploadedFiles =
                                                    selectedMedia
                                                        .map((m) =>
                                                            FFUploadedFile(
                                                              name: m
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes: m.bytes,
                                                              height: m
                                                                  .dimensions
                                                                  ?.height,
                                                              width: m
                                                                  .dimensions
                                                                  ?.width,
                                                              blurHash:
                                                                  m.blurHash,
                                                            ))
                                                        .toList();

                                                downloadUrls =
                                                    await uploadSupabaseStorageFiles(
                                                  bucketName:
                                                      'flutterflowBucket',
                                                  selectedFiles: selectedMedia,
                                                );
                                              } finally {
                                                _model.isDataUploading = false;
                                              }
                                              if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length &&
                                                  downloadUrls.length ==
                                                      selectedMedia.length) {
                                                safeSetState(() {
                                                  _model.uploadedLocalFile =
                                                      selectedUploadedFiles
                                                          .first;
                                                  _model.uploadedFileUrl =
                                                      downloadUrls.first;
                                                });
                                              } else {
                                                safeSetState(() {});
                                                return;
                                              }
                                            }
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Color(0x4C000000),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Icon(
                                                    Icons.add_a_photo,
                                                    color: Colors.white,
                                                    size: 43.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Fotoğraf Ekle',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Mukta',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                              ].divide(const SizedBox(height: 20.0)),
                            ),
                          ),
                        ),
                      ),
                      Material(
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Barınak Detayları',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Mukta',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Container(
                                  child: TextFormField(
                                    controller: _model.textController1 ??=
                                        TextEditingController(
                                      text: columnSheltersRow?.shelterName,
                                    ),
                                    focusNode: _model.textFieldFocusNode1,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Barınağın Adı',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFE0E0E0),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    maxLength: 64,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                    controller: _model.textController2 ??=
                                        TextEditingController(
                                      text: columnSheltersRow?.phone,
                                    ),
                                    focusNode: _model.textFieldFocusNode2,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Barınak Telefon',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: '0212-212-2121',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFE0E0E0),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    maxLength: 64,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    validator: _model.textController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                    controller: _model.textController3 ??=
                                        TextEditingController(
                                      text: columnSheltersRow?.email,
                                    ),
                                    focusNode: _model.textFieldFocusNode3,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Barınak E-posta',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFE0E0E0),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    maxLength: 64,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    validator: _model.textController3Validator
                                        .asValidator(context),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController4 ??=
                                            TextEditingController(
                                          text: columnSheltersRow
                                              ?.shelterLocation,
                                        ),
                                        focusNode: _model.textFieldFocusNode4,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Barınak Konumu',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Mukta',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Mukta',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFE0E0E0),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Mukta',
                                              letterSpacing: 0.0,
                                            ),
                                        minLines: 1,
                                        maxLength: 64,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .textController4Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                ),
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                    controller: _model.textController5 ??=
                                        TextEditingController(
                                      text: columnSheltersRow?.capacity,
                                    ),
                                    focusNode: _model.textFieldFocusNode5,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Barınak Kapasite',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFE0E0E0),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    minLines: 1,
                                    maxLength: 64,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType: TextInputType.number,
                                    validator: _model.textController5Validator
                                        .asValidator(context),
                                  ),
                                ),
                                TextFormField(
                                  controller: _model.textController6 ??=
                                      TextEditingController(
                                    text: columnSheltersRow?.explanation,
                                  ),
                                  focusNode: _model.textFieldFocusNode6,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Barınak Tanıtım',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        'Barınağın gayesi, Barınak hakkında önbilgilendirme vb.',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E0E0),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Mukta',
                                        letterSpacing: 0.0,
                                      ),
                                  maxLines: 5,
                                  minLines: 3,
                                  maxLength: 300,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  validator: _model.textController6Validator
                                      .asValidator(context),
                                ),
                                Container(),
                              ].divide(const SizedBox(height: 20.0)),
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          await SheltersTable().update(
                            data: {
                              'shelter_photo': _model.uploadedFileUrl,
                              'shelter_name': _model.textController1.text,
                              'shelter_location':
                                  columnSheltersRow?.shelterLocation,
                              'capacity': _model.textController5.text,
                              'phone': _model.textController2.text,
                              'explanation': _model.textController6.text,
                              'email': _model.textController3.text,
                            },
                            matchingRows: (rows) => rows.eqOrNull(
                              'user_id',
                              currentUserUid,
                            ),
                          );
                          _model.isNewImageUploaded = true;
                          safeSetState(() {});

                          context.pushNamed('Account');
                        },
                        text: 'Değişiklikleri Kaydet',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 56.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).alternate,
                          textStyle:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Mukta',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 24.0))
                        .addToEnd(const SizedBox(height: 32.0)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
