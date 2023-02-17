import 'package:flutter/material.dart';
import 'package:mobilewebapp/screen/home/components/collection.dart';

import '../../../constants.dart';

class CollectionList extends StatelessWidget {
  const CollectionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Handpicked Collections',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Collection(
                name: 'Personal Care',
                imagepath: 'images/collection1.png',
              ),
              const Collection(
                name: 'Handbags',
                imagepath: 'images/collection2.png',
              ),
              const Collection(
                name: 'Wrist Watches',
                imagepath: 'images/collection3.png',
              ),
              const Collection(
                name: 'Sun Glasses',
                imagepath: 'images/collection4.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
