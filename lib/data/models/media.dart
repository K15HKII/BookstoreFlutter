import 'package:bookstore_flutter/data/models/file.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'media.g.dart';

abstract class Media extends File implements Built<Media, MediaBuilder> {


  Media._();
  factory Media([void Function(MediaBuilder) updates]) = _$Media;

  Object toJson() {
    return serializers.serializeWith(Media.serializer, this)!;
  }

  static Media fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Media.serializer, json)!;
  }

  static Serializer<Media> get serializer => _$mediaSerializer;
}