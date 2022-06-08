import 'package:bookstore_flutter/data/models/author.dart';
import 'package:bookstore_flutter/data/models/publisher.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book.g.dart';

abstract class Book implements Built<Book, BookBuilder> {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "title")
  String get title;

  @BuiltValueField(wireName: "description")
  String get description;

  @BuiltValueField(wireName: "quantity")
  int get quantity;

  @BuiltValueField(wireName: "author")
  Author get author;

  @BuiltValueField(wireName: "price")
  int get price;

  @BuiltValueField(wireName: "publisher")
  Publisher get publisher;

  // @BuiltValueField(wireName: "images")
  // BuiltList<Image> get images;
  //
  // @BuiltValueField(wireName: "videos")
  // BuiltList<Video> get videos;
  //
  // @BuiltValueField(wireName: "ebook")
  // BuiltList<Document> get ebook;
  //
  // @BuiltValueField(wireName: "feedbacks")
  // BuiltList<FeedBack> get feedbacks;

  Book._();
  factory Book([void Function(BookBuilder) updates]) = _$Book;

  Object toJson() {
    return serializers.serializeWith(Book.serializer, this)!;
  }

  static Book fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Book.serializer, json)!;
  }

  static Serializer<Book> get serializer => _$bookSerializer;
}