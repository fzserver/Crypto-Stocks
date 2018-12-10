import 'package:cryptostocks/api.dart';
import 'package:flutter/material.dart';

class StocksList extends StatelessWidget {

  final List<Data> stockname;
  // Status stockname;

  StocksList({this.stockname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stocks"),
      ),
      body: Center(
        child: Text(("${stockname[0].name} = \$${stockname[0].quote.uSD.price}"),
        style: TextStyle(color: Colors.blueGrey,fontSize: 25, fontWeight: FontWeight.bold,),),
      ),
    );
  }
}