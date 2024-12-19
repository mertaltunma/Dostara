import '/backend/supabase/supabase.dart';
import '/components/my_listings/my_listings_widget.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'my_lost_postings_widget.dart' show MyLostPostingsWidget;
import 'package:flutter/material.dart';

class MyLostPostingsModel extends FlutterFlowModel<MyLostPostingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MyListings component.
  late MyListingsModel myListingsModel;
  Completer<List<LostAnimalsPostingsRow>>? requestCompleter;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    myListingsModel = createModel(context, () => MyListingsModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    myListingsModel.dispose();
    navBarModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
