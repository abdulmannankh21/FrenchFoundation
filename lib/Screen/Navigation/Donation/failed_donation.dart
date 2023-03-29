import 'package:flutter/material.dart';

void showFailedPopup(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Nous sommes désolés de vous informer que votre don n'a pas été traité avec succès. Il semble qu'il y ait eu un problème avec votre paiement."),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("Nous comprenons que cela puisse être frustrant, mais sachez que nous apprécions votre soutien et votre aide à cet égard."),
              Text("Veuillez vérifier les détails de votre paiement et réessayer ou contactez-nous si vous avez besoin d'aide."),
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