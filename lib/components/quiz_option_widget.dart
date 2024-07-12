import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'quiz_option_model.dart';
export 'quiz_option_model.dart';

class QuizOptionWidget extends StatefulWidget {
  const QuizOptionWidget({
    super.key,
    required this.questionNum,
    required this.questionName,
    required this.isTrue,
  });

  final String? questionNum;
  final String? questionName;
  final bool? isTrue;

  @override
  State<QuizOptionWidget> createState() => _QuizOptionWidgetState();
}

class _QuizOptionWidgetState extends State<QuizOptionWidget> {
  late QuizOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizOptionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(30.0, 25.0, 30.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (widget.isTrue!) {
            _model.isAnswered = false;
            setState(() {});
            FFAppState().completedQuestions =
                FFAppState().completedQuestions + -1;
            setState(() {});
            FFAppState().score = FFAppState().score + -1;
            setState(() {});
                    } else {
            _model.isAnswered = false;
            setState(() {});
            FFAppState().completedQuestions =
                FFAppState().completedQuestions + -1;
            setState(() {});
                    }
        },
        child: Container(
          width: double.infinity,
          height: 50.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (_model.isAnswered == true) {
                  return const Color(0x3F1A00FF);
                } else if (_model.isAnswered == false) {
                  return const Color(0x37FF0000);
                } else {
                  return Colors.transparent;
                }
              }(),
              Colors.transparent,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            border: Border.all(
              color: valueOrDefault<Color>(
                () {
                  if (_model.isAnswered == true) {
                    return const Color(0xFF1A00FF);
                  } else if (_model.isAnswered == false) {
                    return const Color(0xFFFF0000);
                  } else {
                    return Colors.white;
                  }
                }(),
                Colors.white,
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: 36.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      () {
                        if (_model.isAnswered == true) {
                          return const Color(0xFF1A00FF);
                        } else if (_model.isAnswered == false) {
                          return const Color(0xFFFF0000);
                        } else {
                          return const Color(0x00FFFFFF);
                        }
                      }(),
                      const Color(0x00FFFFFF),
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        () {
                          if (_model.isAnswered == true) {
                            return const Color(0xFF1A00FF);
                          } else if (_model.isAnswered == false) {
                            return const Color(0xFFFF0000);
                          } else {
                            return Colors.white;
                          }
                        }(),
                        Colors.white,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.questionNum,
                        'questionNum',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.white,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.questionName,
                    'questionName',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
