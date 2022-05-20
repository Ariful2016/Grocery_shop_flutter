import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocery_shop_flutter/screens/shop_screen/widgets/banners.dart';


import '../../constants.dart';
import '../../mq.dart';
import 'widgets/best_selling.dart';
import 'widgets/exclusive_offers.dart';
import 'widgets/groceries.dart';
import 'widgets/meats.dart';
import 'widgets/search_field.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MQuery().init(context);
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            children: [
              //SvgPicture.asset('assets/icons/carrot.svg'),
              //SizedBox(height: 5),
              //Text('Dhaka, Bangladesh'),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/images/list.png'),
                  ),
                  SearchField(),

                ],
              ),
              SizedBox(height: 10),
              Banners(),
              SizedBox(height: 10),
              _buildSectiontitle('Exclusive Offers', () {}),
              ExclusiveOffers(),
              SizedBox(height: 10),
              _buildSectiontitle('Best Sellings', () {}),
              BestSellings(),
              SizedBox(height: 10),
              _buildSectiontitle('Groceries', () {}),
              Groceries(),
              SizedBox(height: 10),
              _buildSectiontitle('Meats', () {}),
              Meats(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectiontitle(String title, [Function? onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kTitleStyle.copyWith(fontSize: 18),
          ),
          InkWell(
            onTap: onTap!() ?? () {},
            child: Text(
              'See all',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
