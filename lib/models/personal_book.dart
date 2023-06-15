import 'package:grimorio/models/google_book.dart';

class PersonalBook {
  String id;
  String idGoogle;
  DateTime dayStarted;
  DateTime dayFinished;
  String comments;
  GoogleBook googleBook;

  PersonalBook({
    required this.id,
    required this.idGoogle,
    required this.dayFinished,
    required this.comments,
    required this.dayStarted,
    required this.googleBook,
  });

  PersonalBook.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        idGoogle = map["idGoogle"],
        dayFinished = DateTime.parse(map["dayFinished"]),
        dayStarted = DateTime.parse(map["dayStarted"]),
        comments = map["comments"],
        googleBook = GoogleBook.fromMap(map["googleBook"]);

  getGoogleBookById() async {}

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "idGoogle": idGoogle,
      "dayFinished": dayFinished.toString(),
      "dayStarted": dayStarted.toString(),
      "comments": comments,
      "googleBook": googleBook.toMap(),
    };
  }
}
