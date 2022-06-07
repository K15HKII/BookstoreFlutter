import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recent_book_CRUD_request.g.dart';

abstract class RecentBookCrudRequest implements Built<RecentBookCrudRequest, RecentBookCrudRequestBuilder> {

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "selected")
  bool get selected;

  RecentBookCrudRequest._();
  factory RecentBookCrudRequest([void Function(RecentBookCrudRequestBuilder) updates]) = _$RecentBookCrudRequest;

  Object toJson() {
    return serializers.serializeWith(RecentBookCrudRequest.serializer, this)!;
  }

  static RecentBookCrudRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RecentBookCrudRequest.serializer, json)!;
  }

  static Serializer<RecentBookCrudRequest> get serializer => _$recentBookCrudRequestSerializer;
}