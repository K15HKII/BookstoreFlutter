import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bill_detail.g.dart';

abstract class BillDetail implements Built<BillDetail, BillDetailBuilder> {

  @BuiltValueField(wireName: "bill_id")
  int get billId;

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "price")
  double get price;

  @BuiltValueField(wireName: "quantity")
  int get quantity;

  BillDetail._();
  factory BillDetail([void Function(BillDetailBuilder) updates]) = _$BillDetail;

  Object toJson() {
    return serializers.serializeWith(BillDetail.serializer, this)!;
  }

  static BillDetail fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BillDetail.serializer, json)!;
  }

  static Serializer<BillDetail> get serializer => _$billDetailSerializer;
}