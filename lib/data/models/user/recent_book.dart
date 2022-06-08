import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recent_book.g.dart';

abstract class RecentBook implements Built<RecentBook, RecentBookBuilder> {

  @BuiltValueField(wireName: "id")
  String get user_id;

  @BuiltValueField(wireName: "id")
  String get book_id;

  RecentBook._();
  factory RecentBook([void Function(RecentBookBuilder) updates]) = _$RecentBook;

  Object toJson() {
    return serializers.serializeWith(RecentBook.serializer, this)!;
  }

  static RecentBook fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(RecentBook.serializer, json)!;
  }

  static Serializer<RecentBook> get serializer => _$recentBookSerializer;
}