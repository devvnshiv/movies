import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:quiz/models/movielistmodel/moviedetails_model.dart';
import 'package:quiz/models/movielistmodel/movielistmodel.dart';


class Api{

  String url = "http://165.22.75.82/v1/movies/";




  Future<movie_list_model> Getlist ()async{
    var result = await Dio().get(url);
    if(result.statusCode==200){

      return movie_list_model.fromJson(result.data);
    } else {

      return movie_list_model.fromJson(result.data); // returning error if its null bloc event will be error
    }
  }

  Future<movie_details_model> Getmoviedetails ( String id)async{
    var result = await Dio().get(url+id);
    if(result.statusCode==200){

      return  movie_details_model.fromJson(result.data);
    } else {

      return  movie_details_model.fromJson(result.data); // returning error if its null bloc event will be error
    }
  }



}