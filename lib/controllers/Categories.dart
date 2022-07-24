import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movies/MoviesApi.dart';
import 'package:movies/models/MovieModel.dart';

List<String> categories = ['in Theater', 'Box Office', 'Coming soon'];

List<String> genres = [
  'Action',
  'Crime',
  'Comedy',
  'Drama',
  'Horror',
  'Animation'
];

class MoviesController extends GetxController {
  RxInt selectCategoty = 0.obs;
  var movies = <Movie>[].obs;
  
  

  MoviesController() {
    getMovies();
  }

  getMovies() async {
    try {
      movies.value = await MovieApi.getPopularMovies();
      print(movies);
      return movies;
    } catch (e) {
      print(e);
    }
  }

  categoryChange(int index) {
    selectCategoty.value = index;
  }
}
