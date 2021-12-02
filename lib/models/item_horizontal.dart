import 'package:flutter/material.dart';

@immutable
class ItemH {
  const ItemH({
    required this.totalPriceCents,
    required this.name,
    required this.subTitle,
    required this.imageProvider,
  });
  final int totalPriceCents;
  final String name;
  final String subTitle;
  final ImageProvider imageProvider;
  String get formattedTotalItemPrice =>
      '\Rp.${(totalPriceCents / 1000.0).toStringAsFixed(3)}';
}

const List<ItemH> ItemsH = [
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list3.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 1299,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list4.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list5.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list6.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list1.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list2.png'),
  ),
];

const List<ItemH> ItemsHTable = [
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt3.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 1299,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt4.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list5.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt6.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt1.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt2.png'),
  ),
];
