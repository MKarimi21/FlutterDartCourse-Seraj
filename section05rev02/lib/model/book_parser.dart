class BooksParser {
  late List<BookModel> books;
  BooksParser.fromJson(Map json) {
    if (json['book'] != null) {
      books = [];
      json['book'].forEach((v) {
        books.add(BookModel.fromJson(v));
      });
    }
  }
}

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

  BookModel({
    this.id,
    this.language,
    this.edition,
    this.author,
  });
}
