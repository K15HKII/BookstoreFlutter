import 'package:bookstore_flutter/data/models/bill/bill_detail.dart';
import 'package:bookstore_flutter/data/models/bill/bill_status.dart';
import 'package:bookstore_flutter/data/models/payment.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:bookstore_flutter/data/models/transport.dart';
import 'package:bookstore_flutter/data/models/user/user_address.dart';
import 'package:bookstore_flutter/data/models/voucher/voucher_profile.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

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