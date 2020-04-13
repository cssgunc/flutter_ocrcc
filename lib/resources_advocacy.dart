import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesAdvocacyPage extends StatefulWidget {
  ResourcesAdvocacyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResourcesAdvocacyPageState createState() => _ResourcesAdvocacyPageState();
}

class _ResourcesAdvocacyPageState extends State<ResourcesAdvocacyPage> {
  
  _launchURL() async {
    const url = 'http://ocrcc.org/get-help/advocacy/';
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
        title: Text('Advocacy'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.laptop, size: 30.0, color: Colors.white),
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
              'Advocacy',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'We offer a wide range of advocacy services that provide support to clients based on their individual needs throughout the healing process.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'What We Offer',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              '• Safety planning',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Assistance finding housing and filing for benefits',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Assistance with transportation to appointments',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Support with Victim’s Impact Statement, Victim’s Compensation, and Address Confidentiality Program',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Ongoing emotional support throughout the case management process',
              textAlign: TextAlign.center,
            ),
            Divider(),
            Text(
              'Advocacy Is Available In The More Specific Ways Found Below:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Medical Advocacy',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Text(
              '– Support during Sexual Assault Forensic Exams, performed by a SANE (Sexual Assault Nurse Examiner)',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Accompaniment to hospital visits',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Accompaniment to follow-up doctor appointments',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Assistance with forensic interviews',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Assessment of medical bills',
              textAlign: TextAlign.center,
            ),
            Divider(),
            Text(
              'Legal Advocacy',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Text(
              '– Accompaniment to meetings with lawyers',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Help filing 50C protective orders',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Accompaniment to court dates and hearing',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Access to free legal advice on a case by case basis (family and immigration law)',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Accompaniment to meetings with the District Attorney’s Office',
              textAlign: TextAlign.center,
            ),
            Divider(),
            Text(
              'Law Enforcement Advocacy',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Text(
              '– Assistance filing police reports',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Accompaniment to the police station',
              textAlign: TextAlign.center,
            ),
            Text(
              '– Support navigation reporting options',
              textAlign: TextAlign.center,
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
                  color: Color(0xFF823876), // Purple
                ),
                label: Text('ocrcc.org/advocacy',
                  style:(
                    TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF823876), // Purple
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