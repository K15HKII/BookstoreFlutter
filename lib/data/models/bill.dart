import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'user_address.dart';
import 'bill_detail.dart';
import 'transport.dart';
import 'bill_status.dart';
import 'voucher_profile.dart';
import 'payment.dart';

part 'bill.g.dart';

abstract class Bill implements Built<Bill, BillBuilder> {

  @BuiltValueField(wireName: "id")
  int get id;

  @BuiltValueField(wireName: "transport")
  Transport get transport;

  @BuiltValueField(wireName: "userid")
  String get userid;

  @BuiltValueField(wireName: "status")
  BillStatus get status;

  @BuiltValueField(wireName: "bill_details")
  BuiltList<BillDetail> get billDetails;

  @BuiltValueField(wireName: "user_address")
  UserAddress get userAddress;

  @BuiltValueField(wireName: "voucher_profile")
  VoucherProfile get voucherProfile;

  @BuiltValueField(wireName: "payment")
  Payment get payment;

  Bill._();
  factory Bill([void Function(BillBuilder) updates]) = _$Bill;

  Object toJson() {
    return serializers.serializeWith(Bill.serializer, this)!;
  }

  static Bill fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Bill.serializer, json)!;
  }

  static Serializer<Bill> get serializer => _$billSerializer;
}