import 'package:bookstore_flutter/data/models/login_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote.g.dart';

@RestApi(baseUrl: "https://bookstore-flutter.herokuapp.com/api/v1/")
abstract class AuthRemote {
  factory AuthRemote(Dio dio, {String baseUrl}) = _AuthRemote;

  @GET("/tasks")
  Future<LoginResponse> getTasks();
}
