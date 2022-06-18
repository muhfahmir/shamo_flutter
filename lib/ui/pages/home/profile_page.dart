import 'package:flutter/material.dart';
import 'package:shamo_apps/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile page',
        style: primaryTextStyle,
      ),
    );
  }
}
