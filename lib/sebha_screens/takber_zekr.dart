import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TakberZekr extends StatefulWidget {

  @override
  _TakberZekrState createState() => _TakberZekrState();
}

class _TakberZekrState extends State<TakberZekr> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  //Loading counter value on start
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter3') ?? 0);
    });
  }

  //Incrementing counter after click
  _incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter3') ?? 0) + 1;
      prefs.setInt('counter3', _counter);
    });
  }

  void _resetCount() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = 0;
      prefs.remove('counter3');
    });
  }

  @override
  Widget build(BuildContext context) {
    final MQW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('تكبير',
            style: TextStyle(
              color: Theme.of(context).accentColor,
            )),
        iconTheme: IconThemeData(color: Theme.of(context).accentColor),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'اللّه اكبر',
              style: TextStyle(fontSize: MQW * 0.09, color: Colors.blueGrey),
            ),
            Text(
              '$_counter', // ignore: deprecated_member_use
              style: TextStyle(fontSize: MQW * 0.09, color: Colors.blueGrey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: InkWell(
                        child: Image.asset(
                          'assets/images/sebha.jpg',
                        ),
                        onTap: _incrementCounter),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCount,
        tooltip: 'refresh',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
