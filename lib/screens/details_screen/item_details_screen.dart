import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/models.dart';
import '../../widgets/round_button.dart';
import 'widgets/details.dart';
import 'widgets/expandable.dart';
import 'widgets/header.dart';

class ItemDetailsSreen extends StatelessWidget {
  static const routeName = 'item-details-screen/';
  final MGrocery? item;

  const ItemDetailsSreen({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(item: item),
              Details(item: item!),
              SizedBox(height: 15),
              Divider(color: kBorderColor),
              Expandable(
                title: 'Product Details',
                description: "",
                trailing: SizedBox(height: 0,)),

              Divider(color: kBorderColor, indent: 15, endIndent: 15),
              Expandable(
                title: 'Nutrition',
                trailing: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSecondaryColor,
                  ),
                  child: Text('200gm'),
                ),
              ),
              Divider(color: kBorderColor, indent: 15, endIndent: 15),
              Expandable(
                title: 'Reviews',
                trailing: Row(
                  children: List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          )),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: RoundButton(title: 'Add To Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
