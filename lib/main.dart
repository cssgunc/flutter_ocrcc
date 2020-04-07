import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'about.dart';
import 'calendar.dart';
import 'call.dart';
import 'locate.dart';
import 'resources.dart';

void main() => runApp(MyApp());
//  TODO: Add app icon
//  TODO: https://flutter.dev/docs/development/ui/splash-screen/android-splash-screen
//  TODO: Add fonts (Josefin Sans, Sans-Serif) https://pub.dev/packages/google_fonts
//  TODO: Add password and app lock
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OCRCC',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        //  TODO: For future reference, impl. SafeArea on each Page
        //  This is for planning around notches/display insets
        //  TODO: Impl. color scheme (separate class?)
        //  Current scheme: 
        //    Colors.teal / Colors.teal[400]
        //    Colors.red
        //    Colors.white
        //    Colors.grey
        //    Colors.black
        //  New scheme:
        //    Light Grey: #F7F7F7 => Color(0xFFF7F7F7)
        //    Dark Grey: #7A7A7A => Color(0xFF7A7A7A)
        //    Teal: #48B9BC => Color(0xFF48B9BC)
        //    Yellow: #F7CA57 => Color(0xFFF7CA57)
        //    Purple: #823876 => Color(0xFF823876)
        //      static const OCRCC_Light_Grey = Color(0xFFF7F7F7);
        //      static const OCRCC_Dark_Grey = Color(0xFF7A7A7A);
        //      static const OCRCC_Teal = Color(0xFF48B9BC);
        //      static const OCRCC_Yellow = Color(0xFFF7CA57);
        //      static const OCRCC_Purple = Color(0xFF823876);
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/about': (context) => AboutPage(),
        '/calendar': (context) => CalendarPage(),
        '/call': (context) => CallPage(),
        '/locate': (context) => LocatePage(),
        '/resources': (context) => ResourcesPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF48B9BC), // Teal 
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home, size: 30.0, color: Colors.white),
            onPressed: null,
          )
        ],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF48B9BC), // Teal
        ),
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.white,
                child: DrawerHeader(
                  child: Image(image: AssetImage('assets/OCRCC_logo.webp',)),
                ),
              ),
              ListTile(
                title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 25.0,
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Resources', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.apps,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/resources',
                  );
                },
              ),
              ListTile(
                title: Text('Calendar', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.date_range,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/calendar',
                  );
                },
              ),
              ListTile(
                title: Text('Find Us', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/locate',
                  );
                },
              ),
              ListTile(
                title: Text('Contact Us', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.call,
                  color: Colors.red[400],
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/call',
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text('About', style: TextStyle(color: Colors.white, fontSize: 20.0)),
                trailing: Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 25.0,
                  ),
                onTap: (){
                  Navigator.pushReplacementNamed(
                    context,
                    '/about',
                  );
                },
              ),
            ],
          )
          )
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(5.0, 500.0, 8.0, 5.0),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () => launch('https://www.cnn.com/'),
              backgroundColor: Color(0xFFF7CA57), // Yellow
              child: const Icon(Icons.star),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 500.0, 8.0, 5.0),
            child: FloatingActionButton(
              heroTag: null,
              onPressed: (){
                Navigator.pushReplacementNamed(
                  context,
                  '/call',
                );
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}
