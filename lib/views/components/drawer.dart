import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

Drawer MainDrawer = Drawer(
  child: Column(
    mainAxisSize: MainAxisSize.max,
    children: [
      AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Get.theme.primaryColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      ListTile(
        title: Text("Home"),
        onTap: () {
          Get.offAllNamed("/");
        },
      ),
      ...processListTiles(),
      Expanded(
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Made by Louay Ghanney",
              style: TextStyle(color: Get.theme.primaryColor),
            )),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              tooltip: "Email",
              onPressed: () {},
              icon: Icon(
                Icons.email,
                color: Colors.black,
              )),
          IconButton(
              tooltip: "Discord",
              onPressed: () {},
              icon: Icon(
                Icons.discord,
                color: Colors.black,
              )),
          IconButton(tooltip: "Github", onPressed: () {}, icon: SvgPicture.asset("assets/icons/github.svg")),
        ],
      ),
    ],
  ),
);

List<ListTile> processListTiles() {
  Map<String, String> Items = {
    "Information Technology": "/info",
    "Information Technology - old": "/info-old",
    "Technology": "/tech",
    "Economy & Management": "/ecogest",
    "Science": "/science",
    "Math": "/math",
    "Literature": "/lettres",
    "Sport": "/sport"
  };
  List<ListTile> result = [];

  Items.forEach((key, value) {
    result.add(ListTile(
      title: Text(
        key,
        style: TextStyle(color: Get.theme.primaryColor),
      ),
      onTap: () {
        if (Get.currentRoute == "/") {
          Get.toNamed(value);
        } else {
          Get.offNamed(value);
        }
      },
    ));
  });
  return result;
}
