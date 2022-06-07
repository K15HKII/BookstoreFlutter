import 'package:bookstore_flutter/data/models/voucher_profile.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_tag_voucher.g.dart';

abstract class BookTagVoucher extends VoucherProfile implements Built<BookTagVoucher, BookTagVoucherBuilder> {

  @BuiltValueField(wireName: "tag")
  String get tag;

  BookTagVoucher._();
  factory BookTagVoucher([void Function(BookTagVoucherBuilder) updates]) = _$BookTagVoucher;

  Object toJson() {
    return serializers.serializeWith(BookTagVoucher.serializer, this)!;
  }

  static BookTagVoucher fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BookTagVoucher.serializer, json)!;
  }

  static Serializer<BookTagVoucher> get serializer => _$bookTagVoucherSerializer;
}