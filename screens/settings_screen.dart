import 'package:flutter/material.dart';
import 'package:wallet_flutter_app/items/item_card.dart';

class SettingsScreen extends StatelessWidget {
  Widget _arrow() {
    return Icon(
      Icons.arrow_forward_ios,
      size: 20.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                color: Theme.of(context).backgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ItemCard(
                      title: 'Settings Item 01',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 01');
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        'Others',
                        style: TextStyle(
                            fontFamily: 'NotoSansJP',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ItemCard(
                      title: 'Settings Item 02',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: _arrow(),
                      callback: () {
                        print('Tap Settings Item 02');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 03',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: _arrow(),
                      callback: () {
                        print('Tap Settings Item 03');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 04',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: _arrow(),
                      callback: () {
                        print('Tap Settings Item 04');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 05',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 05');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 06',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 06');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 07',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 07');
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ItemCard(
                      title: 'Settings Item 08',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: null,
                      callback: () {
                        print('Tap Settings Item 08');
                      },
                    ),
                    ItemCard(
                      title: 'Settings Item 09',
                      color: Theme.of(context).backgroundColor,
                      callback: () {
                        print('Tap Settings Item 09');
                      },
                      textColor: Colors.red,
                    ),
                    ItemCard(
                      title: 'version',
                      color: Theme.of(context).backgroundColor,
                      rightWidget: Center(
                        child: Text('1.0.0',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                      callback: () {},
                    ),
                    SizedBox(
                      height: 200,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
