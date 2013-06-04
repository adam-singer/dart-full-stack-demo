// Auto-generated from app.html.
// DO NOT EDIT.

library app_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';
import 'dart:html';
import 'dart:json';


// Original code


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
// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.document.body;
  final __html0 = new autogenerated.LIElement();
  var __e2, __e3;
  var __t = new autogenerated.Template(__root);
  __e2 = __root.nodes[1].nodes[1];
  __t.loop(__e2, () => catNames, ($list, $index, __t) {
    var name = $list[$index];
    var __e1;
    __e1 = __html0.clone(true);
    var __binding0 = __t.contentBind(() => name, false);
    __e1.nodes.add(__binding0);
  __t.addAll([new autogenerated.Text('\n        '),
      __e1,
      new autogenerated.Text('\n      ')]);
  });
  __e3 = __root.nodes[3].nodes[3];
  __t.listen(__e3.onClick, ($event) { submitCat(); });
  __t.create();
  __t.insert();
}

//@ sourceMappingURL=app.dart.map