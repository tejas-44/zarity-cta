import 'package:flutter/material.dart';
import 'package:zarity_task/pages/constants.dart';
import 'package:zarity_task/pages/widgets/insights/insight_data.dart';

class InsightCard extends StatelessWidget {
  const InsightCard({super.key,required this.insight});
  final Insight insight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: insight.cta,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: kGreyColor,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 20, 0 , 0),
                  child: Text(insight.title,style: kBoldWhiteStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black,
                      ),
                      child: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white, size: 20,),
                    ),
                  ),
                ),

              ]
          )
      ),
    );
  }
}
