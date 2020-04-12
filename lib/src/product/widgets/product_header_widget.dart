import 'package:flutter/material.dart';

class ProductHeaderWidget extends StatelessWidget {
  const ProductHeaderWidget({
    Key key,
    @required this.toggleProductSide,
    @required this.frontSelected,
  }) : super(key: key);

  final VoidCallback toggleProductSide;
  final bool frontSelected;

  bool isSmallScreen(context) => MediaQuery.of(context).size.height < 570;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *
          (isSmallScreen(context) ? 0.6 : 0.5),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: toggleProductSide,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: frontSelected ? 320 : 200,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: frontSelected ? 1 : 0.3,
                child: Image.asset('images/front-jacket.png'),
              ),
            ),
          ),
          GestureDetector(
            onTap: toggleProductSide,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: frontSelected ? 200 : 320,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: frontSelected ? 0.3 : 1,
                child: Image.asset('images/back-jacket.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
