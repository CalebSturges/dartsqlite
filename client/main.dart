import 'package:requests/requests.dart';


void main() async {
  var r = await Requests.get('api.akcu.org');
  r.raiseForStatus();
  String body = r.content();
}
