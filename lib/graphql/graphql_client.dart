import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String endpoint = dotenv.get('GRAPHQL_ENDPOINT');
String authHeader = dotenv.get('GRAPHQL_AUTH_HEADER');
String authApiKey = dotenv.get('GRAPHQL_AUTH_API_KEY');

ValueNotifier<GraphQLClient> createGraphqlClient() {
  final HttpLink httpLink = HttpLink(
    endpoint,
    defaultHeaders: {'Content-Type': 'application/json'},
  );
  final AuthLink authLink = AuthLink(
    headerKey: authHeader,
    getToken: () => authApiKey,
  );
  final Link link = authLink.concat(httpLink);

  return ValueNotifier(
    GraphQLClient(
      link: link,
      cache: GraphQLCache(store: HiveStore()),
    ),
  );
}
