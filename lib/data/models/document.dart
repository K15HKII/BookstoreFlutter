import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'file.dart';

part 'document.g.dart';

abstract class Document extends File implements Built<Document, DocumentBuilder> {

  @BuiltValueField(wireName: "duration")
  double get size;

  Document._();
  factory Document([void Function(DocumentBuilder) updates]) = _$Document;

  Object toJson() {
    return serializers.serializeWith(Document.serializer, this)!;
  }

  static Document fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Document.serializer, json)!;
  }

  static Serializer<Document> get serializer => _$documentSerializer;
}