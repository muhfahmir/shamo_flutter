import 'package:flutter/material.dart';

class FamiliarShoesCard extends StatelessWidget {
  final String imageUrl;
  const FamiliarShoesCard({Key? key, this.imageUrl = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
