import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bill.g.dart';

abstract class Bill implements Built<Bill, BillBuilder> {

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