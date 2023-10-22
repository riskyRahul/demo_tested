import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/constant/colors_const.dart';
import 'package:test/constant/constent.dart';
import 'package:test/constant/images_const.dart';
import 'package:test/screens/offer_details.dart';
import 'package:test/widget/offer_items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 0,
          title: Row(children: [
            SvgPicture.asset(logo),
            const SizedBox(width: 10),
            Image.asset(vd),
            const SizedBox(width: 10),
            SizedBox(height: 22, child: Image.asset(buff)),
          ]),
          elevation: 5,
          backgroundColor: Colors.white,
          actions: [
            SvgPicture.asset(searchIcon),
            const SizedBox(width: 24),
            SvgPicture.asset(heartIcon),
            const SizedBox(width: 24),
            SizedBox(
                height: 48,
                width: 28,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(cartIcon)),
                    Align(
                      alignment: Alignment(-1, -0.6),
                      child: Container(
                        height: 12,
                        width: 12,
                        margin: EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                            color: Colors.pink, shape: BoxShape.circle),
                        child: const Center(
                            child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text("2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "DIN Next Rounded LT Pro",
                                  fontSize: 8.0)),
                        )),
                      ),
                    )
                  ],
                )),
            const SizedBox(width: 24),
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text("hi plumster!",
                  style: TextStyle(
                      color: primeryColor,
                      fontFamily: "DIN Next Rounded LT Pro",
                      fontSize: 19.0,
                      fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 100, //MediaQuery.sizeOf(context).width * 0.25,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: offersList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return const OfferDetailesScreen();
                          },
                        );

                        // showDialog(
                        //     context: context,
                        //     barrierDismissible: false,
                        //     builder: (BuildContext context) {
                        //       return Dialog(
                        //         backgroundColor: Colors.transparent,
                        //         insetPadding: const EdgeInsets.all(0.0),
                        //         // elevation: 5,
                        //         // shape: RoundedRectangleBorder(
                        //         //     borderRadius: BorderRadius.circular(
                        //         //         20.0)), //this right here
                        //         child: Container(
                        //           color: Colors.transparent,
                        //             height: MediaQuery.sizeOf(context).height,
                        //             width: MediaQuery.sizeOf(context).width,
                        //             child: const OfferDetailesScreen()),
                        //       );
                        //     });
                      },
                      child: OfferItemWidget(itemModel: offersList[index]));
                },
              ),
            ),
            const SizedBox(height: 20),
            CarouselSlider(
              options: CarouselOptions(
                  height: 330.0,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  reverse: false,
                  onPageChanged: (int index, CarouselPageChangedReason reason) {
                    setState(() {
                      currentIndexPage = index;
                    });
                  }),
              items: [1, 2, 3, 4].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Image.asset(banner));
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: DotsIndicator(
                dotsCount: 4,
                position: currentIndexPage,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  color: const Color(0xFFEE3175),
                  activeColor: const Color(0xFFEE3175),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 60, //MediaQuery.sizeOf(context).width * 0.25,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 60,
                    // width: 120,
                    margin: const EdgeInsets.only(right: 14.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: categoryList[index].bgColors,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(categoryList[index].name,
                              style: const TextStyle(
                                  color: textPrimeryColor,
                                  fontFamily: "DIN Next Rounded LT Pro",
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(width: 10),
                          SizedBox(
                              child: Image.asset(categoryList[index].imageUrl))
                        ]),
                  );
                },
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
