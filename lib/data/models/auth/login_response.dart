import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_response.g.dart';

abstract class LoginResponse
    implements Built<LoginResponse, LoginResponseBuilder> {
  String get accessToken;

  LoginResponse._();

  factory LoginResponse([void Function(LoginResponseBuilder) updates]) =
      _$LoginResponse;

  Object toJson() {
    return serializers.serializeWith(LoginResponse.serializer, this)!;
  }

  static LoginResponse fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(LoginResponse.serializer, json)!;
  }

  static Serializer<LoginResponse> get serializer => _$loginResponseSerializer;
}
