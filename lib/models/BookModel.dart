class BookModel {
  String? id;
  String? title;
  String? description;
  String? rating;
  int? pages;
  String? language;
  String? audioLength;
  String? author;
  String? aboutAuthor;
  String? bookUrl;
  String? audioUrl;
  String? category;
  int? price;
  int? numberOfRating;

  BookModel(
      {this.id,
      this.title,
      this.description,
      this.rating,
      this.pages,
      this.language,
      this.audioLength,
      this.author,
      this.aboutAuthor,
      this.bookUrl,
      this.audioUrl,
      this.category,
      this.price,
      this.numberOfRating});

  BookModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["rating"] is String) {
      rating = json["rating"];
    }
    if (json["pages"] is int) {
      pages = json["pages"];
    }
    if (json["language"] is String) {
      language = json["language"];
    }
    if (json["audioLength"] is String) {
      audioLength = json["audioLength"];
    }
    if (json["author"] is String) {
      author = json["author"];
    }
    if (json["aboutAuthor"] is String) {
      aboutAuthor = json["aboutAuthor"];
    }
    if (json["bookUrl"] is String) {
      bookUrl = json["bookUrl"];
    }
    if (json["audioUrl"] is String) {
      audioUrl = json["audioUrl"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["price"] is int) {
      price = json["price"];
    }
    if (json["numberOfRating"] is int) {
      numberOfRating = json["numberOfRating"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["rating"] = rating;
    _data["pages"] = pages;
    _data["language"] = language;
    _data["audioLength"] = audioLength;
    _data["author"] = author;
    _data["aboutAuthor"] = aboutAuthor;
    _data["bookUrl"] = bookUrl;
    _data["audioUrl"] = audioUrl;
    _data["category"] = category;
    _data["price"] = price;
    _data["numberOfRating"] = numberOfRating;
    return _data;
  }
}
