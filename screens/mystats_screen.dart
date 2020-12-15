import 'package:flutter/material.dart';

import '../items/mystas_item.dart';

class MyStats extends StatelessWidget {
  final List<String> titles = [
    "Pending",
    "Paid",
    "Paid",
  ];
  final List<double> money = [
    4.56204,
    27.435,
    41.8,
  ];
  final List<String> date = [
    "03.08.20",
    "03.13.20",
    "03.08.20",
  ];
  final List<Color> _color = [
    Colors.deepPurpleAccent,
    Colors.cyan,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
                color: Theme.of(context).backgroundColor,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  childAspectRatio: 1.3,
                  shrinkWrap: false,
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 16,
                      height: MediaQuery.of(context).size.height / 16,
                      child: Card(

                        color: Colors.indigo[500],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.supervisor_account,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "437",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Total",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromRGBO(58, 68, 103, 1),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 16,
                      height: MediaQuery.of(context).size.height / 16,
                      child: Card(
                        color: Colors.blueAccent[400],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.person_add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "239",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "New",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromRGBO(58, 68, 103, 1),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 16,
                      height: MediaQuery.of(context).size.height / 16,
                      child: Card(
                        color: Colors.redAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "15",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "lost",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromRGBO(58, 68, 103, 1),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 16,
                      height: MediaQuery.of(context).size.height / 16,
                      child: Card(
                        color: Colors.blueGrey[300],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.trending_up,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "4.67\$",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Earnings",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      color: Color.fromRGBO(58, 68, 103, 1),
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Theme.of(context).backgroundColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Text(
                      "Payment History",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.change_history,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Theme.of(context).backgroundColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (ctx, i) => MyStatsItem(
                  id: i,
                  title: titles[i],
                  money: money[i],
                  date: date[i],
                  color: _color[i],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
