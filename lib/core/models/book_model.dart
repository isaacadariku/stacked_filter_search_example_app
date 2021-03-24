/// A book class model
class Book {
  /// The constructor of [Book] model
  Book({this.id, this.title, this.author, this.urlImage});

  /// A method to change from Json object to Model objects
  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    author = json['author'] as String;
    urlImage = json['urlImage'] as String;
  }

  /// The id of the book in a type [int]
  int id;

  /// The title of the book in a type [String]
  String title;

  /// The id of the book in a type [String]
  String author;

  /// The id of the book in a type [String]
  String urlImage;

  /// A method to change Model objects to Json object
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'author': author,
        'urlImage': urlImage,
      };
}
