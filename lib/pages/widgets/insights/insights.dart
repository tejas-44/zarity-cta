

import 'package:flutter/material.dart';
import 'insight_card.dart';
import 'insight_data.dart';

class Insights extends StatelessWidget {
  const Insights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text('View Your Insights'),
          const SizedBox(height: 10,),
          GridView.count(

            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,
            children: List.generate(insights.length, (index) {

          return InsightCard(insight: insights[index],);
            },
            )
            ),
        ],
      ),
    );
  }
}
