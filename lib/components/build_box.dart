import 'package:flutter/material.dart';
import 'package:session3/components/cart_couter.dart';
import 'package:session3/constants.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.55),
                    padding: EdgeInsets.only(
                        right: 20, left: 20, top: size.height * 0.025),
                    decoration: const BoxDecoration(
                        color: kLorem,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset("/images/line.png"),
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                  text: "Lorem Chair\n",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                TextSpan(
                                  text: "Relax, Comfortable",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ])),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Cart(),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit in nunc, et sit velit at aliquam tortor. Tristique ut ante nec nullam urna. Ultrices ac lorem rutrum purus. Nunc.",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: const <Widget>[
                                  Text(
                                    "Color",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: kBlackColor),
                                  ),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  ColorDetail(
                                    color: kBlackColor,
                                  ),
                                  ColorDetail(
                                    color: kRedColor,
                                  ),
                                  ColorDetail(
                                    color: kGrayColor,
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                text: "Total Rp. 99.999",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ])),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: kPrimaryColor),
                            child: const Center(
                                child: Text(
                              'Add to cart',
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                          Image.asset("/images/chair.png"),
                        ])),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class ColorDetail extends StatelessWidget {
  final Color color;
  const ColorDetail({
    Key? key,
    this.color = kBlackColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
