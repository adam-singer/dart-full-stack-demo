import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';


// XXX I only mark this as observable to turn on observability
// otherwise I'd make catNames final
@observable
List<String> catNames = toObservable([]);

submitCat() {
  String name = (query('#cat-name') as InputElement).value;
  HttpRequest.request('/cats',
      method: 'POST',
      sendData: stringify({'name':name}),
      requestHeaders: {'Content-Type': 'application/json'})
    .then((req) {
      print('success');
      catNames.add(name);
      print(catNames);
    })
    .catchError((e) => print(e));
}

main() {}