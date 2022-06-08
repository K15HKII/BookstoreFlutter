import 'package:bookstore_flutter/data/models/user/gender.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "firstname")
  String get firstName;

  @BuiltValueField(wireName: "lastname")
  String get lastName;

  @BuiltValueField(wireName: "phone")
  String get phone;

  @BuiltValueField(wireName: "birthday")
  DateTime get birthDay;

  @BuiltValueField(wireName: "age")
  int get age;

  @BuiltValueField(wireName: "gender")
  Gender get gender;

  @BuiltValueField(wireName: "username")
  String get userName;

  @BuiltValueField(wireName: "salt")
  String get salt;

  @BuiltValueField(wireName: "email")
  String get email;

  @BuiltValueField(wireName: "role")
  String get role;

  @BuiltValueField(wireName: "refresh_token")
  String get refresh_token;

  @BuiltValueField(wireName: "created_at")
  String get created_at;

  @BuiltValueField(wireName: "updated_at")
  int get updated_at;

  @BuiltValueField(wireName: "is_active")
  int get is_active;

  @BuiltValueField(wireName: "is_verified")
  int get is_verified;

  @BuiltValueField(wireName: "is_locked")
  int get is_locked;

  @BuiltValueField(wireName: "is_blocked")
  int get is_blocked;

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