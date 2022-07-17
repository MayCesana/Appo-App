import 'package:flutter/material.dart';

class WrapInkWell extends StatelessWidget {
  final Widget child;
  final Function itemClicked;

  WrapInkWell(this.child, this.itemClicked);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: itemClicked,
      child: child
    );
  }
}