import 'package:flutter/cupertino.dart';

import '../../../constants.dart';

class featureplantcard extends StatelessWidget {
  const featureplantcard({
    Key? key,
    required this.image,
    required this.press,

  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
          left: kDefaultPadding,

        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(image)
          ),

        ),


      ),
    );
  }
}
