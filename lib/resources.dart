import 'package:flutter/material.dart';

class ResourcesPage extends StatefulWidget {
  ResourcesPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResourcesPageState createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF48B9BC), // Teal
        title: Text('Get Help'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.apps, size: 30.0, color: Colors.white),
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
                height: 175.0,
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
                  Navigator.pop(context);
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
        child: GridView.count(
          // padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 10.0),
          crossAxisCount: 2,
          children: <Widget>[
            RaisedButton.icon(
              color: Colors.white,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => HourHelpOverlay(),
                );
              },
              icon: Icon(Icons.watch_later, size: 25.0),
              label: Text('24-Hour Help',
                style:(
                  TextStyle(fontSize: 15.0)
                ),
              ),
            ),
            RaisedButton.icon(
              color: Colors.white,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => SupportOverlay(),
                );
              },
              icon: Icon(Icons.group, size: 25.0),
              label: Text('Support Groups',
                style:(
                  TextStyle(fontSize: 15.0)
                ),
              ),
            ),
            RaisedButton.icon(
              color: Colors.white,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => TherapyOverlay(),
                );
              },
              icon: Icon(Icons.pets, size: 25.0),
              label: Text('Therapy',
                style:(
                  TextStyle(fontSize: 15.0)
                ),
              ),
            ),
            RaisedButton.icon(
              color: Colors.white,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AdvocacyOverlay(),
                );
              },
              icon: Icon(Icons.laptop, size: 25.0),
              label: Text('Advocacy',
                style:(
                  TextStyle(fontSize: 15.0)
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class HourHelpOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HourHelpOverlayState();
}

class HourHelpOverlayState extends State<HourHelpOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 10)
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.elasticInOut,
    );
    controller.addListener(() {
      setState((){});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("Call this man right now: (919) 744-5964"),
            ),
          ),
        ),
      ),
    );
  }
}

class SupportOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SupportOverlayState();
}

class SupportOverlayState extends State<SupportOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 10)
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.elasticInOut,
    );
    controller.addListener(() {
      setState((){});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("This is for support"),
            ),
          ),
        ),
      ),
    );
  }
}

class TherapyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TherapyOverlayState();
}

class TherapyOverlayState extends State<TherapyOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 10)
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.elasticInOut,
    );
    controller.addListener(() {
      setState((){});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("Therapy dogs!"),
            ),
          ),
        ),
      ),
    );
  }
}

class AdvocacyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AdvocacyOverlayState();
}

class AdvocacyOverlayState extends State<AdvocacyOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 10)
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.elasticInOut,
    );
    controller.addListener(() {
      setState((){});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("Legal counsel"),
            ),
          ),
        ),
      ),
    );
  }
}