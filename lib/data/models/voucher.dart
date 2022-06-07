import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voucher.g.dart';

abstract class Voucher implements Built<Voucher, VoucherBuilder> {

  @BuiltValueField(wireName: "user_id")
  String get userId;

  @BuiltValueField(wireName: "used_at")
  DateTime get usedAt;

  Voucher._();
  factory Voucher([void Function(VoucherBuilder) updates]) = _$Voucher;

  Object toJson() {
    return serializers.serializeWith(Voucher.serializer, this)!;
  }

  static Voucher fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Voucher.serializer, json)!;
  }

  static Serializer<Voucher> get serializer => _$voucherSerializer;
}