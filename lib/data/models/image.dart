import 'package:bookstore_flutter/data/models/file.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image.g.dart';

abstract class Image extends File implements Built<Image, ImageBuilder>  {

  @BuiltValueField(wireName: "width")
  double get width;

  @BuiltValueField(wireName: "height")
  double get height;

  Image._();
  factory Image([void Function(ImageBuilder) updates]) = _$Image;

  Object toJson() {
    return serializers.serializeWith(Image.serializer, this)!;
  }

  static Image fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Image.serializer, json)!;
  }

  static Serializer<Image> get serializer => _$imageSerializer;
}