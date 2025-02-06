```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Use the response body
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exceptions, including the case where the server returns an error code other than 200
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```