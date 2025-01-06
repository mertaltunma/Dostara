import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/adoptation_warning/adoptation_warning_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'animal_profile_model.dart';
export 'animal_profile_model.dart';

class AnimalProfileWidget extends StatefulWidget {
  const AnimalProfileWidget({
    super.key,
    required this.correspondingAnimal,
    required this.shelterId,
  });

  final AnimalsRow? correspondingAnimal;
  final String? shelterId;

  @override
  State<AnimalProfileWidget> createState() => _AnimalProfileWidgetState();
}

class _AnimalProfileWidgetState extends State<AnimalProfileWidget> {
  late AnimalProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnimalProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SheltersRow>>(
      future: SheltersTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'user_id',
          widget.correspondingAnimal?.userId,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 43.0,
                height: 43.0,
                child: SpinKitRipple(
                  color: FlutterFlowTheme.of(context).customColor3,
                  size: 43.0,
                ),
              ),
            ),
          );
        }
        List<SheltersRow> animalProfileSheltersRowList = snapshot.data!;

        final animalProfileSheltersRow = animalProfileSheltersRowList.isNotEmpty
            ? animalProfileSheltersRowList.first
            : null;

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
              child: FutureBuilder<List<AnimalsBreedTextRow>>(
                future: AnimalsBreedTextTable().querySingleRow(
                  queryFn: (q) => q.eqOrNull(
                    'animal_id',
                    widget.correspondingAnimal?.animalId,
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
                  List<AnimalsBreedTextRow> columnAnimalsBreedTextRowList =
                      snapshot.data!;

                  final columnAnimalsBreedTextRow =
                      columnAnimalsBreedTextRowList.isNotEmpty
                          ? columnAnimalsBreedTextRowList.first
                          : null;

                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          child: Container(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      widget.correspondingAnimal?.animalPhoto,
                                      'https://images.unsplash.com/photo-1696799428853-253be6509dd7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxDYW5lJTIwQ29yc298ZW58MHx8fHwxNzMwMjc4ODM4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    ),
                                    width: double.infinity,
                                    height: 250.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 250.0,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0x99000000),
                                        Colors.transparent
                                      ],
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
                                        24.0, 16.0, 24.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              decoration: const BoxDecoration(),
                                              child: AutoSizeText(
                                                valueOrDefault<String>(
                                                  widget.correspondingAnimal
                                                      ?.animalName,
                                                  'İsim',
                                                ),
                                                maxLines: 1,
                                                minFontSize: 20.0,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Mukta',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            FutureBuilder<
                                                List<FavoriteAnimalsRow>>(
                                              future: FavoriteAnimalsTable()
                                                  .queryRows(
                                                queryFn: (q) => q
                                                    .eqOrNull(
                                                      'user_id',
                                                      currentUserUid,
                                                    )
                                                    .eqOrNull(
                                                      'animal_id',
                                                      widget
                                                          .correspondingAnimal
                                                          ?.animalId,
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor3,
                                                        size: 43.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<FavoriteAnimalsRow>
                                                    conditionalBuilderFavoriteAnimalsRowList =
                                                    snapshot.data!;

                                                return Builder(
                                                  builder: (context) {
                                                    if (valueOrDefault<bool>(
                                                      conditionalBuilderFavoriteAnimalsRowList
                                                          .firstOrNull
                                                          ?.isClickedFavorite,
                                                      false,
                                                    )) {
                                                      return FlutterFlowIconButton(
                                                        borderRadius: 32.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            const Color(0x6EFFFFFF),
                                                        icon: const Icon(
                                                          Icons.favorite,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          await FavoriteAnimalsTable()
                                                              .update(
                                                            data: {
                                                              'isClickedFavorite':
                                                                  false,
                                                            },
                                                            matchingRows:
                                                                (rows) => rows
                                                                    .eqOrNull(
                                                                      'user_id',
                                                                      currentUserUid,
                                                                    )
                                                                    .eqOrNull(
                                                                      'animal_id',
                                                                      widget
                                                                          .correspondingAnimal
                                                                          ?.animalId,
                                                                    ),
                                                          );
                                                          await FavoriteAnimalsTable()
                                                              .delete(
                                                            matchingRows:
                                                                (rows) => rows
                                                                    .eqOrNull(
                                                                      'user_id',
                                                                      currentUserUid,
                                                                    )
                                                                    .eqOrNull(
                                                                      'animal_id',
                                                                      widget
                                                                          .correspondingAnimal
                                                                          ?.animalId,
                                                                    ),
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      return FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 32.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            const Color(0x6EFFFFFF),
                                                        icon: const Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.white,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          await FavoriteAnimalsTable()
                                                              .insert({
                                                            'created_at':
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                            'user_id':
                                                                currentUserUid,
                                                            'animal_id': widget
                                                                .correspondingAnimal
                                                                ?.animalId,
                                                            'animal_photo': widget
                                                                .correspondingAnimal
                                                                ?.animalPhoto,
                                                            'animal_name': widget
                                                                .correspondingAnimal
                                                                ?.animalName,
                                                            'breed': widget
                                                                .correspondingAnimal
                                                                ?.breed,
                                                            'shelter_name': widget
                                                                .correspondingAnimal
                                                                ?.shelterName,
                                                            'shelter_location': widget
                                                                .correspondingAnimal
                                                                ?.shelterLocation,
                                                            'isClickedFavorite':
                                                                true,
                                                            'shelterId': widget
                                                                .shelterId,
                                                          });

                                                          context.pushNamed(
                                                              'Favorite');
                                                        },
                                                      );
                                                    }
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            widget.correspondingAnimal?.breed,
                                            'Tür',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Mukta',
                                                color: Colors.white,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 24.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Yaş',
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
                                        Text(
                                          valueOrDefault<String>(
                                            widget.correspondingAnimal?.age,
                                            'Yaş',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
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
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Cinsiyet',
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
                                        Text(
                                          valueOrDefault<String>(
                                            widget.correspondingAnimal?.gender,
                                            'Cinsiyet',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
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
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ağırlık',
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
                                        Text(
                                          valueOrDefault<String>(
                                            widget.correspondingAnimal?.weight,
                                            'Ağırlık',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
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
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                                Column(
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
                                    Text(
                                      valueOrDefault<String>(
                                        columnAnimalsBreedTextRow?.breedText,
                                        'Cins Özellikleri',
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
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Barınağa Geldiği Tarih',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
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
                                          Icons.calendar_today,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            widget.correspondingAnimal
                                                ?.dateShelter,
                                            'Geldiği Tarih',
                                          ).maybeHandleOverflow(
                                            maxChars: 10,
                                            replacement: '…',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Mukta',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                  ].divide(const SizedBox(height: 8.0)),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              widget.correspondingAnimal
                                                  ?.animalName,
                                              'İsim',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Mukta',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: ' Hakkında',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Mukta',
                                                  letterSpacing: 0.0,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Mukta',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        widget.correspondingAnimal?.animalText,
                                        'Metin',
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
                                  ].divide(const SizedBox(height: 8.0)),
                                ),
                                FutureBuilder<List<UsersRow>>(
                                  future: UsersTable().queryRows(
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
                                    List<UsersRow> buttonUsersRowList =
                                        snapshot.data!;

                                    return FFButtonWidget(
                                      onPressed: () async {
                                        await AdoptedAnimalsTable().insert({
                                          'created_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'ShelterId': widget.shelterId,
                                          'AnimalName': widget
                                              .correspondingAnimal?.animalName,
                                          'AnimalBreed': widget
                                              .correspondingAnimal?.breed,
                                          'UserName': buttonUsersRowList
                                              .firstOrNull?.userName,
                                          'UserPhone': buttonUsersRowList
                                              .firstOrNull?.userPhone,
                                          'UserMail': buttonUsersRowList
                                              .firstOrNull?.userEmail,
                                          'AdoptedTime':
                                              supaSerialize<DateTime>(
                                                  getCurrentTimestamp),
                                          'AnimalPhoto': widget
                                              .correspondingAnimal?.animalPhoto,
                                        });
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: SizedBox(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.5,
                                                  child:
                                                      const AdoptationWarningWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      text: 'Sahiplen',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 56.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Mukta',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(32.0),
                                      ),
                                    );
                                  },
                                ),
                              ]
                                  .divide(const SizedBox(height: 20.0))
                                  .addToEnd(const SizedBox(height: 32.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
