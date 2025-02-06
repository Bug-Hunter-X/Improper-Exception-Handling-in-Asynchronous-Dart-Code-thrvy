```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpException implements Exception {
  final String message;
  HttpException(this.message);
  @override
  String toString() => message;
}

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw HttpException('HTTP error: ${response.statusCode}');
    }
  } on HttpException catch (e) {
    print('HTTP Error: $e');
    // Consider adding retry logic here
    rethrow;
  } on SocketException catch (e) {
    print('Network Error: $e');
    // Consider adding retry logic here
    rethrow;
  } catch (e) {
    print('Unexpected Error: $e');
    rethrow;
  }
}
```