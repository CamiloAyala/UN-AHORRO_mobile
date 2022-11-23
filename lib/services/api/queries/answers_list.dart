// Package imports:
import 'package:graphql/client.dart';

// Project imports:
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/api/api_client.dart';
import 'package:unahorro_mobile/services/api/errors/graphql.dart';

Future <ServerResponseModel> answersList({required int questionID}) async {

  const String answersQuery = r'''
    query Query($questionId: Int!) {
      getAnswers(questionID: $questionId) {
        answerID
        answerText
        correct
      }
    }
  ''';

  Map<String, dynamic> input = {
    'questionId': questionID
  };

  QueryOptions options = QueryOptions(
    document: gql(answersQuery),
    variables: input
  );

  QueryResult result = await ApiClient().makeQuery(options);

  return handleResponse(result);
}
