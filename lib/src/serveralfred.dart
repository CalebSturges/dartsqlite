import 'package:alfred/alfred.dart';

void main() async {
  final app = Alfred();
  app.get('/example', (req, res) => 'Hello World');

  await app.listen();
}
