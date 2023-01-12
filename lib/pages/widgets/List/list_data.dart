import 'package:flutter/material.dart';

class ListData{
  const ListData({required this.requiredby,required this.taskname,required this.date, required this.cta});
  final String taskname;
  final String date;
  final String requiredby;
  final VoidCallback cta;
}

List<ListData> tasklist = <ListData>[
  ListData(taskname: 'CTA-1', cta: (){print('CTA1');}, date: 'Mon', requiredby: 'Immediate'),
  ListData(taskname: 'CTA-2', cta: (){print('CTA1');}, date: 'Tue', requiredby: 'This Week'),


];