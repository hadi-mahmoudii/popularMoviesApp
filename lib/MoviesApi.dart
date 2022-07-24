import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:movies/models/MovieModel.dart';


class MovieApi {
  static Future<List<Movie>> getPopularMovies() async {
   
    String jsonString = await rootBundle.loadString('assets/Movies.json');
  

    final Map<String, dynamic> map = json.decode(jsonString);

    final body = map["items"] as List;
    return body.map((item) => Movie.fromjson(item)).toList();
  }
}
