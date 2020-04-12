import 'package:flutter/material.dart';
import 'package:nike_app/src/product/widgets/bottom_button_widget.dart';
import 'package:nike_app/src/product/widgets/product_descriptions_widget.dart';

class BottomSheetContentWidget extends StatelessWidget {
  const BottomSheetContentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ProductionDescriptionWidget(),
            BottomButtonWidget(),
          ],
        ),
      ),
    );
  }
}
