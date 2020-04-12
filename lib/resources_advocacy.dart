import 'package:flutter/material.dart';

class ResourcesAdvocacyPage extends StatefulWidget {
  ResourcesAdvocacyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResourcesAdvocacyPageState createState() => _ResourcesAdvocacyPageState();
}

class _ResourcesAdvocacyPageState extends State<ResourcesAdvocacyPage> {
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
                onPressed: (){
                  // TODO: Navigate to https://ocrcc.org/get-help/helpline/
                  // Navigator.pushReplacementNamed(
                  //   context,
                  //   '/resources_24hour',
                  // );
                },
                icon: Icon(
                  Icons.blur_circular, 
                  size: 25.0,
                  color: Color(0xFF7A7A7A), // Dark Grey
                ),
                label: Text('OCRCC.org',
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