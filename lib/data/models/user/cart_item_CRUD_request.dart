import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cart_item_CRUD_request.g.dart';

abstract class CartItemCrudRequest implements Built<CartItemCrudRequest, CartItemCrudRequestBuilder> {

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "quantity")
  int get quantity;

  @BuiltValueField(wireName: "selected")
  bool get selected;

  CartItemCrudRequest._();
  factory CartItemCrudRequest([void Function(CartItemCrudRequestBuilder) updates]) = _$CartItemCrudRequest;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CartItemCrudRequest.serializer, this)! as Map<String, dynamic>;
  }

  static CartItemCrudRequest fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CartItemCrudRequest.serializer, json)!;
  }

  static Serializer<CartItemCrudRequest> get serializer => _$cartItemCrudRequestSerializer;
}