import 'package:flutter/material.dart';
import 'package:nike_app/src/product/widgets/size_option_widget.dart';

class SizeOptionsRowWidget extends StatelessWidget {
  const SizeOptionsRowWidget({
    Key key,
    @required this.selectedSizeOption,
    @required this.changeIndex,
  }) : super(key: key);

  final int selectedSizeOption;
  final void Function(int) changeIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizeOptionWidget(
          index: 0,
          currentIndex: selectedSizeOption,
          size: 'S',
          onSelect: changeIndex,
        ),
        SizeOptionWidget(
          index: 1,
          currentIndex: selectedSizeOption,
          size: 'M',
          onSelect: changeIndex,
        ),
        SizeOptionWidget(
          index: 2,
          currentIndex: selectedSizeOption,
          size: 'L',
          onSelect: changeIndex,
        ),
        SizeOptionWidget(
          index: 3,
          currentIndex: selectedSizeOption,
          size: 'XL',
          onSelect: changeIndex,
        ),
        SizeOptionWidget(
          index: 4,
          currentIndex: selectedSizeOption,
          size: '2XL',
          onSelect: changeIndex,
        ),
        SizeOptionWidget(
          index: 5,
          currentIndex: selectedSizeOption,
          size: '3XL',
          onSelect: changeIndex,
        ),
      ],
    );
  }
}
