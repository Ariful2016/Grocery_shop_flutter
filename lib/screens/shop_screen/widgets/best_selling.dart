import 'package:flutter/material.dart';

import '../../../models/models.dart';
import '../../../mq.dart';
import 'grocery_item.dart';

class BestSellings extends StatelessWidget {
  BestSellings({
    Key? key,
  }) : super(key: key);

  final List<MGrocery> _items = [
    MGrocery(
      name: 'Ginger',
      description: '1kg',
      price: 7.99,
      url: 'assets/images/ginger.png',
    ),
    MGrocery(
      name: 'Red Eggs',
      description: '12 pisces',
      price: 5.99,
      url: 'assets/images/egg_red.png',
    ),
    MGrocery(
      name: 'Oils',
      description: '1kg',
      url: 'assets/images/oils.png',
      price: 10.99,
    ),
    MGrocery(
      name: 'Coca Cola',
      description: '250gm',
      price: 1.99,
      url: 'assets/images/coca_cola.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MQuery.height! * 0.3,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (_, i) => GroceryItem(item: _items[i]),
        separatorBuilder: (_, __) => SizedBox(width: 10),
      ),
    );
  }
}
