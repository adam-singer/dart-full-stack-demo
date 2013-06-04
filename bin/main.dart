library hello_static;

import "package:start/start.dart";
import 'package:postgresql/postgresql.dart';
import 'dart:io';

Connection db;

void main() {
  var port = int.parse(Platform.environment['PORT']);
  
  connect(Platform.environment['DATABASE_URL'])
  .then((conn) => db = conn)
  .then((_) {
    HttpServer.bind('0.0.0.0', port).then((HttpServer server){
      print('Server started on port: ${port}');
      server.listen(handleRequest)
      ..onError((e) => print('HttpError: $e'))
      ..onDone(() => print('done.'));
    });
  });
}

void handleRequest(HttpRequest request) {
      db.query("select 'oi you!'").toList().then((result) {
        reply(request, 'Connected: $result');
        db.close();
      });
}

void reply(HttpRequest request, msg) {
  request.response
    //..headers.set(HttpHeaders.CONTENT_TYPE, 'text/plain')
    ..writeln(msg)
    ..close();
}