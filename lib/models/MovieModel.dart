import 'package:flutter/material.dart';

class Movie {
  final String id;
  final String rank;
  final String rankUpDown;
  final String title;
  final String fullTitle;
  final String year;
  final String image;
  final String crew;
  final String iMDbRating;
  final String iMDbRatingCount;

  Movie({
    required this.id,
    required this.rank,
    required this.rankUpDown,
    required this.title,
    required this.fullTitle,
    required this.year,
    required this.image,
    required this.crew,
    required this.iMDbRating,
    required this.iMDbRatingCount,
  });

  Movie.fromjson(Map<String, dynamic> json)
      : id = json['id'],
        rank = json["rank"],
        rankUpDown = json["rankUpDown"],
        title = json['title'],
        fullTitle = json["fullTitle"],
        year = json["year"],
        image = json['image'],
        crew = json["crew"],
        iMDbRating = json["imDbRating"],
        iMDbRatingCount = json["imDbRatingCount"];
}
