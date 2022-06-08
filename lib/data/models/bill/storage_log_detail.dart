import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_log_detail.g.dart';

abstract class StorageLogDetail implements Built<StorageLogDetail, StorageLogDetailBuilder> {

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "quantity")
  int get quantity;

  StorageLogDetail._();
  factory StorageLogDetail([void Function(StorageLogDetailBuilder) updates]) = _$StorageLogDetail;

  Object toJson() {
    return serializers.serializeWith(StorageLogDetail.serializer, this)!;
  }

  static StorageLogDetail fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(StorageLogDetail.serializer, json)!;
  }

  static Serializer<StorageLogDetail> get serializer => _$storageLogDetailSerializer;
}