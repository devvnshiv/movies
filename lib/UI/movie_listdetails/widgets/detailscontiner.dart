import 'package:flutter/material.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/models/movielistmodel/moviedetails_model.dart';

class details extends StatefulWidget {
  final  movie_details_model movieditals;

  const details({Key key, this.movieditals}) : super(key: key);


  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35*AppSizeConfig.heightMultiplier,
      width: 90*AppSizeConfig.widthMultiplier,
      child: Column(
        children: [
        desplaytext(widget.movieditals.data.movie.name),
          SizedBox(height: 3*AppSizeConfig.heightMultiplier,),
          desplaytext(widget.movieditals.data.movie.director),
          SizedBox(height: 3*AppSizeConfig.heightMultiplier,),
          desplaytext(widget.movieditals.data.movie.mainStar),
          SizedBox(height: 3*AppSizeConfig.heightMultiplier,),
          desplaytext(widget.movieditals.data.movie.year),
          SizedBox(height: 3*AppSizeConfig.heightMultiplier,),
          desplaytext(widget.movieditals.data.movie.genres.join(",")),
        ]
      ),

    );
  }


   desplaytext(String text){
    return Text(text,
      style: TextStyle(fontSize: 2.6*AppSizeConfig.textMultiplier, fontWeight: FontWeight.bold),);
   }
}
