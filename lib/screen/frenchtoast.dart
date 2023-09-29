import 'package:assignment1/custom_widget/linearpercentindicator.dart';
import 'package:assignment1/custom_widget/percentindicatir.dart';
import 'package:assignment1/screen/mealitem.dart';
import 'package:assignment1/screen/nutrientFacts.dart';
import 'package:flutter/material.dart';

class FrenchToast extends StatefulWidget {
  const FrenchToast({super.key});

  @override
  State<FrenchToast> createState() => _FrenchToastState();
}

class _FrenchToastState extends State<FrenchToast> {
  int count = 1;
  String? images;
  @override
  void initState() {
    setState(() {
      count = 1;
    });
    super.initState();
  }

  String ImageSelect() {
    return "assets/images${count}.jpeg";
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.30),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              setState(() {
                if (count > 1) {
                  count--;
                }
              });
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      ImageSelect(),
                    ),
                    fit: BoxFit.fill)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (count < 3) {
                    count++;
                  }
                });
              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.03, vertical: height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "French toast with Berries",
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            )
                          ]),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        "Number of Servings",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(121, 120, 120, 1)),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PercentIndicator(
                            height: height * 0.19,
                            width: width * 0.22,
                            spacebetween: height * 0.01,
                            data: "Carbs",
                            percent: 0.45,
                            progresscolor:
                                const Color.fromARGB(255, 34, 180, 173),
                            data1: "31.1g",
                            data2: "(93%)",
                            unprogresscolor:
                                const Color.fromARGB(255, 148, 192, 190),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          PercentIndicator(
                            height: height * 0.19,
                            width: width * 0.2,
                            spacebetween: height * 0.01,
                            data: "Fat",
                            progresscolor:
                                const Color.fromARGB(255, 230, 52, 28),
                            percent: 0.8,
                            data1: "2.5g",
                            data2: "(80%)",
                            unprogresscolor:
                                const Color.fromARGB(255, 219, 116, 102),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          PercentIndicator(
                            height: height * 0.19,
                            width: width * 0.2,
                            spacebetween: height * 0.01,
                            progresscolor:
                                const Color.fromARGB(255, 180, 199, 7),
                            data: "Protein",
                            percent: 0.2,
                            data1: "9.5g",
                            data2: "(3%)",
                            unprogresscolor:
                                const Color.fromARGB(255, 219, 224, 167),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          PercentIndicator(
                            height: height * 0.19,
                            width: width * 0.2,
                            spacebetween: height * 0.01,
                            data: "Calories",
                            progresscolor:
                                const Color.fromARGB(255, 34, 180, 173),
                            percent: 0.85,
                            data2: "",
                            data1: "1,121",
                            unprogresscolor:
                                const Color.fromARGB(255, 164, 214, 212),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            MealItem(
              space: height * 0.005,
              horizontal: height * 0.02,
              vertical: width * 0.03,
              height: height * 0.3,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.03),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Percent of Daily Goals",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.05),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          LinearPercentIndicators(
                              lineheight: height * 0.01,
                              linewidth: width * 0.2,
                              progressColor:
                                  const Color.fromARGB(255, 21, 201, 201),
                              unprogressColor:
                                  const Color.fromARGB(255, 171, 236, 231),
                              percent: 0.11,
                              data: "11%",
                              data1: "Cabs"),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          LinearPercentIndicators(
                              lineheight: height * 0.01,
                              progressColor:
                                  const Color.fromARGB(255, 226, 45, 33),
                              unprogressColor:
                                  const Color.fromARGB(255, 240, 183, 183),
                              linewidth: width * 0.2,
                              percent: 0.02,
                              data: "2%",
                              data1: "Fat"),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          LinearPercentIndicators(
                              lineheight: height * 0.01,
                              progressColor:
                                  const Color.fromARGB(255, 188, 207, 12),
                              unprogressColor:
                                  const Color.fromARGB(255, 235, 240, 167),
                              linewidth: width * 0.2,
                              percent: 0.02,
                              data: "2%",
                              data1: "Protein"),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          LinearPercentIndicators(
                              lineheight: height * 0.01,
                              progressColor:
                                  const Color.fromARGB(255, 119, 47, 214),
                              unprogressColor:
                                  const Color.fromARGB(255, 202, 141, 214),
                              linewidth: width * 0.2,
                              percent: 0.05,
                              data: "5%",
                              data1: "Calories"),
                        ],
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            NutrientFact(
              space: height * 0.005,
              horizontal: height * 0.02,
              vertical: width * 0.03,
              height: height * 0.35,
            ),
          ],
        ),
      ),
    );
  }
}
