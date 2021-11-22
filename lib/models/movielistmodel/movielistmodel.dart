class movie_list_model {
  int statusCode;
  String message;
  Data data;

  movie_list_model({this.statusCode, this.message, this.data});

  movie_list_model.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  List<Movies> movies;

  Data({this.movies});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['movies'] != null) {
      movies = new List<Movies>();
      json['movies'].forEach((v) {
        movies.add(new Movies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movies != null) {
      data['movies'] = this.movies.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Movies {
  int id;
  String name;
  String year;
  String director;
  String mainStar;
  String description;
  int favoritedByUsers;
  List<String> genres;
  String thumbnail;

  Movies(
      {this.id,
        this.name,
        this.year,
        this.director,
        this.mainStar,
        this.description,
        this.favoritedByUsers,
        this.genres,
        this.thumbnail});

  Movies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    year = json['year'];
    director = json['director'];
    mainStar = json['main_star'];
    description = json['description'];
    favoritedByUsers = json['favorited_by_users'];
    genres = json['genres'].cast<String>();
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['year'] = this.year;
    data['director'] = this.director;
    data['main_star'] = this.mainStar;
    data['description'] = this.description;
    data['favorited_by_users'] = this.favoritedByUsers;
    data['genres'] = this.genres;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}
