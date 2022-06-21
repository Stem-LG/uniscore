import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uniscore/views/components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: MainDrawer,
      appBar: AppBar(),
    );
  }
}

class SectionChooser extends StatelessWidget {
  const SectionChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sections = {"info": "/info", "info-old": "/info-old", "tech": "/tech", "ecogest": "/ecogest", "science": "/science", "math": "/math", "lettres": "/lettres", "sport": "/sport"};

    List<Widget> processedSections = [];

    sections.forEach((key, value) {
      processedSections.add(Container(
        margin: EdgeInsets.all(10),
        width: 150,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(side: BorderSide(color: Get.theme.primaryColor, width: 2)),
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

    return Container(width: 600, child: Wrap(alignment: WrapAlignment.center, children: processedSections));
  }
}
