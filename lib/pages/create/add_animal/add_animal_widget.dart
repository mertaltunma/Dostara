import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'add_animal_model.dart';
export 'add_animal_model.dart';

class AddAnimalWidget extends StatefulWidget {
  const AddAnimalWidget({super.key});

  @override
  State<AddAnimalWidget> createState() => _AddAnimalWidgetState();
}

class _AddAnimalWidgetState extends State<AddAnimalWidget> {
  late AddAnimalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddAnimalModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode7 ??= FocusNode();

    _model.textController8 ??= TextEditingController();
    _model.textFieldFocusNode8 ??= FocusNode();
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
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
                      width: 43.0,
                      height: 43.0,
                      child: SpinKitRipple(
                        color: FlutterFlowTheme.of(context).customColor3,
                        size: 43.0,
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
                                'Barınağın Yeni Sakini',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Mukta',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'Barınağa aşağıda ki bilgileri doldurarak yeni dostumuzu ekleyiniz',
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
                                  'Hayvanın Fotoğrafı',
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
                                          color: const Color(0x1A000000),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            _model.uploadedFileUrl,
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
                                                        fontSize: 13.0,
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
                              ]
                                  .divide(const SizedBox(height: 20.0))
                                  .addToEnd(const SizedBox(height: 12.0)),
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
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cins Özellikleri',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Mukta',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.textController1,
                                    focusNode: _model.textFieldFocusNode1,
                                    autofocus: false,
                                    readOnly: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Mukta',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Cins Özellikleri',
                                      hintStyle: FlutterFlowTheme.of(context)
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
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLines: 5,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model.textController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
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
                                  'Hayvanın Detayları',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Mukta',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('Kedi'),
                                    ChipData('Köpek'),
                                    ChipData('Diğer')
                                  ],
                                  onChanged: (val) => safeSetState(() => _model
                                      .choiceChipsValue = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).info,
                                    iconSize: 16.0,
                                    labelPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                    elevation: 2.0,
                                    borderWidth: 3.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 16.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  chipSpacing: 8.0,
                                  rowSpacing: 8.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Hayvanın Adı',
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
                                        maxLength: 30,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController3,
                                        focusNode: _model.textFieldFocusNode3,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Hayvanın Cinsi',
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
                                        maxLength: 30,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController4,
                                        focusNode: _model.textFieldFocusNode4,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Hayvanın Yaşı',
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
                                        maxLength: 3,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController4Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController5,
                                        focusNode: _model.textFieldFocusNode5,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Hayvanın Cinsiyeti',
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
                                        maxLength: 10,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .textController5Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController6,
                                        focusNode: _model.textFieldFocusNode6,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Getirildiği Tarih',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Mukta',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Gün/Ay/Yıl',
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
                                        maxLength: 10,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .textController6Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _model.textController7,
                                        focusNode: _model.textFieldFocusNode7,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Hayvanın Kilosu',
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
                                        maxLength: 3,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .textController7Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                TextFormField(
                                  controller: _model.textController8,
                                  focusNode: _model.textFieldFocusNode8,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Açıklama',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Mukta',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        'Hayvan hakkında bilgiler, Varsa özel durumu vb.',
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
                                  maxLength: 700,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  validator: _model.textController8Validator
                                      .asValidator(context),
                                ),
                              ].divide(const SizedBox(height: 20.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            32.0, 0.0, 32.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await AnimalsTable().insert({
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'animal_name': _model.textController2.text,
                              'animal_photo': valueOrDefault<String>(
                                _model.uploadedFileUrl,
                                'data:image/jpeg;base64,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',
                              ),
                              'specie': _model.choiceChipsValue,
                              'breed': _model.textController3.text,
                              'age': _model.textController4.text,
                              'gender': _model.textController5.text,
                              'weight': _model.textController7.text,
                              'date_shelter': _model.textController6.text,
                              'animal_text': _model.textController8.text,
                              'user_id': columnSheltersRow?.userId,
                            });
                            await SheltersTable().update(
                              data: {
                                'howManyAnimalInShelter': functions
                                    .increaseAnimalNumber(columnSheltersRow
                                        ?.howManyAnimalInShelter),
                              },
                              matchingRows: (rows) => rows.eqOrNull(
                                'user_id',
                                columnSheltersRow?.userId,
                              ),
                            );

                            context.pushNamed('Shelters');
                          },
                          text: 'Hayvanı Barınağa Ekle',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 56.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Mukta',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderRadius: BorderRadius.circular(28.0),
                          ),
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
