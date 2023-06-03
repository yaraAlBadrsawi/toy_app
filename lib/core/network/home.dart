import 'package:http/http.dart' as http;

class HomeController {
  static Future<String> fetchImage(String imageURL) async {
    // Make the API request to fetch the image URL
    final response = await http.get(Uri.parse(imageURL));
    if (response.statusCode == 200) {
      // Update the imageUrl variable with the fetched URL
      print('status code = ${response.statusCode}');
      return response.body; // image
    } else {
      return 'faild to fetch image';
      print('Failed to fetch image');
    }
  }
}
