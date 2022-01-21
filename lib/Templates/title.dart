import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
class Title extends StatefulWidget {
  String title = '';

  Title(this.title);

  @override
  _TitleState createState() => _TitleState();
}

class _TitleState extends State<Title> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/

class CardTitle extends StatelessWidget {
  String title = '';
  var fullscreen;

  CardTitle(this.title, this.fullscreen);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: CupertinoButton(
        child: Icon(CupertinoIcons.fullscreen),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => fullscreen)
          );
        },
      ),
    );
  }
}

