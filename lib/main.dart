import 'package:flutter/material.dart';

import 'features/hacker_news/hn_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: hnTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        ],
      ),
    );
  }


  Widget hnCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 220,
              minHeight: 75,
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5  )),
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage("https://d.ibtimes.co.uk/en/full/1591650/hacking-computer.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text("Hello world", style: Theme.of(context).textTheme.headline3),
                )
              ],
            ),
          )
      ),
    );
  }
}
