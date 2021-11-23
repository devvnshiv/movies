import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quiz/UI/movie_list/Widgets/gridviewlist.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/models/movielistmodel/movielistmodel.dart';


class landingmovielist extends StatefulWidget {
 final  movie_list_model movielist;

  const landingmovielist({Key key, this.movielist}) : super(key: key);


  @override
  _landingmovielistState createState() => _landingmovielistState();
}

class _landingmovielistState extends State<landingmovielist> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return
   Scaffold(
        body:
        OrientationBuilder(builder: (context, orientation) {
          return ListView(
            children: [
              Center(
                child: Column(

                  children: [
                    CustomScrollView(
                      shrinkWrap: true,
                      controller: _scrollController,
                      slivers: [
                        SliverGrid(delegate: SliverChildBuilderDelegate(

                              (context, index) {
                            return Container(
                              height: 90 * AppSizeConfig.heightMultiplier,
                              child: gridlist(
                                movielist: widget.movielist, index: index,),
                            );
                          },
                          childCount: widget.movielist.data.movies.length,

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
  }

