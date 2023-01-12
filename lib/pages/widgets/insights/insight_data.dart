import 'package:flutter/material.dart';

class Insight {
  const Insight({required this.title, required this.cta});
  final String title;
  final VoidCallback cta;
}

List<Insight> insights = <Insight>[
  Insight(
    title: 'CTA-1',
    cta: () {
      print('CTA1');
    },
  ),
  Insight(
    title: 'CTA-2',
    cta: () {
      print('CTA1');
    },
  ),
  Insight(
    title: 'CTA-3',
    cta: () {
      print('CTA1');
    },
  ),
  Insight(
    title: 'CTA-4',
    cta: () {
      print('CTA1');
    },
  ),
  Insight(
    title: 'CTA-5',
    cta: () {
      print('CTA1');
    },
  ),
];
