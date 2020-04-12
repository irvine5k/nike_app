import 'package:flutter/material.dart';
import 'package:nike_app/src/app_colors.dart';
import 'package:nike_app/src/product/widgets/body_widget.dart';
import 'package:nike_app/src/product/widgets/custom_app_bar_widget.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool frontSelected = true;
  int index = 0;

  void changeIndex(int value) => setState(
        () => index = value,
      );

  void toggleSideSelected() => setState(() => frontSelected = !frontSelected);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundColor,
      child: Column(
        children: <Widget>[
          CustomAppBarWidget(),
          BodyWidget(
            changeIndex: changeIndex,
            toggleProductSide: toggleSideSelected,
            selectedSizeOption: index,
            frontSelected: frontSelected,
          )
        ],
      ),
    );
  }
}
