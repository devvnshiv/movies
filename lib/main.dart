import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Api/Api.dart';

import 'package:quiz/Bloc/movilistbloc/movie_bloc.dart';
import 'package:quiz/Bloc/movilistbloc/movie_event.dart';
import 'package:quiz/Bloc/movilistbloc/movie_state.dart';


import 'package:quiz/UI/movie_list/landingmovielistpage.dart';
import 'package:quiz/UI/movie_listdetails/detaillist.dart';
import 'package:quiz/UI/utils/Resposive.dart';
import 'package:quiz/UI/utils/loaderror.dart';
import 'package:quiz/UI/utils/preload.dart';

void main() async{
  var result = await Api().Getmoviedetails("21");
  print(result.statusCode);
  print(result.data.movie.mainStar);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, oriantion) {
        AppSizeConfig().init(constraints, oriantion);
        return
          MaterialApp(
            title: 'testapi',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.green,
              // This makes the visual density adapt to the platform that you run
              // the app on. For desktop platforms, the controls will be smaller and
              // closer together (more dense) than on mobile platforms.
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: Appevent(),
          );
      }
      );
    }
    );
  }
}

class Appevent extends StatefulWidget {


  @override
  _AppeventState createState() => _AppeventState();
}

class _AppeventState extends State<Appevent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MovieBloc>(create:(context)=>MovieBloc()..add(MovieEvent.movielistevent()),
    child: BlocConsumer<MovieBloc, MovieState>(builder: (_,state){
      return state.when(initial:()=> Preload (), loading: ()=>Preload(), movielist:(e)=>landingmovielist(movielist: e.response,),

      error: ()=> loaderror (),moviedetails: (e)=> detaillist(movieditals: e.response,)

      );

    },




        listener: (_ ,state){

        }),
    );
  }
}
