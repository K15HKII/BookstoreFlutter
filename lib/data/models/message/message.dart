import 'package:bookstore_flutter/data/models/message/image.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:bookstore_flutter/data/models/message/video.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message.g.dart';

abstract class AbstractMessage {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "text")
  String get text;

  // @BuiltValueField(wireName: "images")
  // BuiltList<Image> get images;
  //
  // @BuiltValueField(wireName: "videos")
  // BuiltList<Video> get videos;

}

abstract class Message extends Object with AbstractMessage implements Built<Message, MessageBuilder> {

  Message._();
  factory Message([void Function(MessageBuilder) updates]) = _$Message;

  Object toJson() {
    return serializers.serializeWith(Message.serializer, this)!;
  }

  static Message fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Message.serializer, json)!;
  }

  static Serializer<Message> get serializer => _$messageSerializer;
}