import 'package:flutter/material.dart';
import 'package:zarity_task/pages/constants.dart';

import 'list_data.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key,required this.requiredby,required this.taskname, required this.date, required this.cta});
  final String taskname;
  final String requiredby;
  final String date;
  final String cta;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text(requiredby),
        Container(
          decoration: BoxDecoration(
            color: kGreyColor,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(taskname, style: const TextStyle(
                        color: Color(0xff0500F3),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),),
                    Text(date)
                  ],
                ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(child: Text('Open Dialouge', style: kBoldWhiteStyle,)),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
