import 'package:stacked/stacked.dart';

import '../../../core/models/book_model.dart';
import '../../../core/services/book_offline_service.dart' show offlineBooks;

///
class LocalListViewModel extends BaseViewModel {
  final String _hintText = 'Title or Author Name';
  String _queryText = '';

  List<Book> _books = offlineBooks;

  ///
  List<Book> get books => _books;

  ///
  String get hintText => _hintText;

  ///
  String get queryText => _queryText;

  ///
  void searchBook(String queryText) {
    final queryBooks = offlineBooks.where((book) {
      final titleLower = book.title.toLowerCase();
      final authorLower = book.author.toLowerCase();
      final searchLower = queryText.toLowerCase();

      return titleLower.contains(searchLower) || authorLower.contains(searchLower);
    }).toList();

    _queryText = queryText;
    _books = queryBooks;
    notifyListeners();
  }
}
