import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_event.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/models/movielistmodel/movielistmodel.dart';

class gridlist extends StatefulWidget {
 final  List<Movies> movielist;
 final int index;

  const gridlist({Key key, this.movielist, this.index}) : super(key: key);

  @override
  _gridlistState createState() => _gridlistState();
}

class _gridlistState extends State<gridlist> {


  String  convertString(String link){

    String find = "/thumb/";
    String replace ="/medium/";
    String  newstring =  link.replaceAll(find,replace);

    return newstring;
  }

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(

        onTap: () {
          BlocProvider.of<MovieBloc>(context).add(
              MovieEvent.moviedetailsevent(
                  params: widget.movielist[widget.index].id)
          );
        },
        child: Card(
          shadowColor: Colors.black,

          child: Container(
            height: 25 * AppSizeConfig.heightMultiplier,
            width: 16 * AppSizeConfig.widthMultiplier,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                    height: 20 * AppSizeConfig.heightMultiplier,
                    width: 55 * AppSizeConfig.widthMultiplier,
color: Colors.grey,
                    child: AspectRatio(
                      aspectRatio: 1.2,
                      child: Image.network(
                        convertString(
                        widget.movielist[widget.index].thumbnail),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,


                      ),
                    )),
                Text(widget.movielist[widget.index].name,
                  style: TextStyle(fontSize: 2.9 * AppSizeConfig
                      .textMultiplier, fontWeight: FontWeight.bold),),
                Text(widget.movielist[widget.index].year,
                  style: TextStyle(fontSize: 1.9 * AppSizeConfig
                      .textMultiplier, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      );







  }
}
