import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nike_app/src/product/product_page.dart';
import 'package:nike_app/src/product/widgets/bottom_sheet_content_widget.dart';
import 'package:nike_app/src/product/widgets/size_options_row_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    Key key,
    @required this.selectedSizeOption,
    @required this.changeIndex,
  }) : super(key: key);

  final int selectedSizeOption;
  final void Function(int) changeIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 7.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100.withOpacity(0.3),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Column(
                  children: <Widget>[
                    SizeOptionsRowWidget(
                      selectedSizeOption: selectedSizeOption,
                      changeIndex: changeIndex,
                    ),
                    BottomSheetContentWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
