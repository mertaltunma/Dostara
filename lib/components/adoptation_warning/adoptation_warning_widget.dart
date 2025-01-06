import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'adoptation_warning_model.dart';
export 'adoptation_warning_model.dart';

class AdoptationWarningWidget extends StatefulWidget {
  const AdoptationWarningWidget({super.key});

  @override
  State<AdoptationWarningWidget> createState() =>
      _AdoptationWarningWidgetState();
}

class _AdoptationWarningWidgetState extends State<AdoptationWarningWidget> {
  late AdoptationWarningModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdoptationWarningModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        height: 200.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sahiplendirme Bilgisi',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Mukta',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Text(
                  'Dostlarımıza sıcak bir yuva sunduğunuz için teşekkürler! Barınak tarafından kısa süre içerisinde bir telefon alacaksınız!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Mukta',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Anladım',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).alternate,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Mukta',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 2.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
