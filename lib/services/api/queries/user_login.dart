import 'package:graphql/client.dart';
import 'package:unahorro_mobile/models/server_response.dart';
import 'package:unahorro_mobile/services/api/api_client.dart';
import 'package:unahorro_mobile/services/api/errors/graphql.dart';

Future<ServerResponseModel> login(
  {required String email, required String password}) async {
    
    const String loginQuery = r'''
      query Query($loginInput: LoginInput!) {
        login(loginInput: $loginInput) {
          token
          photo
          firstName
          lastName
        }
      }
    ''';

    Map<String, dynamic> loginInput = {
      'loginInput' : { 'email' : email, 'password' : password }
    };

    QueryOptions options = QueryOptions(
      document: gql(loginQuery),
      variables: loginInput
    );

    QueryResult result = await ApiClient().makeQuery(options);

    return handleResponse(result);
  }