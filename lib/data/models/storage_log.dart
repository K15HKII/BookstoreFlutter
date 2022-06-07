import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:bookstore_flutter/data/models/storage_log_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_log.g.dart';

abstract class StorageLog implements Built<StorageLog, StorageLogBuilder> {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "description")
  String get description;

  @BuiltValueField(wireName: "action")
  String get action;

  @BuiltValueField(wireName: "details")
  BuiltList<StorageLogDetail> get details;

  StorageLog._();
  factory StorageLog([void Function(StorageLogBuilder) updates]) = _$StorageLog;

  Object toJson() {
    return serializers.serializeWith(StorageLog.serializer, this)!;
  }

  static StorageLog fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(StorageLog.serializer, json)!;
  }

  static Serializer<StorageLog> get serializer => _$storageLogSerializer;
}