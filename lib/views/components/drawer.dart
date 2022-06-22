import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer({Key? key, required this.scaffoldKey}) : super(key: key);

  GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
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

    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/menu.svg",
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
                  onPressed: () async {
                    await launchUrl(Uri.parse("mailto:louayghanney71@gmail.com"));
                  },
                  icon: SvgPicture.asset("assets/icons/at.svg")),
              IconButton(
                  tooltip: "Discord",
                  onPressed: () {
                    FlutterClipboard.copy("Stem#1287").then((value) =>
                        Get.snackbar("Stem#1287", "Copied to clipboard", colorText: Get.theme.primaryColor, backgroundColor: Get.theme.dialogBackgroundColor, snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2), maxWidth: 250));
                  },
                  icon: SvgPicture.asset("assets/icons/discord.svg")),
              IconButton(
                  tooltip: "Github",
                  onPressed: () async {
                    launchUrl(Uri.parse("https://github.com/Stem-LG/"));
                  },
                  icon: SvgPicture.asset("assets/icons/github.svg")),
            ],
          ),
        ],
      ),
    );
  }
}
