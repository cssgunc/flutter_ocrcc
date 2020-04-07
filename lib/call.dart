import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallPage extends StatefulWidget {
  CallPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF48B9BC), // Teal
        title: Text('Contact Us'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call, size: 30.0, color: Colors.white),
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
                  Navigator.pushReplacementNamed(
                    context,
                    '/',
                  );
                }
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
                }
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
                  Navigator.pop(context);
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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height - 100) / 2,
              child: RaisedButton(
                onPressed: () => launch('tel://18669354783'),
                color: Colors.red,
                child: Text(
                  'CALL THE 24 HOUR CRISIS HOTLINE (866) 935-4783',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                  ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height - 100) / 2,
              child: RaisedButton(
                onPressed: () => launch('sms://19195045211'),
                color: Color(0xFF48B9BC), // Teal
                child: Text(
                  'TEXT US AT (919) 504-5211',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}