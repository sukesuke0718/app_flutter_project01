import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  final _pageWidgets = [
    PageWidget(color:Colors.white, title:'Home'),
    PageWidget(color:Colors.blue, title:'Album'),
    PageWidget(color:Colors.orange, title:'Chat'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
      ),
      drawer: Drawer(
        child:ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Drow Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('item 1'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('item 2'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('item 3'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: 'Album'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index );
}

class PageWidget extends StatelessWidget {
  final Color? color;
  final String? title;

  const PageWidget({Key? key,  this.color, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          title!,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
