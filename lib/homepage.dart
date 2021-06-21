import 'package:flutter/material.dart';
import 'package:style_mania/category.dart';
import 'package:style_mania/profile.dart';
import 'package:style_mania/setting.dart';
import 'package:style_mania/wishlist.dart';
import 'About.dart';
import 'authentication.dart';
import 'cart.dart';
import 'contact.dart';
import 'productList.dart';
import 'SearchData.dart';
import 'signup.dart';

class Tabs {
  String tabName;
  IconData iconData;

  Tabs({@required this.tabName, @required this.iconData});
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> screens = [
    ProductListScreen(),
    CategoryScreen(),
    WishList(),
    Profile(),

  ];

  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Style Mania",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              showSearch(context: context, delegate: SearchData());
            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Cart(),)
              );
            },
          )
        ],
      ),
      body: screens[_selectedItem],
      bottomNavigationBar: CustomBottomNavigationBar(
        tabs: [
          Tabs(iconData: Icons.home, tabName: "Home"),
          Tabs(iconData: Icons.list, tabName: "Category"),
          Tabs(iconData: Icons.favorite, tabName: "Wishlist"),
          Tabs(iconData: Icons.person, tabName: "Profile"),
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
        drawer: Drawer(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Manjot Singh',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                accountEmail: Text(
                  'manjot98035@gmail.com',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
                ),
                currentAccountPicture: CircleAvatar(
                  child: Text('M'),
                  backgroundColor: Colors.white,
                ),
                onDetailsPressed: () {},
                decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomRight, colors: [
                    Colors.purple,
                    Colors.purpleAccent,
                    Colors.deepPurpleAccent,
                  ]),
                ),
              ),

              ExpansionTile(
                title: Text("Categories"),
                leading: Icon(Icons.category),
                children: [
                  ListTile(
                    title: Text("Men"),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text("Women"),
                    leading: Icon(Icons.person),
                  )
                ],
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Authentication(),)
                  );
                },
                leading: Icon(Icons.login),
                title: Text('Login'),
                //selected: true,
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Signup(),)
                  );
                },
                leading: Icon(Icons.app_registration),
                title: Text('Registration'),
                //selected: true,
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Contact(),)
                  );
                },
                leading: Icon(Icons.contact_page),
                title: Text('Contacts'),
                //selected: true,
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Setting(),)
                  );
                },
                leading: Icon(Icons.settings),
                title: Text('Setting'),
                // selected: true,
                //hoverColor: Colors.cyanAccent,
                //focusColor: Colors.cyanAccent,
              ),
              Divider(),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => About(),)
                  );
                },
                leading: Icon(Icons.details),
                title: Text('About us'),
                //selected: true,
                //hoverColor: Colors.cyanAccent,
                //focusColor: Colors.cyanAccent,
              ),
              Divider(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.bug_report),
                    title: Text('Bug'),
                    //  selected: true,
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  // final List<IconData> iconList;
  final List<Tabs> tabs;

  CustomBottomNavigationBar({this.defaultSelectedIndex = 0, @required this.tabs, @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<Tabs> _iconList = [];
  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.tabs;
  }

  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i].iconData, _iconList[i].tabName, i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(
      IconData icon,
      String text,
      int index,
      ) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
          border: Border(
            top: BorderSide(width: 4, color: Colors.purple),
          ),
          // gradient: LinearGradient(colors: [
          //   Colors.purpleAccent.withOpacity(0.3),
          //   Colors.deepPurple.withOpacity(0.015),
          // ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
          // color: index == _selectedItemIndex ? Colors.green : Colors.white,
        )
            : BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, color: Colors.black),
            index == _selectedIndex ? Text(text) : Container()
          ],
        ),
      ),
    );
  }
}