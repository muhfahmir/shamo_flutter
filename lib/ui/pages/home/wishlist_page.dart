import 'package:flutter/material.dart';
import 'package:shamo_apps/shared/theme.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Wishlist page',
        style: primaryTextStyle,
      ),
    );
  }
}
