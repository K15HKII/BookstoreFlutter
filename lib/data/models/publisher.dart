import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'publisher.g.dart';

abstract class Publisher implements Built<Publisher, PublisherBuilder> {

  @BuiltValueField(wireName: "id")
  int get id;

  @BuiltValueField(wireName: "name")
  String get name;

  @BuiltValueField(wireName: "description")
  String get description;

  Publisher._();
  factory Publisher([void Function(PublisherBuilder) updates]) = _$Publisher;

  Object toJson() {
    return serializers.serializeWith(Publisher.serializer, this)!;
  }

  static Publisher fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Publisher.serializer, json)!;
  }

  static Serializer<Publisher> get serializer => _$publisherSerializer;
}