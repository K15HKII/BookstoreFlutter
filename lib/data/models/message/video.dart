import 'package:bookstore_flutter/data/models/message/file.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'video.g.dart';

abstract class Video extends Object with AbstractFile implements Built<Video, VideoBuilder>  {

  @BuiltValueField(wireName: "duration")
  double get duration;

  Video._();
  factory Video([void Function(VideoBuilder) updates]) = _$Video;

  Object toJson() {
    return serializers.serializeWith(Video.serializer, this)!;
  }

  static Video fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Video.serializer, json)!;
  }

  static Serializer<Video> get serializer => _$videoSerializer;
}