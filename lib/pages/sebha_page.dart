import 'package:athkrony/model/zekr_card.dart';
import 'package:flutter/material.dart';


class SebhaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
          ZekrCard(title: 'أستغفار', zekr: 'أستغفر اللّه',),
          ZekrCard(title: 'تهليل', zekr: 'لا إله إلا اللّه',),
          ZekrCard(title: 'تكبير', zekr: 'اللّه اللّه',),
          ZekrCard(title: 'تسبيح', zekr: 'سبحان اللّه',),
          ZekrCard(title: 'حمد', zekr: 'الحمدللّه',),
        ],
      ),
    );
  }
}





