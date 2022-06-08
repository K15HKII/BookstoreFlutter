import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_voucher.g.dart';

abstract class BaseVoucher implements Built<BaseVoucher, BaseVoucherBuilder> {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "code")
  String get code;

  @BuiltValueField(wireName: "release_date")
  DateTime get release_date;

  @BuiltValueField(wireName: "expired_at")
  DateTime get expired_at;

  @BuiltValueField(wireName: "profile_id")
  String get profileId;

  BaseVoucher._();
  factory BaseVoucher([void Function(BaseVoucherBuilder) updates]) = _$BaseVoucher;

  Object toJson() {
    return serializers.serializeWith(BaseVoucher.serializer, this)!;
  }

  static BaseVoucher fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BaseVoucher.serializer, json)!;
  }

  static Serializer<BaseVoucher> get serializer => _$baseVoucherSerializer;
}