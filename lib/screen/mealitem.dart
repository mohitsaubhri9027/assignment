import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  const MealItem(
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
            "Meal Item",
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
                          title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Greek Organic Yougurt '),
                              Text('136'),
                            ],
                          ),
                          Text(' Krikland,227g')
                        ],
                      )),
                      const ListTile(
                          title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Honey'),
                              Text('60'),
                            ],
                          ),
                          Text(' Krikland Honey ,20g')
                        ],
                      )),
                      const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Serving Size'),
                            Text(
                              '1 large',
                              style: TextStyle(color: Colors.deepPurple),
                            ),
                          ],
                        ),
                      ),
                      const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Number of Serving'),
                            Text(
                              '1 ',
                              style: TextStyle(color: Colors.deepPurple),
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
