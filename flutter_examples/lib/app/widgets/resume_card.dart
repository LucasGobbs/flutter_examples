import 'package:flutter/material.dart';

class ResumeCard extends StatefulWidget {
  final IconData icon;
  final Text title;
  final Text subtitle;
  final Function() codeButtonCallback;
  final Function() exampleButtonCallback;
  ResumeCard({Key key, 
      this.icon, 
      this.title,
      this.subtitle,
      this.codeButtonCallback,
      this.exampleButtonCallback
  }) : super(key: key);
  //MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _ResumeCardState createState() => _ResumeCardState();
}

class _ResumeCardState extends State<ResumeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(this.widget.icon),
            title: this.widget.title,
            subtitle: this.widget.subtitle,
          ),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('CODE'),
                onPressed: this.widget.codeButtonCallback,
              ),
              FlatButton(
                child: const Text('EXAMPLE'),
                onPressed: this.widget.exampleButtonCallback,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

