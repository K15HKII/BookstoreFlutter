import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_bank.g.dart';

abstract class UserBank implements Built<UserBank, UserBankBuilder> {

  @BuiltValueField(wireName: "userid")
  String get userId;

  @BuiltValueField(wireName: "bank_name")
  String get bankName;

  @BuiltValueField(wireName: "iabn")
  String get iban;

  @BuiltValueField(wireName: "bic")
  String get bic;

  UserBank._();
  factory UserBank([void Function(UserBankBuilder) updates]) = _$UserBank;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(UserBank.serializer, this)! as Map<String, dynamic>;
  }

  static UserBank fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserBank.serializer, json)!;
  }

  static Serializer<UserBank> get serializer => _$userBankSerializer;
}