import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesSupportPage extends StatefulWidget {
  ResourcesSupportPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResourcesSupportPageState createState() => _ResourcesSupportPageState();
}

class _ResourcesSupportPageState extends State<ResourcesSupportPage> {

  _launchURL() async {
    const url = 'http://ocrcc.org/get-help/support-groups/';
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
        title: Text('Support Groups'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.group, size: 30.0, color: Colors.white),
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
              'Support Groups + Workshops',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Support groups and workshops offer a safe space for survivors with similar experiences of sexual violence to talk, support, and encourage each other.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'About Our Support Groups + Workshops',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Each support group is led by two trained facilitators who have experience working with survivors of sexual violence. Most groups have 5-10 members and meet weekly for 8-10 weeks. Once they begin, groups are closed to new members. Please note that all support groups require a phone screening and pre-meeting with the coordinator and facilitators. Our workshops provide an opportunity for primary and secondary survivors of sexual violence to learn and practice skills for self care, empowerment, and positive coping. Workshops can be a single session or series and are lead by experts or professionals for each topic. If you are interested in joining a group or a workshop, you can call our helpline at (919) 967-7273 or contact us at groups@ocrcc.org. We can answer any questions you may have about our groups and how to sign up. Registration is required to join all groups and workshops. All our groups and workshops are free and confidential.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'OCRCC holds events in accessible buildings and is committed to disability access, equal opportunity, and reasonable accommodation. We also offer childcare on request. To request accommodation or childcare, contact us at least 7 days in advance at (919) 967-7273 or groups@ocrcc.org.',
              style: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'What to Expect',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'If you are interested in joining a support group, please call (919) 967-7273 or reach out to Groups@ocrcc.org to begin the screening process. Our Support Group Coordinator will reach out to set up an initial phone screening process; which is in place to ensure we are the right fit for your group needs. You will not be required to disclose any experiences or trauma during the initial phone screening. It will cover basic information regarding your experience with groups, your personal support system, and how you heard about OCRCC support groups.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'After your phone screening, if our services suit your needs, the Support Group Coordinator will reach out to schedule an in-person screening with the group facilitators. The in-person screening will not include any questions about your trauma history. The questions will focus on your learning style, your goals for group, and any accommodations you may need. If support groups are not right for you, our Support Group Coordinator will work with you to find services that suit your needs.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'Due to the importance of creating a positive group dynamic, it is asked that group members miss as few groups as possible.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'The Support Group Process',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Each support group is led by two trained facilitators who have experience working with survivors of sexual violence. Most groups have 5-12 members, meeting once a week for two hours for 8-10 weeks.  Once they begin, groups are closed to new members. Our support groups are open to people of all genders unless otherwise specified. Facilitators will create outlines depending on the group’s wants and needs. These range from discussion topics, to art activities, to writing prompts. In group, you will never be forced to talk or share. We believe it is of the utmost importance to take care of yourself and your needs. During the first group, members will create a set of “Guiding Principles” or “Group Rules” to create a safe space for everyone.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'Please note that all support groups require a phone screening and in-person meeting with the coordinator and facilitators.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'Our workshops provide an opportunity for primary and secondary survivors of sexual violence to learn and practice skills for self-care, empowerment, and positive coping. Workshops can be a single session or series and are lead by experts or professionals for each topic.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'If you are interested in joining a group or a workshop, you can call our helpline at (919) 967-7273 or contact us at groups@ocrcc.org. We can answer any questions you may have about our groups and how to sign up. Registration is required to join all groups and workshops. All our groups and workshops are free and confidential.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Examples of Support Groups and Workshops We Have Offered',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              '• Rape and sexual assault survivors',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Survivors of child sexual abuse of incest',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Sexual assault support group for men',
              textAlign: TextAlign.center,
            ),
            Text(
              '• LGBTQ survivors of sexual violence',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Workshops and support groups for family members, partners, and friends of survivors',
              textAlign: TextAlign.center,
            ),
            Text(
              '• Workshops on navigating the legal system, meditation, yoga, arts and crafts, horticulture, and many more',
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
                  color: Color(0xFF48B9BC), // Teal
                ),
                label: Text('ocrcc.org/support-groups',
                  style:(
                    TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF48B9BC), // Teal
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