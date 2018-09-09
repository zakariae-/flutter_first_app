import 'package:flutter/material.dart';

class AdresseTag extends StatelessWidget {
  final String adresse;

  AdresseTag(this.adresse);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(adresse),
    );
  }
}
