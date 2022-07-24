import 'package:flutter/material.dart';
import 'package:movies/view/details/widgets/Name_Detail.dart';

import '../../../constants.dart';
import '../../../models/MovieModel.dart';
import 'Detail_Genres.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody(this.movie);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding * 2),
      width: size.width,
      height: size.height * 0.42,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nameDetailsRow(movie, context),
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding * 3.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                detailGenres('Action'),
                detailGenres('Biography'),
                detailGenres('Drama'),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: kDefaultPadding / 1.3),
            child: Text(
              'Plot Summary',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const Text(
            'When Patrizia Reggiani, an outsider from humble beginnings, marries into the Gucci family, her unbridled ambition begie.',
          )
        ],
      ),
    );
  }
}
