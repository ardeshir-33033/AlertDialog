import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertButton extends StatefulWidget {
  String title;
  Color buttonColor;
  Function(dynamic result) OnPressCallback;

  AlertButton({
    this.title,
    this.buttonColor,
    this.OnPressCallback,
  });

  @override
  _AlertButtonState createState() => _AlertButtonState();
}

class _AlertButtonState extends State<AlertButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: widget.buttonColor,
      onPressed: () {
        if (widget.OnPressCallback != null) {
          widget.OnPressCallback("");
        }
      },
      child: FittedBox(
          child:
              Text(widget.title, style: TextStyle(fontSize: 15 , fontWeight: FontWeight.normal) ?? "button")),
    );
  }
}
