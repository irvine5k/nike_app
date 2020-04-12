import 'package:flutter/material.dart';
import 'package:nike_app/src/app_colors.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10,
          right: 20,
          left: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.short_text,
                color: Colors.black,
                size: 40,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              child: Image.asset(
                'images/nike-logo.png',
              ),
            ),
            CircleAvatar(
              backgroundColor: AppColors.backgroundColor,
              backgroundImage: AssetImage('images/perfil-image.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
