import 'package:flutter/material.dart';
import 'package:test/constant/colors_const.dart';
import 'package:test/models/items.dart';

class OfferItemWidget extends StatelessWidget {
  final ItemModel itemModel;
  const OfferItemWidget({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).width * 0.19,
            width: MediaQuery.sizeOf(context).width * 0.19,
            margin: const EdgeInsets.only(right: 12.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                  colors: [secondryColor, primeryColor],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.5,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              margin: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: itemModel.bgColors,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Center(child: Image.asset(itemModel.imageUrl)),
            ),
          ),
          Text(itemModel.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: textPrimeryColor,
                  fontFamily: "DIN Next Rounded LT Pro",
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
