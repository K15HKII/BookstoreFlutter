import 'package:bookstore_flutter/data/models/author.dart';
import 'package:bookstore_flutter/data/models/bill/bill.dart';
import 'package:bookstore_flutter/data/models/book.dart';
import 'package:bookstore_flutter/data/models/lend/lend.dart';
import 'package:bookstore_flutter/data/models/lend/lend_request.dart';
import 'package:bookstore_flutter/data/models/publisher.dart';
import 'package:bookstore_flutter/data/models/transporter.dart';
import 'package:bookstore_flutter/data/models/user/cart_item.dart';
import 'package:bookstore_flutter/data/models/user/favourite_book_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/user/recent_book_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/user/user.dart';
import 'package:bookstore_flutter/data/models/user/user_address.dart';
import 'package:bookstore_flutter/data/models/user/user_address_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/user/user_bank.dart';
import 'package:bookstore_flutter/data/models/user/user_bank_CRUD_request.dart';
import 'package:bookstore_flutter/data/models/voucher/voucher.dart';
import 'package:bookstore_flutter/data/models/voucher/voucher_profile.dart';
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

  @DELETE("/api/publisher/{id}")
  Future<void> deletePublisher(@Path("id") int id);

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
  Future<Book> createRecentBook(@Path("user_id") String user_id, @Body() RecentBookCRUDRequest request);

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
  Future<Book> createFavoriteBook(@Path("user_id") String user_id, @Body() FavouriteBookCrudRequest request);

  @DELETE("/api/user/favourite/{user_id}")
  Future<void> deleteFavoriteBook(@Path("user_id") String user_id, @Body() FavouriteBookCrudRequest request);
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
  Future<CartItem> createCart(@Path("user_id") String user_id, @Body() CartItem cartItem);

  @DELETE("/api/user/cart/{user_id}/{book_id}")
  Future<void> deleteCart(@Path("user_id") String user_id, @Path("book_id") String book_id);

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
  Future<void> deleteBill(@Path("user_id") String user_id, int billId);

  //Address
  @GET("/api/user/addresses/{user_id}")
  Future<List<UserAddress>> getAddresses(@Path("user_id") String user_id);

  @POST("/api/user/address/{user_id}")
  Future<UserAddress> createAddress(@Path("user_id") String user_id, @Body() UserAddressCrudRequest address);

  @DELETE("/api/user/address/{user_id}/{time_id}")
  Future<void> deleteAddress(@Path("user_id") String user_id, @Path("time_id") int id);

  //Bank
  @GET("/api/user/banks/{user_id}")
  Future<List<UserBank>> getBanks(@Path("user_id") String user_id);

  @POST("/api/user/bank/{user_id}")
  Future<UserBank> createBank(@Path("user_id") String user_id, @Body() UserBankCrudRequest bank);

  @DELETE("/api/user/bank/{user_id}/{time_id}")
  Future<void> deleteBank(@Path("user_id") String user_id, @Path("time_id") int i);

  //Lend
  @GET("/api/user/lends/{user_id}")
  Future<List<Lend>> getLends(@Path("user_id") String user_id);

  @POST("/api/user/lend/{user_id}")
  Future<Lend> createLend(@Path("user_id") String user_id, @Body() LendRequest request); //TODO: LendRequest

  @DELETE("/api/user/lend/{user_id}")
  Future<void> deleteLend(@Path("user_id") String user_id);

  //Voucher
  @GET("/api/user/vouchers/{user_id}")
  Future<List<Voucher>> getVouchers(@Path("user_id") String user_id);

  @GET("/api/user/vouchers/{id}")
  Future<VoucherProfile> getVoucherProfile(@Path("id") String id);
}