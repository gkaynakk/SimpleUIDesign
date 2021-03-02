import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HorizantalListView.dart';
import 'categories.dart';
import 'category_header_widget.dart';
import 'category_detail_widget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
} //MaterialApp

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Home'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.deepOrangeAccent[100], Colors.lightBlue[800]],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {}),
          new IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(8),
        children: [
          //new Padding(
          // padding: const EdgeInsets.all(8.0),
          //child: new Text('Today\'s Courses'),
          //Horizantal list view starts here
          //),

          //image carousel starts here

          //Padding Widget
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Today\'s Courses',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Text("View All",
              style: TextStyle(fontSize: 16, color: Colors.blue),
              textAlign: TextAlign.right),

//          buildTodays(context),
          //Padding widget

          SizedBox(height: 16),
          buildTodays(context),
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: new Text(
              'Schedule List',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          Text("View All",
              style: TextStyle(fontSize: 16, color: Colors.blue),
              textAlign: TextAlign.right),

          SizedBox(height: 32),
          buildCategories(),

          //Grid View

          // Flexible(child: Products()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.lightBlue[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              title: Text('Leaderbord'),
              backgroundColor: Colors.lightBlue[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text('Reports'),
              backgroundColor: Colors.lightBlue[800]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.lightBlue[800])
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget buildTodays(BuildContext context) => Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 16),
          Container(
            height: 240,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: categories
                  .map((category) => CategoryDetailWidget(
                        category: category,
                        onSelectedCategory: (category) {},
                      ))
                  .toList(),
            ),
          )
        ],
      );
  Widget buildCategories() => Container(
        height: 320,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 12 / 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: categories
              .map((category) => CategoryHeaderWidget(category: category))
              .toList(),
        ),
      );
}
