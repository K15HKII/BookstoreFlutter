import 'package:bookstore_flutter/data/models/bill/bill.dart';
import 'package:bookstore_flutter/data/models/bill/bill_detail.dart';
import 'package:bookstore_flutter/data/models/bill/storage_log.dart';
import 'package:bookstore_flutter/data/models/bill/storage_log_detail.dart';
import 'package:bookstore_flutter/data/models/message/audio.dart';
import 'package:bookstore_flutter/data/models/message/document.dart';
import 'package:bookstore_flutter/data/models/message/feedback.dart';
import 'package:bookstore_flutter/data/models/message/file.dart';
import 'package:bookstore_flutter/data/models/message/message.dart';
import 'package:bookstore_flutter/data/models/user/cart_item_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/user/favourite_book_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/lend/lend.dart';
import 'package:bookstore_flutter/data/models/message/media.dart';
import 'package:bookstore_flutter/data/models/user/recent_book.dart';
import 'package:bookstore_flutter/data/models/user/recent_book_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/message/reply_feed_back.dart';
import 'package:bookstore_flutter/data/models/transport.dart';
import 'package:bookstore_flutter/data/models/auth/login_request.dart';
import 'package:bookstore_flutter/data/models/auth/login_response.dart';
import 'package:bookstore_flutter/data/models/author.dart';
import 'package:bookstore_flutter/data/models/publisher.dart';
import 'package:bookstore_flutter/data/models/transporter.dart';
import 'package:bookstore_flutter/data/models/user/user.dart';
import 'package:bookstore_flutter/data/models/user/user_address.dart';
import 'package:bookstore_flutter/data/models/user/user_address_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/user/user_bank.dart';
import 'package:bookstore_flutter/data/models/user/user_bank_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/message/video.dart';
import 'package:bookstore_flutter/data/models/voucher/base_voucher.dart';
import 'package:bookstore_flutter/data/models/voucher/book_tag_voucher.dart';
import 'package:bookstore_flutter/data/models/voucher/voucher.dart';
import 'package:bookstore_flutter/data/models/voucher/voucher_profile.dart';
import 'package:bookstore_flutter/data/models/voucher/wild_voucher.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter/material.dart';

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
  RecentBookCRUDRequest,
  UserAddressCrudRequest,
  UserBankCrudRequest
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();