

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Api/Api.dart';
import 'package:quiz/Bloc/movilistbloc/movie_event.dart';
import 'package:quiz/Bloc/movilistbloc/movie_state.dart';

import 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState>{
  @override
  MovieBloc():super(MovieState.initial());


  Stream<MovieState> mapEventToState(MovieEvent event) async*{
    yield* event.when(movielistevent:()=> intitiallist(), moviedetailsevent:(event)=>finaldetails(event));

  }

  Stream<MovieState> intitiallist() async*{

    yield MovieState.loading();
    var result = await Api().Getlist();
    print(result.statusCode);
    if(result.statusCode!=200||result.data.movies.length==0){
      yield MovieState.error();
    } else {
      yield MovieState.movielist(response: result);
    }
  }

  Stream<MovieState> finaldetails(Moviedetailsevent event) async*{
print(event);
yield MovieState.loading();
    var result = await Api().Getmoviedetails(event.params.toString());
    print(result.statusCode);
    if(result.statusCode!=200){
      yield MovieState.error();
    } else {
      yield MovieState.moviedetails(response: result);
    }


  }

}