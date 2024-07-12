import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _completedQuestions = 0;
  int get completedQuestions => _completedQuestions;
  set completedQuestions(int value) {
    _completedQuestions = value;
  }

  int _score = 0;
  int get score => _score;
  set score(int value) {
    _score = value;
  }
}
