import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:uniscore/controllers/scoreController.dart';
import 'package:uniscore/views/components/drawer.dart';
import 'package:uniscore/views/components/numberfield.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScoreController scoreC = new ScoreController();
    List<Widget> Fields = [];
    String sectionName = "Default";
    if (Get.currentRoute == "/info") {
      sectionName = "Information Technology".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Math".tr,
            onChange: (v) {
              scoreC.grades["math"] = double.parse(v);
            }),
        NumberField(
            label: "Algorithms".tr,
            onChange: (v) {
              scoreC.grades["algorithms"] = double.parse(v);
            }),
        NumberField(
            label: "Physics".tr,
            onChange: (v) {
              scoreC.grades["physics"] = double.parse(v);
            }),
        NumberField(
            label: "STI".tr,
            onChange: (v) {
              scoreC.grades["sti"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/info-old") {
      sectionName = "Information Technology - old".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Math".tr,
            onChange: (v) {
              scoreC.grades["math"] = double.parse(v);
            }),
        NumberField(
            label: "Algorithms".tr,
            onChange: (v) {
              scoreC.grades["algorithms"] = double.parse(v);
            }),
        NumberField(
            label: "Physics".tr,
            onChange: (v) {
              scoreC.grades["physics"] = double.parse(v);
            }),
        NumberField(
            label: "TIC".tr,
            onChange: (v) {
              scoreC.grades["tic"] = double.parse(v);
            }),
        NumberField(
            label: "DataBases".tr,
            onChange: (v) {
              scoreC.grades["db"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/science") {
      sectionName = "Experemental Science".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Math".tr,
            onChange: (v) {
              scoreC.grades["math"] = double.parse(v);
            }),
        NumberField(
            label: "Physics".tr,
            onChange: (v) {
              scoreC.grades["physics"] = double.parse(v);
            }),
        NumberField(
            label: "Science".tr,
            onChange: (v) {
              scoreC.grades["science"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/tech") {
      sectionName = "Technology".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Technology".tr,
            onChange: (v) {
              scoreC.grades["algorithms"] = double.parse(v);
            }),
        NumberField(
            label: "Math".tr,
            onChange: (v) {
              scoreC.grades["math"] = double.parse(v);
            }),
        NumberField(
            label: "Physics".tr,
            onChange: (v) {
              scoreC.grades["physics"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/math") {
      sectionName = "Mathematics".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Math".tr,
            onChange: (v) {
              scoreC.grades["math"] = double.parse(v);
            }),
        NumberField(
            label: "Physics".tr,
            onChange: (v) {
              scoreC.grades["physics"] = double.parse(v);
            }),
        NumberField(
            label: "science".tr,
            onChange: (v) {
              scoreC.grades["science"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/lettres") {
      sectionName = "Literature".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Arabic".tr,
            onChange: (v) {
              scoreC.grades["arab"] = double.parse(v);
            }),
        NumberField(
            label: "Philosophy".tr,
            onChange: (v) {
              scoreC.grades["physics"] = double.parse(v);
            }),
        NumberField(
            label: "His/Geo".tr,
            onChange: (v) {
              scoreC.grades["his/geo"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/ecogest") {
      sectionName = "Economy & Management".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Economy".tr,
            onChange: (v) {
              scoreC.grades["economy"] = double.parse(v);
            }),
        NumberField(
            label: "Management".tr,
            onChange: (v) {
              scoreC.grades["management"] = double.parse(v);
            }),
        NumberField(
            label: "Math".tr,
            onChange: (v) {
              scoreC.grades["math"] = double.parse(v);
            }),
        NumberField(
            label: "His/Geo".tr,
            onChange: (v) {
              scoreC.grades["his/geo"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/sport") {
      sectionName = "Sport".tr;
      Fields = [
        NumberField(
            label: "Average".tr,
            onChange: (v) {
              scoreC.grades["average"] = double.parse(v);
            }),
        NumberField(
            label: "Science".tr,
            onChange: (v) {
              scoreC.grades["science"] = double.parse(v);
            }),
        NumberField(
            label: "Sport-SP".tr,
            onChange: (v) {
              scoreC.grades["physics"] = double.parse(v);
            }),
        NumberField(
            label: "Physical Edu".tr,
            onChange: (v) {
              scoreC.grades["science"] = double.parse(v);
            }),
        NumberField(
            label: "Philosophy".tr,
            onChange: (v) {
              scoreC.grades["philosophy"] = double.parse(v);
            }),
        NumberField(
            label: "French".tr,
            onChange: (v) {
              scoreC.grades["french"] = double.parse(v);
            }),
        NumberField(
            label: "English".tr,
            onChange: (v) {
              scoreC.grades["english"] = double.parse(v);
            })
      ];
    }
    double score = 0.0;
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: SvgPicture.asset(
          "assets/icons/arrow-left.svg",
          color: Get.theme.scaffoldBackgroundColor,
        ),
      ),
      body: Center(
        child: Container(
          width: 950,
          child: ListView(shrinkWrap: true, children: [
            Center(
              child: Text(
                "Section: ".tr + sectionName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Get.theme.primaryColor),
              ),
            ),
            Center(
              child: Container(
                width: 950,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: Fields,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 35,
                child: ElevatedButton(
                    onPressed: () {
                      scoreC.calculateScore(section: Get.currentRoute.substring(1));
                    },
                    child: Text(
                      "Calculate".tr,
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Obx(() => Center(
                  child: Text(
                    'FG:'.tr + scoreC.score.value.toString(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Get.theme.primaryColor),
                  ),
                )),
          ]),
        ),
      ),
      drawer: MainDrawer(
        scaffoldKey: _scaffoldKey,
      ),
      appBar: AppBar(
        title: Center(child: Text("Uniscore")),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            color: Get.theme.scaffoldBackgroundColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
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
      ),
    );
  }
}
