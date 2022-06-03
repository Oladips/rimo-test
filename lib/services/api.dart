import 'package:http/http.dart' as http;
import 'package:rimo_tech/services/api_util.dart';

class Auth {
  var client = http.Client();

  Future login({
    String? phone,
    String? password,
    String? deviceIdentification,
    String? token,
  }) async {
    try {
      final response = await client.post(
        Uri.parse('https://handova.ddns.net/api/login'),
        body: {
          'username': phone,
          'password': password,
          'device_identification': deviceIdentification,
          'firebase_messaging_token': token,
        },
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      );

      return ApiUtils.toApiResponse(response);
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
