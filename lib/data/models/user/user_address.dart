import 'package:built_collection/built_collection.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_address.g.dart';

abstract class UserAddress implements Built<UserAddress, UserAddressBuilder> {

  @BuiltValueField(wireName: "userid")
  String get userId;

  @BuiltValueField(wireName: "number")
  String get number;

  @BuiltValueField(wireName: "street")
  String get street;

  @BuiltValueField(wireName: "city")
  String get city;

  @BuiltValueField(wireName: "country")
  String get country;

  @BuiltValueField(wireName: "zip")
  String get zip;

  @BuiltValueField(wireName: "update_at")
  String get update_at;

  @BuiltValueField(wireName: "is_primary")
  bool get is_primary;

  UserAddress._();
  factory UserAddress([void Function(UserAddressBuilder) updates]) = _$UserAddress;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(UserAddress.serializer, this)! as Map<String, dynamic>;
  }

  static UserAddress fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserAddress.serializer, json)!;
  }

  static Serializer<UserAddress> get serializer => _$userAddressSerializer;
}