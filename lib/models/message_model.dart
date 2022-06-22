import 'package:shamo_apps/models/product_model.dart';

class MessageModel {
  late String message;
  late int userId;
  late String username;
  late String userImage;
  bool isFromUser = true;
  ProductModel? product;
  late DateTime createdAt;
  late DateTime updatedAt;

  MessageModel({
    required this.message,
    required this.userId,
    required this.username,
    required this.userImage,
    this.isFromUser = true,
    this.product,
    required this.createdAt,
    required this.updatedAt,
  });

  MessageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userId = json['userId'];
    username = json['username'];
    userImage = json['userImage'];
    isFromUser = json['isFromUser'];
    product = json['product'].isEmpty
        ? UninitializedProductModel()
        : ProductModel.fromJson(json['product']);
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userId': userId,
      'username': username,
      'userImage': userImage,
      'isFromUser': isFromUser,
      'product': product is UninitializedProductModel ? {} : product!.toJson(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString(),
    };
  }
}
