import "dart:io";

import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

class AdaptiveFlatButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  AdaptiveFlatButton(this.title, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: onPressed,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: onPressed,
          );
  }
}
