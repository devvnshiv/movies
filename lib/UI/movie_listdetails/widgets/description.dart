import 'package:flutter/material.dart';
import 'package:quiz/UI/utils/Resposive.dart';

class descriptions extends StatefulWidget {
final String Des;

  const descriptions({Key key, this.Des}) : super(key: key);

  @override
  _descriptionsState createState() => _descriptionsState();
}

class _descriptionsState extends State<descriptions> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 90*AppSizeConfig.widthMultiplier,
      child: desplaytext(widget.Des),
    );
  }
  desplaytext(String text) {
    return Text(text,
      style: TextStyle(fontSize: 2.0 * AppSizeConfig.textMultiplier,
          fontWeight: FontWeight.bold),);
  }
}
