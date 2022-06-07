import 'package:bookstore_flutter/data/models/message.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reply_feed_back.g.dart';

abstract class ReplyFeedBack extends Message implements Built<ReplyFeedBack, ReplyFeedBackBuilder>  {


  ReplyFeedBack._();
  factory ReplyFeedBack([void Function(ReplyFeedBackBuilder) updates]) = _$ReplyFeedBack;

  Object toJson() {
    return serializers.serializeWith(ReplyFeedBack.serializer, this)!;
  }

  static ReplyFeedBack fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ReplyFeedBack.serializer, json)!;
  }

  static Serializer<ReplyFeedBack> get serializer => _$replyFeedBackSerializer;
}