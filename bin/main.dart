library hello_static;

import "package:start/start.dart";
import 'dart:io';

void main() {
  var port = int.parse(Platform.environment['PORT']);
  start(public: 'web', port: port);
}