import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF48B9BC), // Teal
        title: Text('About'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info, size: 30.0, color: Colors.white),
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
                  Navigator.pop(context);
                },
              ),
            ],
          )
        )
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'This app was created in collaboration with the Orange County Rape Crisis Center (OCRCC) and UNC-Chapel Hill CS + Social Good, a division of TechShift.',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.left,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.copyright,
                  color: Colors.grey,
                ),
                Text(' 2020',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}