import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/book_model.dart';

/// A service funcion that returns books
/// api in a [List<Book>] type
class BooksApiService {
  /// Function to get Books Online
  Future<List<Book>> getBooksOnline(String queryText) async {
    final url = Uri.parse(
        'https://gist.githubusercontent.com/isaacadariku/11bf2918140cd78fa7b3c4f210a978f6/raw/935e6e0926d1cff0bab0fef683f3b6676a9d614b/books.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final books = json.decode(response.body) as List;

      return books.map((json) => Book.fromJson(json as Map<String, dynamic>)).where((book) {
        final titleLower = book.title.toLowerCase();
        final authorLower = book.author.toLowerCase();
        final searchLower = queryText.toLowerCase();

        return titleLower.contains(searchLower) || authorLower.contains(searchLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
