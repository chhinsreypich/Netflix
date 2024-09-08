class Movie {
  final String title;
  final String backDropPath;
  /// todo: add overview, posterPath, releaseDate
  final String overview;
  final String posterPath;
  final String releaseDate;

  Movie({
    required this.title,
    required this.backDropPath,
    /// todo: add overview, posterPath, releaseDate
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
  });


  factory Movie.fromMap(Map<String, dynamic> map){
    return Movie(
      title: map['title'],
      backDropPath: map['backdrop_path'],
      /// todo: add overview, posterPath, releaseDate. but you should know you have to use _ to bring data from map. Ex) backDropPath: map['backdropPath'] XXXX  backDropPath: map['backdrop_path'] 0000,
      overview: map['overview'],
      posterPath: map['poster_path'],
      releaseDate: map['release_date'],
      
    );
  }


  Map<String, dynamic> toMap(){
    return {
      'title': title,
      'backDropPath': backDropPath,
      // todo: add overview, posterPath, releaseDate
      'overview': overview,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
    };
  }

}