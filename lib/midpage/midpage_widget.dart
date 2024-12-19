import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'midpage_model.dart';
export 'midpage_model.dart';

class MidpageWidget extends StatefulWidget {
  const MidpageWidget({super.key});

  @override
  State<MidpageWidget> createState() => _MidpageWidgetState();
}

class _MidpageWidgetState extends State<MidpageWidget> {
  late MidpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MidpageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.usersInfo = await UsersTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'user_id',
          currentUserUid,
        ),
      );
      FFAppState().updateAccountInfoStruct(
        (e) => e
          ..name = _model.usersInfo?.firstOrNull?.userName
          ..email = _model.usersInfo?.firstOrNull?.userEmail
          ..phoneNumber = _model.usersInfo?.firstOrNull?.userPhone
          ..photoPath = _model.usersInfo?.firstOrNull?.userPhoto,
      );
      safeSetState(() {});

      context.pushNamed(
        'HomePageLost',
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
