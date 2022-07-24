import 'package:flutter/material.dart';
import 'package:movies/view/home/widgets/Genres_Card.dart';

import '../../../constants.dart';
import '../../../models/MovieModel.dart';

Widget nameDetailsRow(Movie movie, context) {
  final size = MediaQuery.of(context).size;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: size.width / 1.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movie.title,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontSize: 18, color: Colors.black),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    movie.year,
                    style: const TextStyle(color: KSubtitleText, fontSize: 14),
                  ),
                  const SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  Text(
                    movie.rankUpDown,
                    style: const TextStyle(color: KSubtitleText, fontSize: 14),
                  ),
                  const SizedBox(
                    width: kDefaultPadding / 2,
                  ),
                  const Text(
                    '2h 32min',
                    style: TextStyle(color: KSubtitleText, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      plusIcon()
    ],
  );
}

Widget plusIcon() {
  return Container(
    decoration: BoxDecoration(
      color: kSecondaryColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: IconButton(
      onPressed: () {},
      icon: Icon(Icons.control_point),
      color: Colors.white,
    ),
  );
}
