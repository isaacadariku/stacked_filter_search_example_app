class Book {
  int id;
  String title;
  String author;
  String urlImage;

  Book({this.id, this.title, this.author, this.urlImage});

  Book.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    urlImage = json['urlImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['author'] = this.author;
    data['urlImage'] = this.urlImage;
    return data;
  }
}
