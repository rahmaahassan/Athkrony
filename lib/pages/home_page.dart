import 'package:athkrony/pages/azkar_sabah_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'azkar_masaa_page.dart';
import 'sebha_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MQH = MediaQuery.of(context).size.height;
    final MQW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        )),
        height: MQH,
        width: MQW,
        child: Column(
          children: [
            SizedBox(
              height: MQH -450,
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Row(
                children: [
                  Expanded(
                    child: RaisedButton.icon(
                      color: Colors.black26,
                      disabledElevation: 10,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      icon: FaIcon(FontAwesomeIcons.solidMoon,
                          color: Theme.of(context).accentColor),
                      label: Text(
                        'ورد المساء',
                        style: TextStyle(
                          fontSize: MQW * 0.055,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => AzkarMasaaPage()));

                      },
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: RaisedButton.icon(
                      color: Colors.black26,
                      disabledElevation: 10,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      icon: FaIcon(FontAwesomeIcons.solidSun,
                          color: Theme.of(context).accentColor),
                      label: Text(
                        'ورد الصباح',
                        style: TextStyle(
                          fontSize: MQW * 0.054,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => AzkarSabahPage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton.icon(
              color: Colors.black26,
              disabledElevation: 10,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              icon: Icon(Icons.circle,
                  color: Theme.of(context).accentColor),
              label: Text(
                'سبحة',
                style: TextStyle(
                  fontSize: MQW * 0.055,
                  color: Theme.of(context).accentColor,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SebhaPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
