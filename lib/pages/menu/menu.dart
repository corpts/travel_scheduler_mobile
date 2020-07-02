import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'gridWidget.dart';

class MenuPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(42.0),
        child: Center(
          child: SizedGrid(
            cols: 3,
            rows: 3,
//            horizontalSpacing: 24,
//            verticalSpacing: 24,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildMenuItem(Icon(Icons.location_on, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.access_time, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.date_range, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.airplanemode_active, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.hotel, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.fastfood, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.attach_money, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.history, size: 40, color: Theme.of(context).accentColor),'test'),
              buildMenuItem(Icon(Icons.settings, size: 40, color: Theme.of(context).accentColor),'test'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(Icon icon,String text){
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: icon,
        ),
        Text(text)
      ],
    );
  }

}

