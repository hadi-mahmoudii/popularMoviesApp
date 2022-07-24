import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/MovieModel.dart';
import 'package:movies/view/details/Details_Screen.dart';

Widget MovieCard({required Movie movie}) {
  return Column(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding),
          child: InkWell(
            onTap: () => Get.to(DetailScreen(movie)),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [kDefaultShadow],
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: NetworkImage(movie.image), fit: BoxFit.fill)),
            ),
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(movie.title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w800))),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/star_fill.svg", height: 20),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            movie.iMDbRating.toString(),
            style: const TextStyle(fontSize: 14),
          ),
        ],
      )
    ],
  );
}
