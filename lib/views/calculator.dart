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
      sectionName = "Information Technology - not available";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Math",
            onChange: (v) {
              scoreC.grades["math"] = int.parse(v);
            }),
        NumberField(
            label: "Algorithms",
            onChange: (v) {
              scoreC.grades["algorithms"] = int.parse(v);
            }),
        NumberField(
            label: "Physics",
            onChange: (v) {
              scoreC.grades["physics"] = int.parse(v);
            }),
        NumberField(
            label: "STI",
            onChange: (v) {
              scoreC.grades["sti"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/info-old") {
      sectionName = "Information Technology - old";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Math",
            onChange: (v) {
              scoreC.grades["math"] = int.parse(v);
            }),
        NumberField(
            label: "Algorithms",
            onChange: (v) {
              scoreC.grades["algorithms"] = int.parse(v);
            }),
        NumberField(
            label: "Physics",
            onChange: (v) {
              scoreC.grades["physics"] = int.parse(v);
            }),
        NumberField(
            label: "TIC",
            onChange: (v) {
              scoreC.grades["tic"] = int.parse(v);
            }),
        NumberField(
            label: "DataBases",
            onChange: (v) {
              scoreC.grades["db"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/science") {
      sectionName = "Experemental Science";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Math",
            onChange: (v) {
              scoreC.grades["math"] = int.parse(v);
            }),
        NumberField(
            label: "Physics",
            onChange: (v) {
              scoreC.grades["physics"] = int.parse(v);
            }),
        NumberField(
            label: "science",
            onChange: (v) {
              scoreC.grades["science"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/tech") {
      sectionName = "Technology";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Technology",
            onChange: (v) {
              scoreC.grades["algorithms"] = int.parse(v);
            }),
        NumberField(
            label: "Math",
            onChange: (v) {
              scoreC.grades["math"] = int.parse(v);
            }),
        NumberField(
            label: "Physics",
            onChange: (v) {
              scoreC.grades["physics"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/math") {
      sectionName = "Mathematics";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Math",
            onChange: (v) {
              scoreC.grades["math"] = int.parse(v);
            }),
        NumberField(
            label: "Physics",
            onChange: (v) {
              scoreC.grades["physics"] = int.parse(v);
            }),
        NumberField(
            label: "science",
            onChange: (v) {
              scoreC.grades["science"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/lettres") {
      sectionName = "Literature";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Arabic",
            onChange: (v) {
              scoreC.grades["arab"] = int.parse(v);
            }),
        NumberField(
            label: "Philosophy",
            onChange: (v) {
              scoreC.grades["physics"] = int.parse(v);
            }),
        NumberField(
            label: "his/geo",
            onChange: (v) {
              scoreC.grades["his/geo"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/ecogest") {
      sectionName = "Economy & Management";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Economy",
            onChange: (v) {
              scoreC.grades["economy"] = int.parse(v);
            }),
        NumberField(
            label: "Management",
            onChange: (v) {
              scoreC.grades["management"] = int.parse(v);
            }),
        NumberField(
            label: "Math",
            onChange: (v) {
              scoreC.grades["math"] = int.parse(v);
            }),
        NumberField(
            label: "His/Geo",
            onChange: (v) {
              scoreC.grades["his/geo"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
            })
      ];
    } else if (Get.currentRoute == "/sport") {
      sectionName = "Sport";
      Fields = [
        NumberField(
            label: "Average",
            onChange: (v) {
              scoreC.grades["average"] = int.parse(v);
            }),
        NumberField(
            label: "Science",
            onChange: (v) {
              scoreC.grades["science"] = int.parse(v);
            }),
        NumberField(
            label: "Sport-SP",
            onChange: (v) {
              scoreC.grades["physics"] = int.parse(v);
            }),
        NumberField(
            label: "Physical edu",
            onChange: (v) {
              scoreC.grades["science"] = int.parse(v);
            }),
        NumberField(
            label: "Philosophy",
            onChange: (v) {
              scoreC.grades["philosophy"] = int.parse(v);
            }),
        NumberField(
            label: "French",
            onChange: (v) {
              scoreC.grades["french"] = int.parse(v);
            }),
        NumberField(
            label: "English",
            onChange: (v) {
              scoreC.grades["english"] = int.parse(v);
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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Section: ${sectionName}",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Get.theme.primaryColor),
          ),
          Container(
            width: 600,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: Fields,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 35,
            child: ElevatedButton(
                onPressed: () {
                  scoreC.calculateScore(section: Get.currentRoute.substring(1));
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Obx(() => Text(
                'Score: ${scoreC.score.value}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Get.theme.primaryColor),
              )),
        ]),
      ),
      drawer: MainDrawer(scaffoldKey: _scaffoldKey,),
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
