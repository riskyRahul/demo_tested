import 'package:flutter/material.dart';
import 'package:test/constant/images_const.dart';
import 'package:test/models/items.dart';
import 'package:test/models/story_model.dart';
import 'package:test/models/user_model.dart';

List<ItemModel> offersList = [
  ItemModel(
      bgColors: const Color(0xFFFFF0B2),
      imageUrl: offer_1,
      name: "\t\tBody mist"),
  ItemModel(
      bgColors: const Color(0xFFFFFFFF),
      imageUrl: offer_2,
      name: "\t\t\t\tOffers"),
  ItemModel(
      bgColors: const Color(0xFFFFFFFF),
      imageUrl: offer_3,
      name: "Night routine"),
  ItemModel(
      bgColors: const Color(0xFFFFFFFF),
      imageUrl: offer_4,
      name: "\t\t\t\tJust in"),
  ItemModel(
      bgColors: const Color(0xFFFFFFFF),
      imageUrl: offer_5,
      name: "\t\t\t\t\t\tSale"),
  ItemModel(
      bgColors: const Color(0xFFFFFFFF),
      imageUrl: offer_4,
      name: "\t\t\t\tJust in"),
  ItemModel(
      bgColors: const Color(0xFFFFFFFF),
      imageUrl: offer_4,
      name: "\t\t\t\tJust in"),
  ItemModel(
      bgColors: const Color(0xFFFFFFFF),
      imageUrl: offer_3,
      name: "Night routine")
];

List<ItemModel> categoryList = [
  ItemModel(
      bgColors: const Color(0xFFE5EDCE), imageUrl: catg_1, name: "Skincare"),
  ItemModel(
      bgColors: const Color(0xFFD7F0F0), imageUrl: catg_2, name: "haircare"),
  ItemModel(
      bgColors: const Color(0xFFE3CAEF), imageUrl: catg_3, name: "bodycare"),
  ItemModel(
      bgColors: const Color(0xFFD9B8AA), imageUrl: catg_4, name: "makeup"),
  ItemModel(
      bgColors: const Color(0xFFCEEDE2), imageUrl: catg_5, name: "fragrance"),
  ItemModel(
      bgColors: const Color(0xFFC7D2F9),
      imageUrl: catg_6,
      name: "phy(for guys)"),
  ItemModel(
      bgColors: const Color(0xFFF1E5B3), imageUrl: catg_7, name: "gifting"),
];

final List<Story> stories =  [
 const Story(
    url: story_1,
    media: MediaType.image,
    duration: Duration(seconds: 3),
    user: User(
      name: 'John Doe',
      profileImageUrl: 'https://wallpapercave.com/wp/AYWg3iu.jpg',
    ),
  ),
  const Story(
    url: story_2,
    media: MediaType.image,
    user: User(
      name: 'John Doe',
      profileImageUrl: 'https://wallpapercave.com/wp/AYWg3iu.jpg',
    ),
    duration: Duration(seconds: 7),
  ),
];
