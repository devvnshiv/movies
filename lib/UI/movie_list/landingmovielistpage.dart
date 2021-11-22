import 'package:flutter/material.dart';
import 'package:quiz/UI/movie_list/Widgets/gridviewlist.dart';
import 'package:quiz/models/movielistmodel/movielistmodel.dart';


class landingmovielist extends StatefulWidget {
 final  movie_list_model movielist;

  const landingmovielist({Key key, this.movielist}) : super(key: key);


  @override
  _landingmovielistState createState() => _landingmovielistState();
}

class _landingmovielistState extends State<landingmovielist> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
              gridlist(movielist: widget.movielist,)

            ],
          ),
        ),
      ),

    );
  }
}
