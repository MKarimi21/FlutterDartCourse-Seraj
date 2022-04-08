class BooksParser {}

class BookModel {
  String? id;
  String? language;
  String? edition;
  String? author;

  BookModel.fromJson(Map json) {
    if (json['id'] != null) {
      id = json['id'];
    }
    if (json['language'] != null) {
      language = json['language'];
    }
    if (json['edition'] != null) {
      edition = json['edition'];
    }
    if (json['author'] != null) {
      author = json['author'];
    }
  }
}
