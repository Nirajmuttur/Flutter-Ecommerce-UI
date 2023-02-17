import 'package:flutter/material.dart';

import '../../../constants.dart';

class Headline extends StatelessWidget {
  const Headline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      decoration: const BoxDecoration(color: Color(0xffF0F0F0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            'We are currently experiencing local customs clearance delays. For the latest updates, please check your order status ',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'here',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: primaryColor,
                  decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
