import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: aboutBody()
    );
  }
}

Widget aboutBody() =>
  SingleChildScrollView( 
    child: Card(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('assets/crypto_icon.jpg'),
          ),
          SizedBox(height: 10.0,),
          Text('Crypto Stocks', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w300, color: Colors.pinkAccent,),),
          SizedBox(height: 10.0,),
          Text('This app is to show the latest crypto-currencies stocks in real-time.', 
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black),),
        ],
      ),
    )
  )
  );