// Package imports:
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

// Project imports:
import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/app/app.router.dart';
import 'package:unahorro_mobile/models/answer.dart';
import 'package:unahorro_mobile/models/question.dart';
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/question_service.dart';

class QuestionsViewModel extends BaseViewModel {
  
  final _navigationService = locator<NavigationService>();
  
  List<Question> questions = [];
  final QuestionService questionService = locator<QuestionService>();
  int level = 0;

  bool _isLoading = false;
  bool get isLoading => _isLoading;


  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void navigateToHome(){
    _navigationService.clearStackAndShow(Routes.homeView);
  }

  Future<List<Question>> questionsList() async {
    isLoading = true;

    ServerResponseModel response = await questionService.questionList(level: level);

    if(!response.hasError){

      for(var i = 0; i < response.data['getQuestions'].length; i++){
        List<Answer> answers = [];
        for(var j = 0; j < response.data['getQuestions'][i]['answers'].length; j++){
          answers.add(Answer(
            answerID: response.data['getQuestions'][i]['answers'][j]['answerID'],
            answerText: response.data['getQuestions'][i]['answers'][j]['answerText'],
            correct: response.data['getQuestions'][i]['answers'][j]['correct']
          ));
        }

        questions.add(Question(
          questionID: response.data['getQuestions'][i]['questionID'],
          questionText: response.data['getQuestions'][i]['questionText'],
          answers: answers
        ));
      }
     
    }

    return questions;
  }

}
