//date
class NoDataException implements Exception {}

class ConnectionException implements Exception {}

//route
class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
