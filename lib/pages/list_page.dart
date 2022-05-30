import 'package:firstapp_flutter/pages/save_page.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  static const String ROUTE = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, SavePage.ROUTE);
        },
      ),
      appBar: AppBar(
        title: const Text("List"),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text("Note 1"),
          ),
          ListTile(
            title: Text("Note 1"),
          ),
          ListTile(
            title: Text("Note 1"),
          ),
          ListTile(
            title: Text("Note 1"),
          ),
          ListTile(
            title: Text("Note 1"),
          ),
          ListTile(
            title: Text("Note 1"),
          ),
        ],
      ),
    );
  }
}
