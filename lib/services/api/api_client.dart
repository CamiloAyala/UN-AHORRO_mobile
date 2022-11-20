import 'package:graphql/client.dart';

class ApiClient {
  
  static final ApiClient client = ApiClient._internal();
  factory ApiClient() => client;

  static final HttpLink _httpLink = HttpLink('http://localhost:4000/');

  ApiClient._internal(){
    _makeClient('','');
  }

  GraphQLClient _makeClient(String token, String path){

    AuthLink auth = AuthLink(getToken: () async => token);
    Link link = auth.concat(_httpLink);

    return GraphQLClient(link: link, cache: GraphQLCache());
  }

  Future<QueryResult> makeQuery(QueryOptions options, 
    {String token = '', String path = ''}) async {

      return _makeClient(token, path).query(options);
  }

  Future<QueryResult> makeMutation(MutationOptions options, 
    {String token = '', String path = ''}) async {

      return _makeClient(token, path).mutate(options);
  }

}