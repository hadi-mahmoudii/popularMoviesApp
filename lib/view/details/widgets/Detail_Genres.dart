import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

Widget detailGenres(String text) {
  return Container(
    padding: EdgeInsets.all(7),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: Colors.grey),
    ),
    margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 1.5),
    child: Text(
      text,
      style: const TextStyle(fontSize: 13),
    ),
  );
}
