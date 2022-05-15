import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/components/bottom_nav_bar.dart';
import 'package:ui/screens/home/components/body.dart';

import 'constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildappbar(),
      body: Body(),
      bottomNavigationBar:MyBottomNavBar(),
    );
  }
}

AppBar buildappbar() {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark
    ),
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
  );
}
