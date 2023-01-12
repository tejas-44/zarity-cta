
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zarity_task/pages/widgets/List/list_data.dart';
import 'list_card.dart';

class ShowLists extends StatelessWidget {
  const ShowLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Show a list",
            style: TextStyle(
                color: Color(0xff0500F3),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('lists').snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return ListView(
                  shrinkWrap: true,

                  children: snapshot.data!.docs.map((document){
                    return ListCard(requiredby: document['requiredby'], taskname: document['taskname'], date: document['date'], cta: document['cta']);
                  }).toList(),
                );
              })

          // ListView.builder(
          //     itemCount: tasklist.length,
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, int index) {
          //       return ListCard(
          //         taskitem: tasklist[index],
          //       );
          //     })
        ],
      ),
    );
  }
}
