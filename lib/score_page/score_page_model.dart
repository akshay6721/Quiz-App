import '/flutter_flow/flutter_flow_util.dart';
import 'score_page_widget.dart' show ScorePageWidget;
import 'package:flutter/material.dart';

class ScorePageModel extends FlutterFlowModel<ScorePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
