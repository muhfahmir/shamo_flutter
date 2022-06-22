import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shamo_apps/models/message_model.dart';
import 'package:shamo_apps/models/product_model.dart';
import 'package:shamo_apps/shared/theme.dart';
import 'package:shamo_apps/ui/pages/detail_chat_page.dart';

class ChatTile extends StatelessWidget {
  final MessageModel? message;
  const ChatTile({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailChatpage(
              product: UninitializedProductModel(),
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    message!.userImage,
                    width: 54,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        message!.username,
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        message!.message,
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  DateFormat('dd-MM-yyyy').format(message!.updatedAt),
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff282939),
            ),
          ],
        ),
      ),
    );
  }
}
