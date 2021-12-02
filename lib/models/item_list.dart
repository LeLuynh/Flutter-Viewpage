import 'package:flutter/material.dart';

@immutable
class Item {
  const Item({
    required this.totalPriceCents,
    required this.name,
    required this.star,
    required this.imageProvider,
  });
  final int totalPriceCents;
  final String name;
  final String star;
  final ImageProvider imageProvider;
  String get formattedTotalItemPrice =>
      '\Rp.${(totalPriceCents / 1000.0).toStringAsFixed(3)}';
}

const List<Item> itemsList = [
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/list1.png'),
  ),
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/list2.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/list3.png'),
  ),
  Item(
    name: 'Spinach Pizza',
    totalPriceCents: 1299,
    star: '4.9',
    imageProvider: AssetImage('images/list4.png'),
  ),
  Item(
    name: 'Veggie Delight',
    totalPriceCents: 99999,
    star: '4',
    imageProvider: AssetImage('images/list5.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/list6.png'),
  ),
];

const List<Item> itemsTable = [
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/listt1.png'),
  ),
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/listt2.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/list3.png'),
  ),
  Item(
    name: 'Spinach Pizza',
    totalPriceCents: 1299,
    star: '4.9',
    imageProvider: AssetImage('images/listt4.png'),
  ),
  Item(
    name: 'Veggie Delight',
    totalPriceCents: 99999,
    star: '4',
    imageProvider: AssetImage('images/listt5.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/listt6.png'),
  ),
];
