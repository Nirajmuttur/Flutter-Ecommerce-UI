import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.imagepath,
  }) : super(key: key);
  final String name, description, price, imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2 - 27,
      padding: EdgeInsets.only(left: 30.0),
      child: Column(children: [
        Image.asset(imagepath),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  const Icon(Icons.favorite_border),
                ],
              ),
              Text(
                description,
                style: const TextStyle(fontWeight: FontWeight.w100),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '\$$price',
                style: const TextStyle(fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
