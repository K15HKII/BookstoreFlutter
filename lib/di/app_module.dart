import 'package:bookstore_flutter/data/remotes/auth_remote.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {

  Dio get dio => Dio();

  AuthRemote authRemote(Dio dio) => AuthRemote(dio);

}