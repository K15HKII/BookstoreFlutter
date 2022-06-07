import 'package:bookstore_flutter/data/models/file.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audio.g.dart';

abstract class Audio extends File implements Built<Audio, AudioBuilder> {

  @BuiltValueField(wireName: "duration")
  double get duration;

  Audio._();
  factory Audio([void Function(AudioBuilder) updates]) = _$Audio;

  Object toJson() {
    return serializers.serializeWith(Audio.serializer, this)!;
  }

  static Audio fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Audio.serializer, json)!;
  }

  static Serializer<Audio> get serializer => _$audioSerializer;
}