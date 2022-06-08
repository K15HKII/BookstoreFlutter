import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../book.dart';

part 'cart_item.g.dart';

abstract class CartItem implements Built<CartItem, CartItemBuilder> {

  @BuiltValueField(wireName: "user_id")
  String get userId;

  @BuiltValueField(wireName: "book_id")
  String get bookId;

  @BuiltValueField(wireName: "book")
  Book get book;

  @BuiltValueField(wireName: "selected")
  bool get selected;

  CartItem._();
  factory CartItem([void Function(CartItemBuilder) updates]) = _$CartItem;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CartItem.serializer, this)! as Map<String, dynamic>;
  }

  static CartItem fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CartItem.serializer, json)!;
  }

  static Serializer<CartItem> get serializer => _$cartItemSerializer;
}