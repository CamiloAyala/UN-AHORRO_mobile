// Package imports:
import 'package:graphql/client.dart';

// Project imports:
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/api/api_client.dart';
import 'package:unahorro_mobile/services/api/errors/graphql.dart';

Future <ServerResponseModel> questionStatementList({required int level}) async {
  
  const String questionQuery = r'''
    query Query($level: Int!) {
      getQuestions(level: $level) {
        questionID
        questionText
        answers {
          answerID
          answerText
          correct
        }
      }
    }
  ''';

  Map<String, dynamic> input = {
    'level': level
  };

  QueryOptions options = QueryOptions(
    document: gql(questionQuery),
    variables: input
  );

  QueryResult result = await ApiClient().makeQuery(options);

  return handleResponse(result);
}
