class GoogleBook {
  String id;
  String title;
  List<String> authors = [];
  String description;
  String thumbnailLink;

  GoogleBook({
    required this.id,
    required this.title,
    required this.authors,
    required this.description,
    required this.thumbnailLink,
  });

  GoogleBook.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        title = map["volumeInfo"]["title"],
        authors = (map["volumeInfo"]["authors"] as List<dynamic>)
            .map((e) => e.toString())
            .toList(),
        description = map["volumeInfo"]["description"],
        thumbnailLink = map["volumeInfo"]["imageLinks"]?["thumbnail"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "authors": authors,
      "description": description,
      "thumbnailLink": thumbnailLink,
    };
  }
}
