import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';



  // Fetch Speakers from Speaker API 

Future<Speaker> fetchSpeakers() async{
  final response = await http.get("http://127.0.0.1:5000/api/v1/speakers");
  if(response.statusCode == 200){
    return  Speaker.fromJson(json.decode(response.body));
   
    // var result = data['speakers'] as List;
    // List<Speaker> list = result.map<Speaker>((json) => Speaker.fromJson(json)).toList();
 
  }
  else{
    throw Exception("Could not load Speakers");
  }
}

class Speaker{
  final String firstName, lastName, email, companyName,description,jobTitle,socialAccount;
  // final double phone;

  // create constructor 
  Speaker({this.firstName,this.lastName,this.companyName,this.jobTitle,this.description,this.socialAccount,this.email
  });
  factory Speaker.fromJson(Map<String, dynamic>json){
    return Speaker(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email:json['email'],
      companyName: json['companyName'],
      jobTitle: json['jobTitle'],
      description:json['description'],
      // phone:json['phone'],
      socialAccount: json['socialAccount']
       );
  }
}

class MyApp extends StatefulWidget {
  
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}



// from dart web

class _MyAppState extends State<MyApp> {
  Future<Speaker> futureSpeaker;

  @override
  void initState() {
    super.initState();
    futureSpeaker = fetchSpeakers();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speakers List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('List of Speakers'),
        ),
        body: Center(
          child: FutureBuilder<Speaker>(
            future: futureSpeaker,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // return Text("$snapshot.data.firstName");
                return Container(child: Column(
                  children: [
                    Text("First name : ${snapshot.data.firstName}"),
                    Text("last Name: ${snapshot.data.lastName}"),
                    Text("company ${snapshot.data.companyName}"),
                    Text("Position: ${snapshot.data.jobTitle}"),
                    Text("Description: ${snapshot.data.description}")
                  ],
                ),);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

