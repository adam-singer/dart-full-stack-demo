library hello_static;

import "package:stream/stream.dart";
import 'dart:io';

void main() {
  new StreamServer()
    ..port=int.parse(Platform.environment['PORT'])
    ..start();
}