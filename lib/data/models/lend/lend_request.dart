import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lend_request.g.dart';

abstract class LendRequest implements Built<LendRequest, LendRequestBuilder> {

  LendRequest._();
  factory LendRequest([void Function(LendRequestBuilder) updates]) = _$LendRequest;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(LendRequest.serializer, this)! as Map<String, dynamic>;
  }

  static LendRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(LendRequest.serializer, json)!;
  }

  static Serializer<LendRequest> get serializer => _$lendRequestSerializer;
}