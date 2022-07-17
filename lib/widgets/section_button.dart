import 'package:flutter/material.dart';

class SectionButton extends StatefulWidget {
  _SectionButtonState state;
  final String title;
  final Function onPressed;
  bool _isPressed = false;

  SectionButton({Key key, this.title, this.onPressed}) :
    super(key: key);

  bool get IsPressed {
    return _isPressed;
  } 

  @override
  State<SectionButton> createState() => state = _SectionButtonState();
}

class _SectionButtonState extends State<SectionButton> {

  void set IsPressed(bool val) {
    setState(() {
       widget._isPressed = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        textColor: widget.IsPressed ? Colors.blue : Colors.grey,
        onPressed: widget.onPressed,  
        child: Text(widget.title)
    );
  }
}