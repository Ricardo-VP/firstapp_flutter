import 'package:firstapp_flutter/pages/list_page.dart';
import 'package:firstapp_flutter/pages/save_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ListPage.ROUTE,
      routes: {
        ListPage.ROUTE: (_) => const ListPage(),
        SavePage.ROUTE: (_) => const SavePage(),
      },
    );
  }
}
