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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '24-Hour Helplines',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              '📞 :  (919) 967-7273 or (866) WE LISTEN',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Text(
              '💬 :  (919) 504-5211',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Our three helplines operate 24 hours a day, every day of the year, whether it’s to answer questions, share information about our services, or just to talk.  You can call us immediately after the experience, weeks, or even years later.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'What To Expect When You Call The Helpline',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'During business hours (Monday-Friday, 9am-4pm)',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'You will speak directly to a staff member.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'After business hours and on weekends',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'You will speak to an answering service. They will ask for your first name and phone number.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'The answering service will notify the on-call Advocate who will call you back within 15 minutes.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'It’s okay if you don’t want to leave your name, as long as you pick up the phone when the Advocate calls you back.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Who Should Call Our Helpline?',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'We support survivors of all types of sexual violence, such as rape, assault, harassment, stalking, sex trafficking, incest, and child sexual abuse. We are also available to talk to those who feel negatively impacted by a sexual experience. Our services are available to all members of the community regardless of race, socioeconomic class, gender identity and expression, sexual orientation, religion, disability, age, language, national origin, and immigration status.',
              textAlign: TextAlign.justify,
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