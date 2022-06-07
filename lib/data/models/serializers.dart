import 'package:bookstore_flutter/data/models/bill.dart';
import 'package:bookstore_flutter/data/models/auth/login_request.dart';
import 'package:bookstore_flutter/data/models/auth/login_response.dart';
import 'package:bookstore_flutter/data/models/author.dart';
import 'package:bookstore_flutter/data/models/publisher.dart';
import 'package:bookstore_flutter/data/models/transporter.dart';
import 'package:bookstore_flutter/data/models/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([
  LoginResponse,
  LoginRequest,

  User,
  Author,
  Publisher,
  Bill
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();