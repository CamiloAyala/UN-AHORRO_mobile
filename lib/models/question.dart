import 'package:unahorro_mobile/models/answer.dart';

class Question {
  int questionID = 0;
  int? questionLevel;
  String questionText = "";
  String? questionType;
  List<Answer> answers = [];

  Question({
    required this.questionID,
    this.questionLevel,
    required this.questionText,
    this.questionType,
    required this.answers
  });
}