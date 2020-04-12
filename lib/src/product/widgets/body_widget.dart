import 'package:flutter/material.dart';
import 'package:nike_app/src/app_colors.dart';
import 'package:nike_app/src/product/widgets/bottom_sheet_widget.dart';
import 'package:nike_app/src/product/widgets/product_header_widget.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
    this.frontSelected,
    this.selectedSizeOption,
    this.changeIndex,
    this.toggleProductSide,
  }) : super(key: key);

  final bool frontSelected;
  final int selectedSizeOption;
  final void Function(int) changeIndex;
  final VoidCallback toggleProductSide;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.backgroundColor,
        child: Stack(
          children: <Widget>[
            ProductHeaderWidget(
              toggleProductSide: toggleProductSide,
              frontSelected: frontSelected,
            ),
            BottomSheetWidget(
              selectedSizeOption: selectedSizeOption,
              changeIndex: changeIndex,
            ),
          ],
        ),
      ),
    );
  }
}
