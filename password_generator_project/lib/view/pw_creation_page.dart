import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_generator_project/model/websites.dart';

class PwGenPage extends StatefulWidget {
  final Website site;
  PwGenPage({Key key, this.site}) : super(key: key);

  @override
  _PwGenPageState createState() => _PwGenPageState(sitea: site);
}

class _PwGenPageState extends State<PwGenPage> {
  final Website sitea;
  _PwGenPageState({Key key, this.sitea});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Create a password for " + sitea.siteName),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
        children: [
          new Image.network(
            sitea.logoUrl,
            scale: 3,
            fit: BoxFit.contain,
          ),
          TextField(
            textAlign: TextAlign.center,
            readOnly: true,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: sitea.password),
          ),
          RaisedButton.icon(
            icon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            label: const Text(
              "GENERATE",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => setState(() => sitea.password =
                generatePassword(sitea.allowedChars, sitea.pwlength)),
            color: Colors.purple,
          ),
          FlatButton.icon(
            onPressed: () =>
                Clipboard.setData(ClipboardData(text: sitea.password)),
            icon: Icon(
              Icons.content_copy,
              color: Colors.white,
            ),
            label: Text(
              "Copy to Clipboard",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.purpleAccent,
          )
        ],
      )),
    );
  }
}
