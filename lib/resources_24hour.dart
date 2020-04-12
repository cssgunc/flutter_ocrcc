import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Resources24HourPage extends StatefulWidget {
  Resources24HourPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Resources24HourPageState createState() => _Resources24HourPageState();
}

class _Resources24HourPageState extends State<Resources24HourPage> {

  _launchURL() async {
    const url = 'http://ocrcc.org/get-help/helpline/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF48B9BC), // Teal
        leading: BackButton(
          onPressed: (){
            Navigator.pushReplacementNamed(
              context,
              '/resources',
            );
          },
        ),
        title: Text('24-Hour Help'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.watch_later, size: 30.0, color: Colors.white),
            onPressed: null,
          )
        ],
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height - 100) / 8,
              child: RaisedButton.icon(
                color: Colors.white,
                onPressed: _launchURL,
                icon: Icon(
                  Icons.blur_circular, 
                  size: 25.0,
                  color: Color(0xFF7A7A7A), // Dark Grey
                ),
                label: Text('ocrcc.org/helpline',
                  style:(
                    TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF7A7A7A), // Dark Grey
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}