import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:test/constant/colors_const.dart';
import 'package:test/constant/constent.dart';
import 'package:test/constant/images_const.dart';
import 'package:test/widget/story_widget.dart';

class OfferDetailesScreen extends StatefulWidget {
  const OfferDetailesScreen({super.key});

  @override
  State<OfferDetailesScreen> createState() => _OfferDetailesScreenState();
}

class _OfferDetailesScreenState extends State<OfferDetailesScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 24),
      Container(
        height: 58,
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Image.asset(offerTag),
          ),
          const Spacer(),
          SvgPicture.asset(tagIcon),
          const SizedBox(width: 22),
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(closeIcon)),
        ]),
      ),
      Container(
        height: MediaQuery.sizeOf(context).height * 0.718,
      
        width: MediaQuery.sizeOf(context).width,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: StoryScreen(stories: stories),
      ),
      SwipeDetector(
        onSwipeUp: (offset) {
          setState(() {});
          Navigator.of(context).pop();
        },
        child: Container(
          height: 77,
          width: 221,
          color: Colors.transparent,
          margin: const EdgeInsets.only(top: 20),
          child: Stack(
            children: [
              SvgPicture.asset(parabola),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 221,
                      height: 10,
                    ),
                    SvgPicture.asset(swapUp),
                    const SizedBox(height: 5),
                    const Text('swipe up',
                        style:  TextStyle(
                            color: primeryColor,
                            fontFamily: "DIN Next Rounded LT Pro",
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600)),
                    const Text("grab this offer",
                        style:  TextStyle(
                            color: Color(0xFF233F78),
                            fontFamily: "DIN Next Rounded LT Pro",
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
