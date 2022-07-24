import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/MovieModel.dart';

class DetailsHeader extends StatelessWidget {
  final Movie movie;
  const DetailsHeader({required this.movie});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.4,
          child: Stack(children: [
            Container(
              height: size.height * 0.4 - 50,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                      image: NetworkImage(movie.image), fit: BoxFit.cover)),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: size.width * 0.9,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 20,
                          color: Color(0xff12153d).withOpacity(0.3),
                        )
                      ]),
                  child: RateWidget(movie),
                ))
          ]),
        )
      ],
    );
  }
}

class RateWidget extends StatelessWidget {
  const RateWidget(this.movie);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset('assets/icons/star_fill.svg', height: 28),
            Row(
              children: [
                Text(
                  movie.iMDbRating,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Text('/10'),
              ],
            ),
            Text(movie.iMDbRatingCount),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/star.svg'),
            const SizedBox(
              height: kDefaultPadding / 2.5,
            ),
            const Text('Rate this'),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent),
              child: const Center(
                child: Text(
                  '86',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding / 2.5,
            ),
            const Text('86 reviews'),
          ],
        )
      ],
    );
  }
}
