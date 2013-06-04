import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';

final List<String> catNames = toObservable([]);

submitCat() {
  String name = (query('#cat-name') as InputElement).value;
  HttpRequest.request('/cats',
      method: 'POST',
      sendData: stringify({'name':name}),
      mimeType: 'application/json')
      .then((req) => catNames.add(name));
}

main() {}