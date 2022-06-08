import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recent_book_CRUD_request.g.dart';

abstract class RecentBookCRUDRequest implements Built<RecentBookCRUDRequest, RecentBookCRUDRequestBuilder> {

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "selected")
  bool get selected;

  RecentBookCRUDRequest._();
  factory RecentBookCRUDRequest([void Function(RecentBookCRUDRequestBuilder) updates]) = _$RecentBookCRUDRequest;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(RecentBookCRUDRequest.serializer, this)! as Map<String, dynamic>;
  }

  static RecentBookCRUDRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RecentBookCRUDRequest.serializer, json)!;
  }

  static Serializer<RecentBookCRUDRequest> get serializer => _$recentBookCRUDRequestSerializer;
}