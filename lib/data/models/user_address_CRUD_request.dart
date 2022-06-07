import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_address_CRUD_request.g.dart';

abstract class UserAddressCrudRequest implements Built<UserAddressCrudRequest, UserAddressCrudRequestBuilder> {

  @BuiltValueField(wireName: "street")
  String get street;

  @BuiltValueField(wireName: "city")
  String get city;

  @BuiltValueField(wireName: "zip")
  String get zip;

  @BuiltValueField(wireName: "country")
  String get country;

  UserAddressCrudRequest._();
  factory UserAddressCrudRequest([void Function(UserAddressCrudRequestBuilder) updates]) = _$UserAddressCrudRequest;

  Object toJson() {
    return serializers.serializeWith(UserAddressCrudRequest.serializer, this)!;
  }

  static UserAddressCrudRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserAddressCrudRequest.serializer, json)!;
  }

  static Serializer<UserAddressCrudRequest> get serializer => _$userAddressCrudRequestSerializer;
}