import '/components/listings/listings_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_lost_widget.dart' show HomePageLostWidget;
import 'package:flutter/material.dart';

class HomePageLostModel extends FlutterFlowModel<HomePageLostWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Listings component.
  late ListingsModel listingsModel;
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
    navBarModel.dispose();
  }
}
