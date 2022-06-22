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
      drawer: MainDrawer(
        scaffoldKey: _scaffoldKey,
      ),
      body: Center(
          child: Container(
        width: 1100,
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Text(
                "Choose Section:".tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Get.theme.primaryColor),
              ),
            ),
            SectionChooser(),
          ],
        ),
      )),
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("ar", "AR"));
              },
              child: Text("🇹🇳")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("fr", "FR"));
              },
              child: Text("🇫🇷")),
          TextButton(
              onPressed: () {
                Get.updateLocale(Locale("en", "GB"));
              },
              child: Text("🇬🇧"))
        ],
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
    final sections = {
      "Information Technology".tr: "/info",
      "Information Technology - old".tr: "/info-old",
      "Technology".tr: "/tech",
      "Economy & Management".tr: "/ecogest",
      "Science".tr.tr: "/science",
      "Math".tr: "/math",
      "Literature".tr: "/lettres",
      "Sport".tr: "/sport"
    };

    List<Widget> processedSections = [];

    sections.forEach((key, value) {
      processedSections.add(Container(
        margin: EdgeInsets.all(10),
        width: 320,
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
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Get.toNamed(value);
          },
        ),
      ));
    });

    return Wrap(alignment: WrapAlignment.center, children: processedSections);
  }
}
