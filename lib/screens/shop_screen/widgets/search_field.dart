import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocery_shop_flutter/mq.dart';

import '../../../constants.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 40,
      width: MQuery.width! - 100,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1.5,
          color: Colors.grey.withOpacity(0.5)
        )

      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search...',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
        ),
      ),
    );
  }
}
