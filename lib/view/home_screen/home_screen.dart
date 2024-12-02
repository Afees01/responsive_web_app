import 'package:flutter/material.dart';
import 'package:responsive_web_app/responsive.dart';
import 'package:responsive_web_app/view/home_screen/widgets/centersection.dart';
import 'package:responsive_web_app/view/home_screen/widgets/leftsection.dart';
import 'package:responsive_web_app/view/home_screen/widgets/rightsection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: Responsive.isLaptop(context) ? null : AppBar(),
      drawer: Responsive.isLaptop(context)
          ? null
          : Drawer(
              child: leftsection(),
            ),
      body: Row(
        children: [
          if (Responsive.isLaptop(context))
            Expanded(flex: 2, child: leftsection()),
          Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    centersection(),
                    if (Responsive.isMobile(context)) rightsection()
                  ],
                ),
              )),
          if (!Responsive.isMobile(context))
            Expanded(flex: 3, child: rightsection())
        ],
      ),
    );
  }
}
