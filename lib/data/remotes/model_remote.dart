import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'model_remote.g.dart';

@RestApi(baseUrl: "https://bookstore-flutter.herokuapp.com/api/v1/")
abstract class ModelRemote {

  factory ModelRemote(Dio dio, {String baseUrl}) = _ModelRemote;

}