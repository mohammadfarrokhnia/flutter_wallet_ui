import 'package:flutter/material.dart';

class MyStatsItem extends StatelessWidget {
  final int id;
  final double money;
  final String title;
  final String date;
  final Color color;
  MyStatsItem({this.id, this.money, this.title, this.date, this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      color: Theme.of(context).backgroundColor,
      child: ListTile(
        leading: Text(
          date,
          style: TextStyle(color: Colors.grey),
        ),
        title: Text(
          '\$$money',
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Text(
          title,
          style: TextStyle(color: color),
        ),
      ),
    );
  }
}
