import '/components/listings/listings_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listings_created_widget.dart' show ListingsCreatedWidget;
import 'package:flutter/material.dart';

class ListingsCreatedModel extends FlutterFlowModel<ListingsCreatedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Listings component.
  late ListingsModel listingsModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    listingsModel = createModel(context, () => ListingsModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    listingsModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBarModel.dispose();
  }
}
