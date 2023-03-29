import 'package:flutter/material.dart';

void showSuccessPopup(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Merci beaucoup pour votre généreux don."),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Votre soutien est très apprécié et fera une réelle différence dans la vie des personnes dans le besoin.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}