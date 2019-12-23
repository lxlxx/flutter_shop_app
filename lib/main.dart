import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter_shop_app/componets/horizontal_listview.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('image/1.jpg'),
          AssetImage('image/2.jpg'),
          AssetImage('image/3.jpg'),
          AssetImage('image/4.jpg'),
          AssetImage('image/5.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        indicatorBgPadding: 6.0,
        dotColor: Colors.lightBlue,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        title: Text('Shop App'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Hello'),
                accountEmail: Text('Hello@hello.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.lightBlueAccent
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.category),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),

          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),

          HorizontalList(),
        ],
      )
    );
  }
}
