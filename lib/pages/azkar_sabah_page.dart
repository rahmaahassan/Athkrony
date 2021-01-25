import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:share/share.dart';

class AzkarSabahPage extends StatefulWidget {
  @override
  _AzkarSabahPageState createState() => _AzkarSabahPageState();
}

class _AzkarSabahPageState extends State<AzkarSabahPage> {
  ScrollController _scrollController = ScrollController();
  Color appBarBackground;
  double topPosition;
  @override
  void initState() {
    topPosition = -80;
    appBarBackground = Colors.transparent;
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  _onScroll() {
    if (_scrollController.offset > 50) {
      if (topPosition < 0)
        setState(() {
          topPosition = -130 + _scrollController.offset;
          if (_scrollController.offset > 130) topPosition = 0;
        });
    } else {
      if (topPosition > -80)
        setState(() {
          topPosition--;
          if (_scrollController.offset <= 0) topPosition = -80;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    final MQH = MediaQuery.of(context).size.height;
    final MQW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      title: Text(
        'أذكار الصباح',
        style: TextStyle(color: Theme.of(context).accentColor),
      ),
      iconTheme: IconThemeData(color: Theme.of(context).accentColor),
      elevation: 0,
    ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MQH - 85,
                  child: FutureBuilder(
                    builder: (context, snapshot) {
                      var showData = json.decode(snapshot.data.toString());
                      return ListView.builder(
                          itemCount: showData == null ? 0 : showData.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.all(12.0),
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .accentColor
                                    .withOpacity(0.5),
                                border: Border.all(width: 0.0),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        20.0) //                 <--- border radius here
                                    ),
                              ),
                              child: new ListBody(children: <Widget>[
                                new Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      new EdgeInsets.only(top: 5.0, right: 7.0),
                                  child: new Text(
                                    showData[index]['zekr'],
                                    textAlign: TextAlign.right,
                                    style: new TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: MQW * 0.05,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                                Divider(
                                  color: Colors.black,
                                  indent: 35,
                                  endIndent: 35,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: MQW * 0.1),
                                  child: new Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          InkWell(
                                            highlightColor: Colors.grey,
                                            splashColor: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: new FlatButton(
                                              onPressed: () {
                                                Share.share(
                                                    showData[index]['zekr']);
                                              },
                                              child: new Row(
                                                children: <Widget>[
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: new Icon(
                                                      Icons.share_rounded,
                                                      color: Theme.of(context)
                                                          .primaryColor
                                                          .withOpacity(0.5),
                                                      size: MQW * 0.05,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 22,
                                                  ),
                                                  new Text(
                                                    'مشاركة',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: MQW * 0.05,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ), //share info
                                          SizedBox(
                                            width: 35,
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Text(
                                              showData[index]['repeat']
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor
                                                      .withOpacity(0.5),
                                                  fontSize: MQW * 0.05,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          new SizedBox(
                                            width: 22,
                                          ),
                                          new Text(
                                            'التكرار',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: MQW * 0.05),
                                          ),
                                        ]),
                                  ),
                                ),
                              ]),
                            );
                          });
                    },
                    future: DefaultAssetBundle.of(context)
                        .loadString('assets/json/azkar-sabah.json'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
