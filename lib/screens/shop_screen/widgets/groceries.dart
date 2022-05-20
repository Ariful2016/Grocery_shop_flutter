import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../constants.dart';
import '../../../models/models.dart';
import '../../../mq.dart';

class Groceries extends StatelessWidget {
  Groceries({
    Key? key,
  }) : super(key: key);

  final List<MGroceries> _items = [
    MGroceries(
      title: 'Fresh Fruits',
      color: HexColor('#F8A44C').withOpacity(0.15),
      url: 'assets/images/fresh_fruits.png',
    ),
    MGroceries(
      title: 'Meat & Fish',
      color: kPrimaryColor.withOpacity(0.15),
      url: 'assets/images/meat_fish.png',
    ),
    MGroceries(
      title: 'Rice',
      color: kPrimaryColor.withOpacity(0.15),
      url: 'assets/images/rice.png',
    ),
    MGroceries(
      title: 'Bakery',
      color: kPrimaryColor.withOpacity(0.15),
      url: 'assets/images/bakery.png',
    ),
    MGroceries(
      title: 'Beverages',
      color: kPrimaryColor.withOpacity(0.15),
      url: 'assets/images/beverages.png',
    ),
    MGroceries(
      title: 'Pulses',
      color: kPrimaryColor.withOpacity(0.15),
      url: 'assets/images/pulses.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MQuery.height! * 0.13,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (_, i) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: MQuery.width! * 0.6,
          decoration: BoxDecoration(
            color: _items[i].color,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Image.asset(_items[i].url),
              SizedBox(width: 10),
              Text(_items[i].title, style: kTitleStyle),
            ],
          ),
        ),
        separatorBuilder: (_, __) => SizedBox(width: 10),
      ),
    );
  }
}
