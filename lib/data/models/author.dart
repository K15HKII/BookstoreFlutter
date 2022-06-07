import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'author.g.dart';

abstract class Author implements Built<Author, AuthorBuilder> {

  Author._();
  factory Author([void Function(AuthorBuilder) updates]) = _$Author;

  Object toJson() {
    return serializers.serializeWith(Author.serializer, this)!;
  }

  static Author fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Author.serializer, json)!;
  }

  static Serializer<Author> get serializer => _$authorSerializer;
}