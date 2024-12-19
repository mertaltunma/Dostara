import '/flutter_flow/flutter_flow_util.dart';
import 'animals_widget.dart' show AnimalsWidget;
import 'package:flutter/material.dart';

class AnimalsModel extends FlutterFlowModel<AnimalsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
