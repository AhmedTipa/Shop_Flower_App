import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class titleandprice extends StatelessWidget {
  const titleandprice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String title,country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '$title\n'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: kTextColor,fontWeight: FontWeight.bold
                  ),
                ),
                TextSpan(
                  text: '$country'.toUpperCase(),
                  style:
                  TextStyle(color: kPrimaryColor.withOpacity(0.5),
                      fontSize: 20
                  ),
                ),
              ])),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
