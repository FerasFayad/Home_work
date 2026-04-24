/*Q3 Create a class Movie with attributes title and rating.
 In main(), create a list of 4 movies. Print only the movies with a rating above 7.
 */

void main() {
  Map<String, Movie> movies = {
    'avatar': Movie('Avatar', 6.1),
    'scream': Movie('Scream', 8.6),
    'titanic': Movie('Titanic', 4.0),
    'john_wick': Movie('John Wick', 9.5),
  };

  print(movies['john_wick']!.rating);

  movies.forEach((key, movie) {
    if (movie.rating > 7) {
      print(movie.title);
    }
  });
}

class Movie {
  String title;
  double rating;

  Movie(this.title, this.rating);
}
