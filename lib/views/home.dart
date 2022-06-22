import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:uniscore/views/components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Section:",
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Get.theme.primaryColor),
            ),
            SectionChooser(),
          ],
        ),
      ),
      drawer: MainDrawer(scaffoldKey: _scaffoldKey),
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            color: Get.theme.scaffoldBackgroundColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
    );
  }
}

class SectionChooser extends StatelessWidget {
  const SectionChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sections = {"Information Technology": "/info", "Information Technology - old": "/info-old", "Technology": "/tech", "Economy & managment": "/ecogest", "Science": "/science", "Math": "/math", "Literature": "/lettres", "Sport": "/sport"};

    List<Widget> processedSections = [];

    sections.forEach((key, value) {
      processedSections.add(Container(
        margin: EdgeInsets.all(10),
        width: 450,
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              side: BorderSide(
                color: Get.theme.primaryColor,
                width: 2,
              )),
          child: Text(
            key,
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Get.toNamed(value);
          },
        ),
      ));
    });

    return Container(width: 950, child: Wrap(alignment: WrapAlignment.center, children: processedSections));
  }
}
