import 'package:athkrony/sebha_screens/estghfr_zekr.dart';
import 'package:athkrony/sebha_screens/hamd_zekr.dart';
import 'package:athkrony/sebha_screens/takber_zekr.dart';
import 'package:athkrony/sebha_screens/tasbeh_zekr.dart';
import 'package:athkrony/sebha_screens/thlil_zekr.dart';
import 'package:flutter/material.dart';

class SebhaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MQW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'سبحة',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        iconTheme: IconThemeData(color: Theme.of(context).accentColor),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: Card(
                color: Colors.white,
                elevation: 2.5,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => EstghfrZekr()));
                  },
                  title: Text( 'أستغفار',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: MQW * 0.06),
                  ),
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: Card(
                color: Colors.white,
                elevation: 2.5,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => TahlilZekr()));
                  },
                  title: Text( 'تهليل',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: MQW * 0.06),
                  ),
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: Card(
                color: Colors.white,
                elevation: 2.5,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => TakberZekr()));
                  },
                  title: Text('تكبير',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: MQW * 0.06),
                  ),
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: Card(
                color: Colors.white,
                elevation: 2.5,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => TasbehZekr()));
                  },
                  title: Text('تسبيح',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: MQW * 0.06),
                  ),
                ),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: Card(
                color: Colors.white,
                elevation: 2.5,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => HamdZekr()));
                  },
                  title: Text('حمد',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: MQW * 0.06),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}