import 'package:flutter/material.dart';
import 'package:wallet_flutter_app/screens/mystats_screen.dart';
import 'package:wallet_flutter_app/screens/settings_screen.dart';
import 'package:wallet_flutter_app/screens/subscription_screen.dart';

import '../widgets/drawerpainter.dart';
import '../widgets/mybutton.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  Offset _offset = Offset(0, 0);
  GlobalKey globalKey = GlobalKey();
  List<double> limits = [];
  bool isMenuOpen = false;
  void comenu(int i) {
    if (i == 1)
      setState(() {
        isMenuOpen = false;
      });
    if (i == 2)
      setState(() {
        if (isMenuOpen = true)
          isMenuOpen = false;
        else
          isMenuOpen = true;
      });
  }

  @override
  void initState() {
    limits = [0, 0, 0, 0, 0, 0];
    WidgetsBinding.instance.addPostFrameCallback(getPosition);
    _pages = [
      MyStats(),
      Subscription(),
      SettingsScreen(),
    ];
    super.initState();
  }

  getPosition(duration) {
    RenderBox renderBox = globalKey.currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    double start = position.dy - 20;
    double contLimit = position.dy + renderBox.size.height - 20;
    double step = (contLimit - start) / 5;
    limits = [];
    for (double x = start; x <= contLimit; x = x + step) {
      limits.add(x);
    }
    setState(() {
      limits = limits;
    });
  }

  double getSize(int x) {
    double size =
        (_offset.dy > limits[x] && _offset.dy < limits[x + 1]) ? 25 : 20;
    return size;
  }

  List<Widget> _pages;
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      isMenuOpen = false;
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    double sidebarSize = mediaQuery.width * 0.65;
    double menuContainerHeight = mediaQuery.height / 2;
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 0.9,
        elevation: 0.5,
        backgroundColor: Theme.of(context).backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15, 2, 0, 2),
          child: IconButton(
            icon: Icon(Icons.toc),
            onPressed: () => setState(() {
              isMenuOpen = true;
            }),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 15, 2),
            child: Icon(
              Icons.add_circle_outline,
            ),
          ),
        ],
      ),
      body: Stack(children: [
        _pages[_selectedPageIndex],
        AnimatedPositioned(
          duration: Duration(milliseconds: 1500),
          left: isMenuOpen ? 0 : -sidebarSize,
          top: 0,
          curve: Curves.elasticInOut,
          child: SizedBox(
            width: sidebarSize,
            child: GestureDetector(
              onPanUpdate: (details) {
                if (details.localPosition.dx <= sidebarSize) {
                  setState(() {
                    _offset = details.localPosition;
                  });
                }

                if (details.localPosition.dx > sidebarSize &&
                    details.delta.distanceSquared > 2) {
                  setState(() {
                    isMenuOpen = true;
                  });
                }
              },
              onPanEnd: (details) {
                setState(() {
                  _offset = Offset(0, 0);
                });
              },
              child: Stack(
                children: <Widget>[
                  CustomPaint(
                    size: Size(sidebarSize, mediaQuery.height),
                    painter: DrawerPainter(offset: _offset),
                  ),
                  Container(
                    color: Theme.of(context).backgroundColor,
                    height: mediaQuery.height,
                    width: sidebarSize,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          SafeArea(
                            minimum: EdgeInsets.only(top: 10),
                            child: Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                alignment: Alignment.topRight,
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                onPressed: () => setState(() {
                                  isMenuOpen = false;
                                }),
                              ),
                            ),
                          ),
                          Container(
                            key: globalKey,
                            width: double.infinity,
                            height: menuContainerHeight,
                            child: Column(
                              children: <Widget>[
                                MyButton(
                                  text: "VIP Feed",
                                  iconData: Icons.dashboard,
                                  textSize: getSize(0),
                                  height: (menuContainerHeight) / 5,
                                ),
                                MyButton(
                                  text: "Upload Content",
                                  iconData: Icons.file_upload,
                                  textSize: getSize(1),
                                  height: (menuContainerHeight) / 5,
                                ),
                                MyButton(
                                  text: "My Account",
                                  iconData: Icons.notifications,
                                  textSize: getSize(2),
                                  height: (mediaQuery.height / 2) / 5,
                                ),
                                MyButton(
                                  text: "Make Money",
                                  iconData: Icons.attach_money,
                                  textSize: getSize(3),
                                  height: (menuContainerHeight) / 5,
                                ),
                                MyButton(
                                  text: "24/7 Help",
                                  iconData: Icons.help_outline,
                                  textSize: getSize(3),
                                  height: (menuContainerHeight) / 5,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            child: MyButton(
                              text: "LOGOUT",
                              iconData: Icons.input,
                              textSize: getSize(3),
                              height: (menuContainerHeight / 2) / 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).backgroundColor,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            title: Text('My Stats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            title: Text('Subscriptions'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}

class MainDrawer {}
