import 'package:flutter/material.dart';

import '../items/subscription_item.dart';

class Subscription extends StatelessWidget {
  final List<String> titles = [
    "Amitleryad",
    "Pirate",
    "Bob Ross",
    "Helena Bowers"
  ];
  final List<int> money = [520, 405, 280, 150];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (ctx, i) => SubscriptionItem(
          id: i,
          title: titles[i],
          money: money[i],
        ),
      ),
    );
  }
}
