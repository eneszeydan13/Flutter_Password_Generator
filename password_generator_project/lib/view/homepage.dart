import 'package:flutter/material.dart';
import 'package:password_generator_project/model/data.dart';
import 'package:password_generator_project/model/websites.dart';
import 'package:password_generator_project/view/pw_creation_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("PW-Gen"),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: websites.length,
          itemBuilder: (context, index) => new Container(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PwGenPage(site: websites[index]);
                    }));
                  },
                  leading: Container(
                    child: Image.network(
                      websites[index].logoUrl,
                      fit: BoxFit.fill,
                    ),
                    padding: EdgeInsets.only(right: 15),
                    height: 115,
                    width: 100,
                  ),
                  title: Container(
                    child: Text(websites[index].siteName),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                  ),
                ),
                height: 100,
              )),
    );
  }
}
