import 'dart:developer';
import 'package:http/http.dart' as http;
import '../util/api_constant.dart';

class ApiService {
  static void fetchData() async {
    var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.homeEndpoint);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // Request successful, parse the response
        print('connected with api successful');
        var data = response.body;
        print(data);
        // Process the data as needed
        // ...
      } else {
        // Request failed, handle the error
        print('data : ${response.body}');
        print('response: ${response}');

        print('Request failed with status: ${response.statusCode}');
        print('Request: ${response.request}');
      }
    } catch (e) {
      // Error occurred, handle the exception
      print('Error: $e');
    }
  }

  // Future<List> getData() async {
  //   try {
  //     var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
  //     var response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       List<UserModel> _model = userModelFromJson(response.body);
  //       return _model;
  //     }
  //   } catch (e) {
  //     log(e.toString());
  //   }
  // }
}
