import 'package:flutter/material.dart';
import 'package:zarity_task/pages/widgets/List/lists.dart';
import 'package:zarity_task/pages/widgets/insights/insights.dart';
import 'constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.format_align_left,
                    color: Colors.black,
                    size: 30,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.black,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                       Text(
                        'Good Afternoon',
                        style: TextStyle(
                            color: Color(0xff0500F3),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                       Text(
                        'John Doe',
                        style: TextStyle(
                            color: kBlackColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Container(
                    width: 115,
                    height: 28,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFE600),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(
                      child:  Text('Show Dialouge', style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          ),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
              Insights(),
            SizedBox(height: 200,child: ShowLists())
          ],
        ),
      ),
    );
  }
}
