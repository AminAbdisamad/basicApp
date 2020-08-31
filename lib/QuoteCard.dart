import 'package:flutter/material.dart';
import "Quote.dart";

class QuoteCard extends StatelessWidget {
 
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});

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
            ),
            SizedBox(height:8.0),
            SizedBox(
              height: 40.0,
              width: 40.0,
              child: FloatingActionButton(onPressed: delete,
              backgroundColor: Colors.red[300],
              child: Icon(Icons.delete),

            ),
            ),
            
          ],
        ),
      ),
    );

  }
}
