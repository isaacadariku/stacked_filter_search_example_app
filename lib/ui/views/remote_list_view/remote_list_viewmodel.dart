import 'package:stacked/stacked.dart';

import '../../../app/locator.dart';
import '../../../core/models/book_model.dart';
import '../../../core/services/book_api_service.dart';

class RemoteListViewModel extends BaseViewModel {
  final _booksApiService = locator<BooksApiService>();

  String _hintText = 'Title or Author Name';
  String _queryText = '';

  List<Book> _books = [];
  List<Book> get books => _books;

  String get hintText => _hintText;
  String get queryText => _queryText;

  Future searchBook(String queryText) async {
    try {
      setBusy(true);

      final books = await _booksApiService.getBooksOnline(queryText);

      _queryText = queryText;
      _books = books;

      setBusy(false);
    } catch (e) {
      print(e);
    }
  }

  Future getData() async {
   try {
      setBusy(true);

      final books = await _booksApiService.getBooksOnline(queryText);

      _books = books;

      setBusy(false);
    } catch (e) {
      print(e);
    } 
  }
}
