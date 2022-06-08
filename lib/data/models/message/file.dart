import 'package:bookstore_flutter/data/models/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file.g.dart';

abstract class AbstractFile {

  @BuiltValueField(wireName: "id")
  String get id;

  @BuiltValueField(wireName: "name")
  String get name;

  @BuiltValueField(wireName: "path")
  String get path;

}

abstract class File implements AbstractFile, Built<File, FileBuilder> {

  File._();
  factory File([void Function(FileBuilder) updates]) = _$File;

  Object toJson() {
    return serializers.serializeWith(File.serializer, this)!;
  }

  static File fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(File.serializer, json)!;
  }

  static Serializer<File> get serializer => _$fileSerializer;
}