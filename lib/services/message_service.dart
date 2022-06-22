import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shamo_apps/models/message_model.dart';
import 'package:shamo_apps/models/product_model.dart';
import 'package:shamo_apps/models/user_model.dart';

class MessageService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<List<MessageModel>> getMessagesByUserId({
    required int userId,
  }) {
    try {
      return firestore
          .collection('messages')
          .where('userId', isEqualTo: userId)
          .snapshots()
          .map((QuerySnapshot list) {
        var result = list.docs.map<MessageModel>((DocumentSnapshot message) {
          // print(message.data());
          return MessageModel.fromJson(message.data() as Map<String, dynamic>);
        }).toList();

        result.sort(
          (MessageModel a, MessageModel b) =>
              a.createdAt.compareTo(b.createdAt),
        );

        return result;
      });
    } catch (e) {
      throw Exception('Tidak berhasil mendapatkan pesan!');
    }
  }

  Future<void> addMessage({
    required UserModel user,
    required isFromUser,
    required String message,
    ProductModel? product,
  }) async {
    try {
      firestore.collection('messages').add({
        'userId': user.id,
        'username': user.name,
        'userImage': user.profilePhotoUrl,
        'isFromUser': isFromUser ?? true,
        'message': message,
        'product':
            product is UninitializedProductModel ? {} : product!.toJson(),
        'createdAt': DateTime.now().toString(),
        'updatedAt': DateTime.now().toString(),
      });
      // .then((value) => print('Pesan berhasil dikirim'),);
    } catch (e) {
      throw Exception('Pesan gagal dikirim');
    }
  }
}
