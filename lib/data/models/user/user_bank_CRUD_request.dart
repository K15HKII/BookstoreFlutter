import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_bank_CRUD_request.g.dart';

abstract class UserBankCrudRequest implements Built<UserBankCrudRequest, UserBankCrudRequestBuilder> {

  @BuiltValueField(wireName: "bank_name")
  String get bankName;

  @BuiltValueField(wireName: "iban")
  String get iban;

  @BuiltValueField(wireName: "bic")
  String get bic;

  UserBankCrudRequest._();
  factory UserBankCrudRequest([void Function(UserBankCrudRequestBuilder) updates]) = _$UserBankCrudRequest;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(UserBankCrudRequest.serializer, this)! as Map<String, dynamic>;
  }

  static UserBankCrudRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserBankCrudRequest.serializer, json)!;
  }

  static Serializer<UserBankCrudRequest> get serializer => _$userBankCrudRequestSerializer;
}