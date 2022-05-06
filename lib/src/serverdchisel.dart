import 'package:dchisel/dchisel.dart'

Future<void> main(List<String> arguments) async {
    DChisel().serve();
}

DChisel().routeGet(/sqlite)