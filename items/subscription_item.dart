import 'package:flutter/material.dart';

class SubscriptionItem extends StatelessWidget {
  final int id;
  final int money;
  final String title;
  SubscriptionItem({this.id, this.money, this.title});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {},
      child: Card(
        elevation: 0.5,
        color: Color.fromRGBO(47, 61, 90, 1),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueAccent,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.grey),
          ),
          subtitle: Text(
            '$money\$/week',
            style: TextStyle(color: Colors.white),
          ),
          trailing: RaisedButton(
            onPressed: null,
            color: Colors.purple,
            child: Text(
              "view",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
