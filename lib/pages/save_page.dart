import "package:flutter/material.dart";

class SavePage extends StatelessWidget {
  const SavePage({Key? key}) : super(key: key);

  static const String ROUTE = "/save";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Save")),
      body: _FormSave(),
    );
  }
}

class _FormSave extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Insert the title";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLines: 4,
              maxLength: 1000,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Insert the content";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Content",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Save');
                  }
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
