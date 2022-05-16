import 'package:dchisel/dchisel.dart';
import 'package:drift/drift.dart';
import 'package:universal_io/io.dart';
import 'package:yaml/yaml.dart';


class Routes {
  final parameterFile = File('parameters.yaml');
  Future<void> routes() async {
    String yamlString = parameterFile.readAsStringSync();
    Map parameters = loadYaml(yamlString);
    /*DChiselDB().configDB('postgre',
        host: 'localhost',
        db: 'dart_test',
        port: 5432,
        username: 'postgres',
        password: '14091996Aa`'); // DB CONFIGURATION*/

    /*DChiselDB().configDB('mysql',
        host: '127.0.0.1',
        db: 'dart_coba',
        port: 3306,
        username: 'root',
        password: '14091996Aa`');*/

    DChisel().routeGet('/getParameters/', (Request request) {
      return yamlString;
    });

    DChisel().routeGet('/getSQLite/<tableName>',
        (Request request, String tableName) async {
      if (parameters['auth_for_query_required']){
        // try to put public key and signature in header and datetime in body
        // check if the date/signature passes and return here Error Auth Failed
      }
      switch (tableName) {

        case 'Signatures':
          {

            final body = await request.body.asJson;
            final headers = updateType.fromJ jsonRequest["updateType"];
            if (parameters['full_table_return']{

            } else {
            // Last signature not from that user in his table
            final lastSignatureDate = body['lastSignatureDate'];
            switch (updateType) {
            case 'newSignatures':
            {
            }

            }
                            break;
            }

            print('Signatures');
          }
          break;

        case "Products":
          {
            print("Products");
          }
          break;

        case "C":
          {
            print("Fair");
          }
          break;

        case "D":
          {
            print("Poor");
          }
          break;

        default:
          {
            print("Invalid choice");
          }
          break;
      }
    }); // GET TABLE USERS FROM DB

    DChisel().routeGet('/', (Request request) {
      return DChiselDB().getAll('users');
    }); // GET ALL DATA USERS FROM DB

    DChisel().routeGet('/users', (Request request) {
      return DChiselDB().getAll('users');
    }); // GET ALL DATA USERS FROM DB

    DChisel().routeGet('/users/<name>', (Request request, String name) async {
      var user = await DChiselDB()
          .getOption('users', column: 'email', where: ['name', '$name']);
      print(user);
      return user;
    }); // GET ONE DATA USERS FROM DB EITH FILTER BY NAME

    DChisel().routePost('/users/add', (Request request) async {
      var headers = await request.headers;
      var body = await request.headers;
      return DChiselDB().create('users', data: body);
    }); // CREATE NEW USERS

    DChisel().routeDelete('/users/<id>', (Request request, String id) {
      return DChiselDB().deleteOption('users', where: ['id', int.parse(id)]);
    }); // DELETE USERS BY ID

    DChisel().routeDelete('/deleteall/users', (Request request) {
      return DChiselDB().deleteAll('users');
    }); // DELETE ALL USERS

    DChisel().routePut('/users/<id>', (Request request, String id) async {
      return DChiselDB().update('users',
          data: await request.body.asJson, where: ['id', int.parse(id)]);
    }); // UPDATE USERS BY ID

    //ROUTES
  }
}
