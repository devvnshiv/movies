import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_event.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/models/movielistmodel/movielistmodel.dart';

class gridlist extends StatefulWidget {
 final  movie_list_model movielist;

  const gridlist({Key key, this.movielist}) : super(key: key);

  @override
  _gridlistState createState() => _gridlistState();
}

class _gridlistState extends State<gridlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95*AppSizeConfig.heightMultiplier,
      width: 97*AppSizeConfig.widthMultiplier,

      child: GridView.builder(


          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 100*AppSizeConfig.widthMultiplier>450?4:2,
          childAspectRatio: 1.2 / 1.6,
          crossAxisSpacing: 2*AppSizeConfig.heightMultiplier,
          mainAxisSpacing: 5*AppSizeConfig.widthMultiplier),

          itemCount: widget.movielist.data.movies.length,
          itemBuilder: (context, index){

            return GestureDetector(

                  onTap: (){
                    BlocProvider.of<MovieBloc>(context).add(
                        MovieEvent.moviedetailsevent(params:widget.movielist.data.movies[index].id )
                    );
                  },
              child: Card(
                shadowColor: Colors.black,

                child: Container(
                  height: 25*AppSizeConfig.heightMultiplier,
                  width: 16*AppSizeConfig.widthMultiplier,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                          height: 20*AppSizeConfig.heightMultiplier,
                          width: 55*AppSizeConfig.widthMultiplier,

                          child: Image.network(widget.movielist.data.movies[index].thumbnail,filterQuality: FilterQuality.high,fit:BoxFit.fitHeight,



                          )),
                      Text(widget.movielist.data.movies[index].name,
                        style: TextStyle(fontSize: 2.9*AppSizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                      Text(widget.movielist.data.movies[index].year,style: TextStyle(fontSize: 1.9*AppSizeConfig.textMultiplier, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
