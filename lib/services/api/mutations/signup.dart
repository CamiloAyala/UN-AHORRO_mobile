// Package imports:
import 'package:graphql/client.dart';

// Project imports:
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/api/api_client.dart';
import 'package:unahorro_mobile/services/api/errors/graphql.dart';

Future<ServerResponseModel> signup(
  {required String firstName, required String lastName, required String email, required String password}) async {
    
    const String signupQuery = r'''
      mutation Mutation($signupInput: SignupInput!) {
        signup(signupInput: $signupInput) {
          message
        }
      }
    ''';

    Map<String, dynamic> signupInput = {
      'signupInput' : { 'firstName': firstName, 'lastName': lastName ,'email' : email, 'password' : password }
    };

    QueryOptions options = QueryOptions(
      document: gql(signupQuery),
      variables: signupInput
    );

    QueryResult result = await ApiClient().makeQuery(options);

    return handleResponse(result);
  }
