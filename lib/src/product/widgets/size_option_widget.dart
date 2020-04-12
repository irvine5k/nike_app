import 'package:flutter/material.dart';
import 'package:nike_app/src/app_colors.dart';

class SizeOptionWidget extends StatelessWidget {
  const SizeOptionWidget({
    Key key,
    this.size,
    this.index,
    this.currentIndex,
    this.onSelect,
  }) : super(key: key);

  final String size;
  final int index;
  final int currentIndex;
  final void Function(int) onSelect;

  bool get selected => index == currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          color: (selected ?? false) ? AppColors.backgroundColor : null,
        ),
        alignment: Alignment.center,
        height: 40,
        width: 40,
        child: Text(
          size ?? 'S',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
