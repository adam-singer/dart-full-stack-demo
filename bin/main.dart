library hello_static;

import "package:start/start.dart";
import 'package:postgresql/postgresql.dart';
import 'dart:io';

Connection db;

void main() {
  var port = int.parse(Platform.environment['PORT']);
  
//  connect(Platform.environment['DATABASE_URL'])
//  .then((conn) => db = conn)
//  .then((_) {
//    print('DB connected, now starting up web server');
    start(public: 'web', port: port);
}

