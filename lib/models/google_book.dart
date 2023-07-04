class GoogleBook {
  late String id;
  late String title;
  late String authors;
  late String description;
  late String thumbnailLink;

  GoogleBook({
    required this.id,
    required this.title,
    required this.authors,
    required this.description,
    required this.thumbnailLink,
  });

  GoogleBook.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    title = validateTitle(map);
    authors = validateAuthors(map);
    description = validateDescription(map);
    thumbnailLink = validateThumbnail(map);
  }

  validateTitle(Map<String, dynamic> map) => (map["volumeInfo"]["title"] == null) ? "Título desconhecido" : map["volumeInfo"]["title"];

  validateThumbnail(Map<String, dynamic> map) => (map["volumeInfo"]["imageLinks"]?["thumbnail"] == null) ? "https://i.pinimg.com/736x/88/cb/ba/88cbba5cdbd59fa49462ab96f3b1b79c.jpg" : map["volumeInfo"]["imageLinks"]?["thumbnail"];

  String validateAuthors(Map<String, dynamic> map) => (map["volumeInfo"]["authors"] == null) ? "Autor desconhecido" : (map["volumeInfo"]["authors"] as List<dynamic>).map((e) => e).toString();

  validateDescription(Map<String, dynamic> map) => (map["volumeInfo"]["description"] == null) ? "Sem descrição" : map["volumeInfo"]["description"];
       
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
