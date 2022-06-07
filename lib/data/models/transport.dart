import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'bill.dart';

part 'Transport.g.dart';

abstract class Transport implements Built<Transport, TransportBuilder> {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "raw")
  String get raw;

  @BuiltValueField(wireName: "bill")
  Bill get bill;

  Transport._();
  factory Transport([void Function(TransportBuilder) updates]) = _$Transport;

  Object toJson() {
    return serializers.serializeWith(Transport.serializer, this)!;
  }

  static Transport fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Transport.serializer, json)!;
  }

  static Serializer<Transport> get serializer => _$transportSerializer;
}