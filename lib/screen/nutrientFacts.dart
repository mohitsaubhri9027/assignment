import 'package:flutter/material.dart';

class NutrientFact extends StatelessWidget {
  const NutrientFact(
      {super.key,
      this.height,
      required this.horizontal,
      required this.vertical,
      required this.space});
  final double? height;
  final double horizontal;
  final double vertical;
  final double space;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Nutrient Fact",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: space),
          SizedBox(
              height: height,
              child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: [
                      const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Calories'),
                            Text(
                              '121',
                            ),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Fat'),
                            Text(
                              '0.4g',
                            ),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Saturated'),
                            Text(
                              '0.2g',
                            ),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Trans'),
                            Text(
                              '0',
                            ),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Polyunsaturated'),
                            Text(
                              '0.1g',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).toList())),
        ]),
      ),
    );
  }
}
