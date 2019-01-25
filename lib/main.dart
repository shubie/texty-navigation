import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MaterialApp(
      title: 'Texty Navigation',
      theme: new ThemeData(primaryColor: Color.fromRGBO(55, 113, 170, 1.0)),
      home: new TextyNavigation(),
      debugShowCheckedModeBanner: false,
    ));

class TextyNavigation extends StatefulWidget {
  @override
  _TextyNavigationState createState() => _TextyNavigationState();
}

class _TextyNavigationState extends State<TextyNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //     padding: EdgeInsets.all(50.0),
      //     child: LinearProgressIndicator(
      //         value: 0.66, valueColor: AlwaysStoppedAnimation(Colors.green))),
      appBar: AppBar(
        title: Text("Texty Navigation"),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 60.0),
          decoration: BoxDecoration(color: Color.fromRGBO(55, 113, 170, 1.0)),
          child: Column(
            children: <Widget>[
              Expanded(
                child: makeProfileAvatar(),
                flex: 1,
              ),
              Expanded(
                child: menuGrid(),
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }

  makeProfileAvatar() {
    return Column(
      children: <Widget>[
        // SizedBox(height: 10.0),
        CircleAvatar(
          radius: 60.0,
          backgroundImage: new AssetImage('assets/shubie2.png'),
        ),
        SizedBox(height: 20.0),
        Center(
          child: new Text("Shuaib Afegbua",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        Center(
          child: new Text("Abuja, Nigeria",
              style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.normal)),
        )
      ],
    );
  }

  GridView menuGrid() {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        makeMenuItem(Icons.message, "Messages"),
        makeMenuItem(Icons.phone_forwarded, "Calls"),
        makeMenuItem(Icons.dialpad, "Dial"),
        makeMenuItem(Icons.contacts, "Contacts"),
        makeMenuItem(Icons.more_horiz, "More"),
        makeMenuItem(Icons.settings, "Settings")
      ],
    );
  }

  Column makeMenuItem(icon, title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Center(
            child: Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        )),
        SizedBox(height: 10.0),
        new Center(
          child: new Text(title,
              style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
