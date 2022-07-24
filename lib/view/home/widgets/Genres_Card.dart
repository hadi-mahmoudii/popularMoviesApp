import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/controllers/Categories.dart';

class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    return Container(
      height: height * 5,
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) =>
              genresCard(genres[index], kDefaultPadding)),
    );
  }
}

Widget genresCard(String genres, double margin) {
  return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: margin),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.black12, width: 1),
      ),
      child: Center(
        child: Text(
          genres,
          style: TextStyle(color: kTextColor.withOpacity(0.8)),
        ),
      ));
}
