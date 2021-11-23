import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quiz/Bloc/movilistbloc/movie_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_event.dart';
import 'package:quiz/UI/movie_list/Widgets/gridviewlist.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/models/movielistmodel/movielistmodel.dart';


class landingmovielist extends StatefulWidget {
 final  List<Movies> movielist;

  const landingmovielist({Key key, this.movielist}) : super(key: key);


  @override
  _landingmovielistState createState() => _landingmovielistState();
}

class _landingmovielistState extends State<landingmovielist> {
  final _scrollController = ScrollController();
 var Movie = List<Movies>();
 var searchkey = "";


 @override
  Widget build(BuildContext context) {
    return
   Scaffold(
     appBar: AppBar(),
        body:
        OrientationBuilder(builder: (context, orientation) {
          return ListView(
            children: [
              Center(
                child: Column(

                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5*AppSizeConfig.widthMultiplier,),
                        Search(),
                        IconButton(onPressed: (){
                          BlocProvider.of<MovieBloc>(context).add(
                            MovieEvent.search(params: searchkey),
                          );
                          
                        }, icon:Icon(Icons.search), iconSize: 29,)
                      ],
                    ),

                    CustomScrollView(
                      shrinkWrap: true,
                      controller: _scrollController,
                      slivers: [
                        SliverGrid(delegate: SliverChildBuilderDelegate(

                              (context, index) {
                            return Container(
                              height: 85 * AppSizeConfig.heightMultiplier,
                              child: gridlist(
                                movielist: widget.movielist, index: index,),
                            );
                          },
                          childCount: widget.movielist.length,

                        ),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                           orientation == Orientation.portrait ? 2 : 3,
                            childAspectRatio: 0.8,
                          ),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          );


        }
    )

    );
  }

  Search(){
    return Container(
      height: 10*AppSizeConfig.heightMultiplier,
      width: 70*AppSizeConfig.widthMultiplier,
      child: TextField(
        decoration:  InputDecoration(

          hintText: "search by name"
        ),
        onChanged: (texts){
          setState(() {
            searchkey=texts;
          });
         /* Movie = List.from(widget.movielist.data.movies);

         Movie = widget.movielist.data.movies
              .where((string) => string.name.toLowerCase().contains(texts.toLowerCase()))
              .toList();
         print(Movie[0].description);*/
        },
      ),
    );
  }

  }

