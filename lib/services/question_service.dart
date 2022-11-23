import 'package:unahorro_mobile/app/app.locator.dart';
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/api/queries/answers_list.dart';
import 'package:unahorro_mobile/services/api/queries/questions_list_statement.dart';

class QuestionService {

  Future <ServerResponseModel> questionList ({required int level}) async {
    ServerResponseModel response;

    response = await questionStatementList(level: level);

    return response;
  }

  Future <ServerResponseModel> questionAnswers({required int questionID}) async {
    ServerResponseModel response;

    response = await answersList(questionID: questionID);

    return response;
  } 
}