import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;

  Object toJson() {
    return serializers.serializeWith(User.serializer, this)!;
  }

  static User fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(User.serializer, json)!;
  }

  static Serializer<User> get serializer => _$userSerializer;
}