import 'package:flutter/material.dart';

class Collection extends StatelessWidget {
  const Collection({
    Key? key, required this.name, required this.imagepath,
  }) : super(key: key);
  final String name, imagepath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.2 - 27,
          height: MediaQuery.of(context).size.width * 0.2 - 27,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagepath),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ))
      ],
    );
  }
}
