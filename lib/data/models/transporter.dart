import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transporter.g.dart';

abstract class Transporter implements Built<Transporter, TransporterBuilder> {

  @BuiltValueField(wireName: "id")
  int get id;

  @BuiltValueField(wireName: "name")
  String get name;

  @BuiltValueField(wireName: "description")
  String get description;

  Transporter._();
  factory Transporter([void Function(TransporterBuilder) updates]) = _$Transporter;

  Object toJson() {
    return serializers.serializeWith(Transporter.serializer, this)!;
  }

  static Transporter fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Transporter.serializer, json)!;
  }

  static Serializer<Transporter> get serializer => _$transporterSerializer;
}