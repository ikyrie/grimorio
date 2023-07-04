import 'package:grimorio/dao/book_database.dart';
import 'package:grimorio/models/google_book.dart';
import 'package:grimorio/models/personal_book.dart';

class BookController {
  final PersonalBookDatabase _dao = PersonalBookDatabase();

  addBook(GoogleBook googleBook, String initialDate, String finalDate, String comments) {
    final PersonalBook newPersonalBook = PersonalBook(dayFinished: finalDate, comments: comments, dayStarted: initialDate, googleBook: googleBook);
    _dao.save(newPersonalBook);
  }
}
