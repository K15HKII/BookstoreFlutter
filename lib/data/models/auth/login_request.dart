import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_request.g.dart';

abstract class LoginRequest implements Built<LoginRequest, LoginRequestBuilder> {

  String get username;

  String get password;

  LoginRequest._();
  factory LoginRequest([void Function(LoginRequestBuilder) updates]) = _$LoginRequest;

  Object toJson() {
    return serializers.serializeWith(LoginRequest.serializer, this)!;
  }

  static LoginRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(LoginRequest.serializer, json)!;
  }

  static Serializer<LoginRequest> get serializer => _$loginRequestSerializer;
}