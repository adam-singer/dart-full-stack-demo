import 'package:web_ui/web_ui.dart';
import 'dart:html';

final List<String> catNames = toObservable([]);

submitCat() {
  var name = (query('#cat-name') as InputElement).value;
  HttpRequest.request('/cats', method: 'POST', sendData: 'name=$name')
      .then((req) => catNames.add(name));
}

main() {}