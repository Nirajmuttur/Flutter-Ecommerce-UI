import 'package:flutter/material.dart';

import '../../../constants.dart';

class Brands extends StatelessWidget {
  const Brands({
    Key? key,
    required this.imagepath,
  }) : super(key: key);
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.1 - 27,
        height: MediaQuery.of(context).size.width * 0.1 - 27,
        decoration: const BoxDecoration(
            color: accent, borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Image.asset(imagepath));
  }
}
