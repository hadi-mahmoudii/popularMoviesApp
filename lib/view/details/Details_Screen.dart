import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/models/MovieModel.dart';
import 'package:movies/view/details/widgets/Details_body.dart';
import 'widgets/Details_Header.dart';

class DetailScreen extends StatelessWidget {
  final Movie _movie;
  const DetailScreen(this._movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          DetailsHeader(
            movie: _movie,
          ),
          DetailsBody(_movie),
          CastDetails(_movie),
        ],
      ),
    ));
  }
}

final List<String> acters = [
  'Zoë Kravitz',
  'Colin Farrell',
  'Jayme Lawson',
  'Jeffrey Wright',
  'Robert Pattinson',
  "Stella Stocker"
];

class CastDetails extends StatelessWidget {
  const CastDetails(this._movie);
  final Movie _movie;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.3,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),

        // Text('Cast & Crew', style: Theme.of(context).textTheme.headline5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cast & Crew',
              style: Theme.of(context).textTheme.headline5,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: acters.length,
                  itemBuilder: (context, index) => castDetailsAvatar(index)),
            ),
          ],
        ));
  }

  Widget castDetailsAvatar(int index) {
    print(index);
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding, right: kDefaultPadding / 2),
      height: 150,
      width: 60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage("assets/images/casts/$index.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: kDefaultPadding / 2),
            child: Text(
              acters[index],
              maxLines: 2,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
