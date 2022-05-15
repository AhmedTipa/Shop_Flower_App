import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class iconcard extends StatelessWidget {
  const iconcard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.03),
      padding: EdgeInsets.all(kDefaultPadding/3),
      height:62 ,
      width: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: kPrimaryColor.withOpacity(0.22),
              offset: Offset(0,15),
              blurRadius: 22
          ),
          BoxShadow(
              color:Colors.white,
              offset: Offset(-15,-15),
              blurRadius: 20
          )],
      ),
      child: IconButton(
        onPressed: (){},
        icon:SvgPicture.asset(title),
      ),
    );
  }
}
