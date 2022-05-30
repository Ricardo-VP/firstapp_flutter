import "package:flutter/material.dart";

class SavePage extends StatelessWidget {
  const SavePage({Key? key}) : super(key: key);

  static const String ROUTE = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Save")),
      body: const Text("Save page"),
    );
  }
}
