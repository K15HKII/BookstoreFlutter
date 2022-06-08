import 'package:bookstore_flutter/data/models/lend/lend_status.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lend.g.dart';

abstract class Lend implements Built<Lend, LendBuilder> {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "user_id")
  String get userId;

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "lend_status")
  LendStatus get lendStatus;

  @BuiltValueField(wireName: "start_date")
  DateTime get startDate;

  @BuiltValueField(wireName: "end_date")
  DateTime get endDate;

  Lend._();
  factory Lend([void Function(LendBuilder) updates]) = _$Lend;

  Object toJson() {
    return serializers.serializeWith(Lend.serializer, this)!;
  }

  static Lend fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Lend.serializer, json)!;
  }

  static Serializer<Lend> get serializer => _$lendSerializer;
}