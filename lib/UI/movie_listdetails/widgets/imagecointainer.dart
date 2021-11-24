import 'package:flutter/material.dart';
import 'package:quiz/UI/utils/Resposive.dart';

class imageconitiner extends StatefulWidget {
final String imagestring;

  const imageconitiner({Key key, this.imagestring}) : super(key: key);



  @override
  _imageconitinerState createState() => _imageconitinerState();
}

class _imageconitinerState extends State<imageconitiner> {


  String  convertString(String link){
print("old:"+link);
    String find = "/thumb/";
    String replace ="/medium/";
    String  newstring =  link.replaceAll(find,replace);
    print(newstring);

    return newstring;
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25*AppSizeConfig.heightMultiplier,
      width: 90*AppSizeConfig.widthMultiplier,
      color: Colors.grey.shade200,
      child:  Image.network(convertString(widget.imagestring), fit: BoxFit.fill,
        height: 25*AppSizeConfig.heightMultiplier,


      ),
    );
  }
}
