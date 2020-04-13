import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesTherapyPage extends StatefulWidget {
  ResourcesTherapyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResourcesTherapyPageState createState() => _ResourcesTherapyPageState();
}

class _ResourcesTherapyPageState extends State<ResourcesTherapyPage> {

  _launchURL() async {
    const url = 'http://ocrcc.org/get-help/therapy/';
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
        title: Text('Therapy'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.pets, size: 30.0, color: Colors.white),
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
              'Therapy',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'We can connect you with our on-site therapy program or to therapists in the community.',
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
              'The OCRCC therapy program provides short-term, trauma-focused therapy in both English and Spanish to primary and secondary survivors of sexual violence. Our therapist works collaboratively with survivors to help them reestablish balance through a holistic and multi-disciplinary treatment model. All OCRCC therapy is free. We support survivors in identifying their inherent strengths and establishing healthy coping skills.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'We also maintain a list of local therapists who have experience working with survivors. We can connect you with providers who take insurance, offer reduced fees, or who provide pro bono (free) services.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'If you have questions or want to schedule an appointment, please call (919) 967-7273.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Our Modalities',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'We use evidence-based treatment interventions such as compasses alternative therapeutic treatment interventions such as Eye Movement Desensitization and Reprocessing (EMDR), Trauma-Focused Cognitive Behavioral Therapy (TF CBT), psychodynamic psychology, transactional analysis techniques, Somatic Experiencing Techniques and Dialectical Behavioral Therapy (DBT) interventions. We also use art therapy, music therapy, and mindfulness practices.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'We serve clients who report experiencing various symptoms as a result of a traumatic experience of sexual violence, which has impaired their quality of daily life.',
              style: TextStyle(fontWeight: FontWeight.bold),
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
              'If you are interested in scheduling a therapy appointment for yourself, please call (919) 967-7273 to begin the screening process. Our screening process is in place to ensure we are the right fit for your therapeutic needs. We serve primary and secondary survivors of sexual violence, specifically those facing barriers in seeking mental health treatment including:',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'No insurance or accessing services through insurance would compromise safety',
              textAlign: TextAlign.center,
            ),
            Text(
              'Lacks finances for high copay',
              textAlign: TextAlign.center,
            ),
            Text(
              'Needs accommodations for mobility aids',
              textAlign: TextAlign.center,
            ),
            Text(
              'Feels unsafe with other providers',
              textAlign: TextAlign.center,
            ),
            Text(
              'Needs bilingual providers',
              textAlign: TextAlign.center,
            ),
            Text(
              'Not receiving mental health treatment elsewhere',
              textAlign: TextAlign.center,
            ),
            Divider(),
            Text(
              'The initial phone screening occurs before your first session. The in-take will take place during your first appointment. You will not be required to disclose any experiences or trauma during the initial phone screening. It will cover basic information regarding the types of therapy you are seeking and answer more specific questions about our services.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'After your phone screening, if our services suit your needs, you’ll schedule your first appointment. If our services do not suit your needs, our case manager will work with you to find a provider that is a right fit for you.',
              textAlign: TextAlign.justify,
            ),
            Text(
              'If you have questions, please call our helpline at 866-WE LISTEN or (919) 967-7273. Or, feel free to contact one of our in-house clinical therapists.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Clinical Case Management',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'We offer customized mental health referrals based on a thorough needs assessment. Our clinical case manager works closely with clients to provide an individualized care plan.',
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'How to Refer',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.justify,
            ),
            Divider(),
            Text(
              'Support Groups: HannahR@ocrcc.org',
              textAlign: TextAlign.justify,
            ),
            Text(
              'Clinical Case Management: Stephanie@ocrcc.org',
              textAlign: TextAlign.justify,
            ),
            Text(
              'Call: (919) 968-7273',
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
                  color: Color(0xFFF7CA57), // Yellow
                ),
                label: Text('ocrcc.org/therapy',
                  style:(
                    TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFFF7CA57), // Yellow
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