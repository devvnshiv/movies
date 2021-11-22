import 'package:flutter/material.dart';
import 'package:quiz/UI/utils/Resposive.dart';

class imageconitiner extends StatefulWidget {
final String imagestring;

  const imageconitiner({Key key, this.imagestring}) : super(key: key);



  @override
  _imageconitinerState createState() => _imageconitinerState();
}

class _imageconitinerState extends State<imageconitiner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25*AppSizeConfig.heightMultiplier,
      width: 90*AppSizeConfig.widthMultiplier,
      child:  Image.network(widget.imagestring, fit: BoxFit.fitHeight,



      ),
    );
  }
}
