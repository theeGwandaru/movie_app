import 'package:flutter/material.dart';
import 'package:movieapp/constants.dart';
import 'package:movieapp/models/movie.dart';

class TitleDurationAndFabButton extends StatelessWidget {
  final Movie movie;
  const TitleDurationAndFabButton({Key key, @required this.movie}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(movie.title, style: Theme.of(context).textTheme.headline),
                SizedBox(height: kDefaultPadding / 2),
                Row(
                  children: <Widget>[
                    Text('${movie.year}', style: TextStyle(color: kTextLightColor)),
                    SizedBox(width: kDefaultPadding),
                    Text("PG-13", style: TextStyle(color: kTextLightColor)),
                    SizedBox(width: kDefaultPadding),
                    Text("2h 32min", style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            )
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              onPressed: () {},
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      )
    );
  }
}
