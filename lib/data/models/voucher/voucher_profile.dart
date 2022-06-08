import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voucher_profile.g.dart';

abstract class AbstractVoucherProfile {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "name")
  String get name;

  @BuiltValueField(wireName: "description")
  String get description;

  @BuiltValueField(wireName: "discount_type")
  String get discountType;

  @BuiltValueField(wireName: "min_value")
  double get minValue;

  @BuiltValueField(wireName: "discount")
  int get discount;

  // @BuiltValueField(wireName: "vouchers")
  // ListBuilder<Voucher> get vouchers;
  //
  // @BuiltValueField(wireName: "wild_vouchers")
  // ListBuilder<WildVoucher> get wildVouchers;

}

abstract class VoucherProfile extends Object with AbstractVoucherProfile implements Built<VoucherProfile, VoucherProfileBuilder> {

  VoucherProfile._();
  factory VoucherProfile([void Function(VoucherProfileBuilder) updates]) = _$VoucherProfile;

  Object toJson() {
    return serializers.serializeWith(VoucherProfile.serializer, this)!;
  }

  static VoucherProfile fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(VoucherProfile.serializer, json)!;
  }

  static Serializer<VoucherProfile> get serializer => _$voucherProfileSerializer;
}