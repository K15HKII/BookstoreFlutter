import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'wild_voucher.g.dart';

abstract class WildVoucher implements Built<WildVoucher, WildVoucherBuilder> {

  @BuiltValueField(wireName: "remaining_uses")
  double get remainingUses;

  @BuiltValueField(wireName: "max_uses")
  double get maxUses;

  WildVoucher._();
  factory WildVoucher([void Function(WildVoucherBuilder) updates]) = _$WildVoucher;

  Object toJson() {
    return serializers.serializeWith(WildVoucher.serializer, this)!;
  }

  static WildVoucher fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(WildVoucher.serializer, json)!;
  }

  static Serializer<WildVoucher> get serializer => _$wildVoucherSerializer;
}