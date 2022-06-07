import 'package:bookstore_flutter/data/models/author.dart';
import 'package:bookstore_flutter/data/models/bill.dart';
import 'package:bookstore_flutter/data/models/book.dart';
import 'package:bookstore_flutter/data/models/cart_item.dart';
import 'package:bookstore_flutter/data/models/lend.dart';
import 'package:bookstore_flutter/data/models/publisher.dart';
import 'package:bookstore_flutter/data/models/transporter.dart';
import 'package:bookstore_flutter/data/models/user.dart';
import 'package:bookstore_flutter/data/models/user_address.dart';
import 'package:bookstore_flutter/data/models/user_bank.dart';
import 'package:bookstore_flutter/data/models/voucher.dart';
import 'package:bookstore_flutter/data/models/voucher_profile.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'model_remote.g.dart';

@RestApi(baseUrl: "https://bookstore-flutter.herokuapp.com/api/v1/")
abstract class ModelRemote {

  factory ModelRemote(Dio dio, {String baseUrl}) = _ModelRemote;
  //User
  @GET("/api/model/user")
  Future<List<User>> getUsers();

  @GET("api/mode/user/self")
  Future<User> getSelfUser();

  @GET("/api/model/user/{id}")
  Future<User> getUser(@Path("id") String id);

  //Author
  @GET("/api/author/{id}")
  Future<Author> getAuthor(@Path("id") int id);

  @GET("/api/author")
  Future<List<Author>> getAuthors();

  //Book
  @GET("/api/book/search")
  Future<List<Book>> getBooks();

  @GET("/api/book/info/{id}")
  Future<Book> getBook(@Path("id") String id);

  //Publisher
  @GET("/api/publisher/{id}")
  Future<Publisher> getPublisher(@Path("id") int id);

  void deletePublisher(@Path("id") int id);

  @GET("/api/publisher")
  Future<List<Publisher>> getPublishers();

  //Transporter
  @GET("/api/transporter/{id}")
  Future<Transporter> getTransporter(@Path("id") int id);

  @GET("/api/transporter")
  Future<List<Transporter>> getTransporters();

  //User
  //RecentBook
  @GET("/api/user/recent/{user_id}")
  Future<List<Book>> getRecentBooks(@Path("user_id") String user_id);

  /**
   *
   * Tạo hoặc cập nhật một sách gần đây
   *
   * @param user_id
   * @param request
   * @return
   */
  @POST("/api/user/recent/{user_id}")
  Future<Book> createRecentBook(@Path("user_id") String user_id, @Body RecentBookCRUDRequest request);

  //FavoriteBook
  @GET("/api/user/favourites/{user_id}")
  Future<List<Book>> getFavoriteBooks(@Path("user_id") String user_id);

  /**
   *
   * Tạo hoặc cập nhật một sách yêu thích
   *
   * @param user_id
   * @param request
   * @return
   */
  @POST("/api/user/favourite/{user_id}")
  Future<Book> createFavoriteBook(@Path("user_id") String user_id, @Body FavouriteBookCRUDRequest request);

  @DELETE("/api/user/favourite/{user_id}")
  void deleteFavoriteBook(@Path("user_id") String user_id, @Body FavouriteBookCRUDRequest request);
  //CartItem
  @GET("/api/user/carts/{user_id}")
  Future<List<CartItem>> getCarts(@Path("user_id") String user_id);

  /**
   *
   * Tạo hoặc cập nhật CartItem
   *
   * @param user_id
   * @param cartItem
   * @return
   */
  @POST("/api/user/cart/{user_id}")
  Future<CartItem> createCart(@Path("user_id") String user_id, @Body CartItem cartItem);

  @DELETE("/api/user/cart/{user_id}")
  void deleteCart(@Path("user_id") String user_id, @Body String book_id);

  //Bill
  @GET("/api/bill/{id}")
  Future<Bill> getBill(@Path("id") int id);

  @GET("/api/user/bill/{user_id}")
  Future<List<Bill>> getBills(@Path("user_id") String user_id);

  @POST("/api/user/bill/{user_id}")
  Future<Bill> createBill(@Path("user_id") String user_id);

  /**
   *
   * Cancel order
   *
   * @param user_id
   * @param billId
   */
  @DELETE("/api/user/bill/{user_id}")
  void deleteBill(@Path("user_id") String user_id, int billId);

  //Address
  @GET("/api/user/addresses/{user_id}")
  Future<List<UserAddress>> getAddresses(@Path("user_id") String user_id);

  @POST("/api/user/address/{user_id}")
  Future<UserAddress> createAddress(@Path("user_id") String user_id, @Body UserAddressCRUDRequest address);

  @DELETE("/api/user/address/{user_id}")
  void deleteAddress(@Path("user_id") String user_id, @Body Date date);

  //Bank
  @GET("/api/user/banks/{user_id}")
  Future<List<UserBank>> getBanks(@Path("user_id") String user_id);

  @POST("/api/user/bank/{user_id}")
  Future<UserBank> createBank(@Path("user_id") String user_id, @Body UserBankCRUDRequest bank);

  @DELETE("/api/user/bank/{user_id}")
  void deleteBank(@Path("user_id") String user_id, @Body Date date);

  //Lend
  @GET("/api/user/lends/{user_id}")
  Future<List<Lend>> getLends(@Path("user_id") String user_id);

  @POST("/api/user/lend/{user_id}")
  Future<Lend> createLend(@Path("user_id") String user_id, @Body LendRequest request);

  @DELETE("/api/user/lend/{user_id}")
  void deleteLend(@Path("user_id") String user_id);

  //Voucher
  @GET("/api/user/vouchers/{user_id}")
  Future<List<Voucher>> getVouchers(@Path("user_id") String user_id);

  @GET("/api/user/vouchers/{id}")
  Future<VoucherProfile> getVoucherProfile(@Path("id") String id);
}