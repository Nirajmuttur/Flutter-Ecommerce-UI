import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.title, required this.color,
  }) : super(key: key);
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: const EdgeInsets.only(left: 20.0, top: 25.0, right: 20.0),
      child: Row(children: [
        Text(title,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 30)),
        const Spacer(),
        const Text('View All',
            style: TextStyle(
              color: primaryColor,
            )),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_forward_ios_sharp,
            size: 20,
          ),
        )
      ]),
    );
  }
}
