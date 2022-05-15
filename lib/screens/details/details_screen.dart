import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/details/componemts/body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
