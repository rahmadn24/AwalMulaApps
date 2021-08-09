import 'package:http/http.dart' as http;

class AuthService {
  Future<String> getToken() async {
    Uri base_url = Uri.parse(
        'https://staging.awalmula.co.id/rest/V1/integration/admin/token');
    print("masuk token");
    var body = {"username": "admin", "password": "admin123"};
    var headers = {'Content-Type': 'application/json'};
    var response = await http.post(base_url, headers: headers, body: body);
    return response.toString();
  }
}
