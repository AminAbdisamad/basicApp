import 'package:flutter/material.dart';
import "Quote.dart";
import "QuoteCard.dart";

void main() => runApp(MaterialApp(
    home:Quotes(),
  ));

class Quotes extends StatefulWidget {
  Quotes({Key key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  // Create List of Quotes
  List<Quote> quotes = [
   Quote(text: "I Waan up and realized life is great and people are awesome and life is worth living",author: "Hulk Hogan"),
   Quote(text: "I’m a person who gets better with practice. Getting older is awesome – because you get more practice",author: "Zooey Deschanel"),
   Quote(text: "I think it’s awesome to see people of all different ages from all kinds of backgrounds come together for the love of music",author: "Miranda Lambert"),
   Quote(text: "Every man dies, but not every man really lives",author: "Braveheart"),
   Quote(text:"It’s the imperfections that make things beautiful",author:"Jenny Han"),

  ];
  // Card Template
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.deepOrange[900],
       
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: quotes.map((quote)=> QuoteCard(
            quote: quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
            }
            
            )).toList(),
        ),
      )
    );
  }
}

