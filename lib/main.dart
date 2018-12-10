import 'package:cryptostocks/about.dart';
import 'package:cryptostocks/api.dart';
import 'package:cryptostocks/settings.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
// import 'package:cryptostocks/stocks_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter_fbaudience_network/flutter_fbaudience_network.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics analytics = FirebaseAnalytics();
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics),],
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

String url = "https://apis-223116.appspot.com/";
StocksAPI stocksData;
final List<MaterialColor> _colors = [Colors.blue, Colors.indigo, Colors.red];
//  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//    testDevices: <String>[],
//    keywords: <String>['Stocks', 'Crypto', 'CryptoCurrencies'],
//    childDirected: false,
//  );

// Ads
//  BannerAd bannerAd;
// InterstitialAd _interstitialAd;

// Widget stocks(){
//   return Center(child: RaisedButton(color: Colors.blueGrey,
//   onPressed: (){
//     Navigator.push(context, MaterialPageRoute(builder: (context) => StocksList(stockname: stocksData.data,)));
//   },
//   child: Text("Stocks List",
//   style: TextStyle(color: Colors.white),),));
// }

Widget stocks() => 
    Container(
      child: Column(
        children: <Widget>[
          Flexible(child: ListView.builder(
          itemCount: stocksData.data.length,
          itemBuilder: (BuildContext context, int index) {
            if (index % 5 == 0 && index != 0) {
              bool last = stocksData.data.length == (index+1);
              final Data stock = stocksData.data[index];
              final MaterialColor color = _colors[index % _colors.length];
              return last ? new Container(padding: EdgeInsets.only(bottom: 40.0),
              child: _getListItemUi(stock, color, true),) : _getListItemUi(stock, color, true);
            } else {
              bool last = stocksData.data.length == (index+1);
              final Data stock = stocksData.data[index];
              final MaterialColor color = _colors[index % _colors.length];
              return last ? new Container(padding: EdgeInsets.only(bottom: 40.0),
              child: _getListItemUi(stock, color, false),) : _getListItemUi(stock, color, false);
            }
            },
        ),
        ),
      ],
      )
    );

Widget _getListItemUi(Data stock, MaterialColor color, bool ad) {
          if (ad == true) {
            return Container(
              child: Column(
              children: <Widget>[ 
                FBNativeBannerAd(
                  placementID: "308889696620558_308900983286096",
                  padding: EdgeInsets.all(8.0),
                  style: AdStyle(
                    titleColor: Colors.pink,
                    socialTextColor: Colors.blueGrey,
                    backgroundColor: Colors.white
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(backgroundColor: color, child: Text(stock.name[0]),),
                  title: Text(stock.name, style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: _getSubTitle(stock.quote.uSD.price, stock.quote.uSD.percentChange1h),
                  isThreeLine: true,
                ),
              ]
              ),
            );
          } else {
            return ListTile(
              leading: CircleAvatar(backgroundColor: color, child: Text(stock.name[0]),),
              title: Text(stock.name, style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: _getSubTitle(stock.quote.uSD.price, stock.quote.uSD.percentChange1h),
              isThreeLine: true,
            );
          }
}

Widget _getSubTitle(double price, double percentageChange1h) {
  TextSpan priceText = TextSpan(text: "\$$price\n", style: TextStyle(color: Colors.black));
  String percentageChangeText = "1 hour: $percentageChange1h%";
  TextSpan percentageChangeTextWidget;
  percentageChange1h > 0 ? percentageChangeTextWidget = TextSpan(text: percentageChangeText, style: TextStyle(color: Colors.green))
  : percentageChangeTextWidget = TextSpan(text: percentageChangeText, style: TextStyle(color: Colors.red));

  return RichText(
    text: TextSpan(
      children: [priceText, percentageChangeTextWidget]
    ),
  );
}

Widget myBody(){
  return stocksData==null?Center(child: CircularProgressIndicator(),)
  : stocks();
}

  //  BannerAd createBannerAd() =>
  //    BannerAd(
  //      adUnitId: 'ca-app-pub-7600031190372955/8496524276',
  //      size: AdSize.banner,
  //      targetingInfo: targetingInfo,
  //      listener: (MobileAdEvent event){
  //        print('Banner Event: $event');
  //      }
  //    );

  // InterstitialAd createInterstitialAd() =>
  //   InterstitialAd(
  //     adUnitId: 'ca-app-pub-7600031190372955/8044066899',
  //     targetingInfo: targetingInfo,
  //     listener: (MobileAdEvent event){
  //       print('Interstitial Event: $event');
  //     }
  //   );

@override
void initState() {
    super.initState();
    // FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-7600031190372955~4233772250');
    // bannerAd = createBannerAd()..load();
    
    fetchData();
  }

  @override
  void dispose() {
    // bannerAd?.dispose();
    super.dispose();
  }

  fetchData() async{
    var res = await http.get(url);
    var decodedRes = jsonDecode(res.body);
    // print(decodedRes); // Checking JSON Code is received or not.
    stocksData = StocksAPI.fromJson(decodedRes);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // bannerAd..show();
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Stocks'),
        actions: <Widget>[
          PopupMenuButton<MenuItems>(
            elevation: 3.0,
            onCanceled: () => {},
            tooltip: "Menu",
            onSelected: selectedMenuItem,
            itemBuilder: (BuildContext context){
              return menu.map((MenuItems menuItem) {
                return PopupMenuItem<MenuItems> (
                  value: menuItem,
                  child: Text(menuItem.title),
                );
              }).toList();
            },
          ),
          Padding(padding: const EdgeInsets.only(right: 2.0),)
          ],
      ),
      body: myBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 42.0),
        child: FloatingActionButton(
          onPressed: () {
            fetchData();
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
  void selectedMenuItem(MenuItems menu) {
  // print(menu.id);
  if(menu.id == 0){
    Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
  }
  else {
    if(menu.id == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
    }
  }
  
}
}

class MenuItems {
  const MenuItems({this.id, this.title});
  final String title;
  final int id;
}

const List<MenuItems> menu = const <MenuItems>[
  const MenuItems(id: 0, title: 'About'),
  const MenuItems(id: 1, title: 'Settings'),
];