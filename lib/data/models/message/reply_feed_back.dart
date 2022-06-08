import 'package:bookstore_flutter/data/models/message/message.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reply_feed_back.g.dart';

abstract class ReplyFeedBack extends Object with AbstractMessage implements Built<ReplyFeedBack, ReplyFeedBackBuilder>  {

  ReplyFeedBack._();
  factory ReplyFeedBack([void Function(ReplyFeedBackBuilder) updates]) = _$ReplyFeedBack;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ReplyFeedBack.serializer, this)! as Map<String, dynamic>;
  }

  static ReplyFeedBack fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ReplyFeedBack.serializer, json)!;
  }

  static Serializer<ReplyFeedBack> get serializer => _$replyFeedBackSerializer;

}