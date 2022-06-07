import 'package:bookstore_flutter/data/models/audio.dart';
import 'package:bookstore_flutter/data/models/base_voucher.dart';
import 'package:bookstore_flutter/data/models/bill_detail.dart';
import 'package:bookstore_flutter/data/models/book_tag_voucher.dart';
import 'package:bookstore_flutter/data/models/favourite_book_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/feed_back.dart';
import 'package:bookstore_flutter/data/models/lend.dart';
import 'package:bookstore_flutter/data/models/media.dart';
import 'package:bookstore_flutter/data/models/recent_book.dart';
import 'package:bookstore_flutter/data/models/recent_book_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/reply_feed_back.dart';
import 'package:bookstore_flutter/data/models/storage_log.dart';
import 'package:bookstore_flutter/data/models/storage_log_detail.dart';
import 'package:bookstore_flutter/data/models/transport.dart';
import 'package:bookstore_flutter/data/models/bill.dart';
import 'package:bookstore_flutter/data/models/auth/login_request.dart';
import 'package:bookstore_flutter/data/models/auth/login_response.dart';
import 'package:bookstore_flutter/data/models/author.dart';
import 'package:bookstore_flutter/data/models/publisher.dart';
import 'package:bookstore_flutter/data/models/transporter.dart';
import 'package:bookstore_flutter/data/models/user.dart';
import 'package:bookstore_flutter/data/models/user_address.dart';
import 'package:bookstore_flutter/data/models/user_address_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/user_bank.dart';
import 'package:bookstore_flutter/data/models/user_bank_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/video.dart';
import 'package:bookstore_flutter/data/models/voucher.dart';
import 'package:bookstore_flutter/data/models/voucher_profile.dart';
import 'package:bookstore_flutter/data/models/wild_voucher.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter/material.dart';
import 'document.dart';
import 'file.dart';
import 'message.dart';
import 'cart_item_CRUD_request.dart';

import 'book.dart';


part 'serializers.g.dart';

@SerializersFor([
  LoginResponse,
  LoginRequest,

  User,
  Author,
  Publisher,
  Bill,
  Transport,
  BillDetail,
  Voucher,
  VoucherProfile,
  UserAddress,
  Transporter,
  WildVoucher,
  RecentBook,
  BaseVoucher,
  Book,
  Image,
  Video,
  Document,
  FeedBack,
  File,
  Message,
  ReplyFeedBack,
  Media,
  Audio,
  UserBank,
  BookTagVoucher,
  Lend,
  StorageLog,
  StorageLogDetail,
  CartItemCrudRequest,
  FavouriteBookCrudRequest,
  RecentBookCrudRequest,
  UserAddressCrudRequest,
  UserBankCrudRequest
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();