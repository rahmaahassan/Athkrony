import 'package:athkrony/pages/zekr_page.dart';
import 'package:flutter/material.dart';


class ZekrCard extends StatefulWidget {
  String title, zekr;

  ZekrCard({this.title, this.zekr});

  @override
  _ZekrCardState createState() => _ZekrCardState();
}

class _ZekrCardState extends State<ZekrCard> {
  @override
  Widget build(BuildContext context) {
    final MQW = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.all(2),
        child: Card(
          color: Colors.white,
          elevation: 2.5,
          child: ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ZekrPage(widget.title, widget.zekr)));
            },
            title: Text(widget.title, style: TextStyle(color: Theme.of(context).primaryColor, fontSize: MQW * 0.06),),
          ),
        ),
      ),
    );
  }
}
