import 'package:flutter/material.dart';
import 'package:tutor/app/config/themes/app_theme.dart';

class Slide2 extends StatefulWidget {
  final String titel;
  final Icon icon;
  const Slide2({Key? key, required this.titel, required this.icon})
      : super(key: key);

  @override
  State<Slide2> createState() => _Slide2State();
}

class _Slide2State extends State<Slide2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      // margin: EdgeInsets.only(right: 12, left: 12, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(66, 158, 158, 158))),
      child: ListTile(
          leading: widget.icon,
          title: Text(
            "${widget.titel}",
            style: TextStyle(fontFamily: 'Bitter_italic'),
          ),
          trailing: Icon(Icons.navigate_next_rounded)),
    );
  }
}
