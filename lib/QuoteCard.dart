import 'package:flutter/material.dart';
import "Quote.dart";

class QuoteCard extends StatelessWidget {
 
  final Quote quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children:[
            Text(quote.text,
            style:TextStyle(
              color: Colors.grey[850],
              fontSize: 16.0,

            )),
            Text(quote.author,
            style:TextStyle(
              color:Colors.grey[900],
              fontWeight: FontWeight.bold
              
            )
            )
          ],
        ),
      ),
    );

  }
}
