import 'package:flutter/material.dart';

import '../../../constants.dart';

class Banners extends StatelessWidget {
  const Banners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                    image: AssetImage('images/banner2.png'), fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 33),
              child: RichText(
                text: const TextSpan(
                  text: 'LIFESTYLE',
                  style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 28,
                      color: Color(0xff97451F)),
                ),
              ),
            ),
          ),
          Positioned(
              top: 120,
              left: 50,
              right: MediaQuery.of(context).size.width * .2,
              child: const Text(
                'Makeup Accessories \nfrom Top Brands',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: Color(0xff97451F)),
              ))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      image: DecorationImage(
                          image: AssetImage('images/banner3.png'),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    right: 0,
                    top: 80,
                    left: MediaQuery.of(context).size.width * .35,
                    child: const Text(
                      'Skincare \nEssentials',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Color(0xffA53F64)),
                    )),
                Positioned(
                  top: 160,
                  left: MediaQuery.of(context).size.width * .35,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.white),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xffA53F64),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      image: DecorationImage(
                          image: AssetImage('images/banner4.png'),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    right: 0,
                    top: 80,
                    left: MediaQuery.of(context).size.width * .35,
                    child: const Text(
                      'Facepacks \n& Essentials',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: primaryColor),
                    )),
                Positioned(
                  top: 160,
                  left: MediaQuery.of(context).size.width * .35,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: Colors.white),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: primaryColor,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ]);
  }
}
