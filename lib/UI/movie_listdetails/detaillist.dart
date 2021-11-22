import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_event.dart';
import 'package:quiz/UI/movie_listdetails/widgets/description.dart';
import 'package:quiz/UI/movie_listdetails/widgets/detailscontiner.dart';
import 'package:quiz/UI/movie_listdetails/widgets/imagecointainer.dart';
import 'package:quiz/models/movielistmodel/moviedetails_model.dart';


class detaillist extends StatefulWidget {
 final  movie_details_model movieditals;

  const detaillist({Key key, this.movieditals}) : super(key: key);

  @override
  _detaillistState createState() => _detaillistState();
}

class _detaillistState extends State<detaillist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          BlocProvider.of<MovieBloc>(context).add(
              MovieEvent.movielistevent( ),
          );


        }, icon:Icon( Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                imageconitiner(imagestring: widget.movieditals.data.movie.thumbnail,),
                details(movieditals: widget.movieditals,),
                descriptions(Des:  widget.movieditals.data.movie.description,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
