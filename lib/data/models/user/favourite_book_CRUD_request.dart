import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'favourite_book_CRUD_request.g.dart';

abstract class FavouriteBookCrudRequest implements Built<FavouriteBookCrudRequest, FavouriteBookCrudRequestBuilder> {

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "selected")
  bool get selected;

  FavouriteBookCrudRequest._();
  factory FavouriteBookCrudRequest([void Function(FavouriteBookCrudRequestBuilder) updates]) = _$FavouriteBookCrudRequest;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(FavouriteBookCrudRequest.serializer, this)! as Map<String, dynamic>;
  }

  static FavouriteBookCrudRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(FavouriteBookCrudRequest.serializer, json)!;
  }

  static Serializer<FavouriteBookCrudRequest> get serializer => _$favouriteBookCrudRequestSerializer;
}