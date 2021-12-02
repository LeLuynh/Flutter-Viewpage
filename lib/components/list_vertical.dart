import 'package:flutter/material.dart';
import 'package:session3/constants.dart';
import 'package:session3/models/item_horizontal.dart';

class ListV extends StatefulWidget {
  const ListV({Key? key, required this.items, required this.click})
      : super(key: key);
  final List<ItemH> items;
  final Function click;

  @override
  _ListVState createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = widget.items[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () {
              widget.click();
            },
            child: Container(
              height: 147,
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: kLineStroke,
                  width: 1,
                ),
                color: kWhiteColor,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: item.imageProvider,
                      width: 129,
                      height: 129,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        item.name,
                        style: const TextStyle(
                            color: kBlueDark,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        item.subTitle,
                        style: TextStyle(
                            color: kBlueDark.withOpacity(0.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: kPrimaryColor,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: kPrimaryColor,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: kPrimaryColor,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: kPrimaryColor,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: kPrimaryColor,
                            size: 14,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        item.formattedTotalItemPrice,
                        style: const TextStyle(
                            color: kBlueDark,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
