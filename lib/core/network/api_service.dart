import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../util/api_constant.dart';

class ApiService {
  static Future<List<dynamic>> readExhibitors() async {
    try {
      var response = await http.get(Uri.parse(ApiConstants.exhibitorsEndPoint));
      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        return data['items'];
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Request: ${response.request}');
        return [];
      }
    } catch (e) {
      // Error occurred, handle the exception
      print('Error: $e');
    }
    return [];
  }

  static Future<List<dynamic>?> fetchData() async {
    var url = Uri.parse(ApiConstants.homeEndpoint);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // Request successful, parse the response
        print('connected with api successful');
        // var data = response.body;
        Map<String, dynamic> data = json.decode(response.body);
        // data['categores']
        print(data['items']['categores']);
        return data['items']['categores']; //
        // Process the data as needed
        // ...
      } else {
        // Request failed, handle the error
        print('data : ${response.body}');
        print('response: ${response}');
        print('Request failed with status: ${response.statusCode}');
        print('Request: ${response.request}');
        return null;
      }
    } catch (e) {
      // Error occurred, handle the exception
      print('Error: $e');
    }
    return null;
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
