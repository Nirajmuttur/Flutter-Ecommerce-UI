import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
              image: DecorationImage(
                  image: AssetImage('images/banner1.png'),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * .4,
            right: 0,
            top: 10,
            bottom: 10,
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.lighten,
                  color: const Color(0xffDEDEDE).withOpacity(0.7),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Carry your Funk',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: primaryColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Trendy handbags collection for your \nparty animal',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)))),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.arrow_forward),
                              Text('See More')
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
