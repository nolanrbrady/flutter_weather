import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Weather App',
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new MyHomePage(title: 'Flutter Weather'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
          backgroundColor: Colors.blueGrey,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: new Stack(
                        children: <Widget>[
                          new Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Boulder',
                                  style: new TextStyle(fontSize: 20.0)),
                              Text('95 degrees',
                                  style: new TextStyle(fontSize: 20.0)),
                              Image.network(
                                  'https://openweathermap.org/img/w/01d.png'),
                              Text('July 07, 2018',
                                  style: new TextStyle(color: Colors.black)),
                              Text('18:30',
                                  style: new TextStyle(color: Colors.black)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                        height: 200.0,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Boulder', style: new TextStyle(fontSize: 20.0)),
                                        Text('95 degrees', style: new TextStyle(fontSize: 20.0)),
                                        Image.network('https://openweathermap.org/img/w/01d.png'),
                                        Text('July 07, 2018', style: new TextStyle(color: Colors.black)),
                                        Text('18:30', style: new TextStyle(color: Colors.black)),
                                      ],
                                    ),
                                  ),
                                )))),
              )
            ],
          ),
        ));
  }
}
