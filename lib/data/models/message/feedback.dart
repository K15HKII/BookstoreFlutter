import 'package:bookstore_flutter/data/models/message/reply_feed_back.dart';
import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'feedback.g.dart';

abstract class FeedBack implements Built<FeedBack, FeedBackBuilder> {

  @BuiltValueField(wireName: "replies")
  BuiltList<ReplyFeedBack> get replies;

  @BuiltValueField(wireName: "rating")
  double get rating;

  FeedBack._();
  factory FeedBack([void Function(FeedBackBuilder) updates]) = _$FeedBack;

  Object toJson() {
    return serializers.serializeWith(FeedBack.serializer, this)!;
  }

  static FeedBack fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(FeedBack.serializer, json)!;
  }

  static Serializer<FeedBack> get serializer => _$feedBackSerializer;
}