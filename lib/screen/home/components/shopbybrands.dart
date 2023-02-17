import 'package:flutter/material.dart';
import 'package:mobilewebapp/screen/home/components/brands.dart';

class ShopByBrands extends StatelessWidget {
  const ShopByBrands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40.0, bottom: 45.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Shop by Brands',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 30),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Brands(
                imagepath: 'images/logo1.png',
              ),
              Brands(
                imagepath: 'images/logo2.png',
              ),
              Brands(
                imagepath: 'images/logo3.png',
              ),
              Brands(
                imagepath: 'images/logo4.png',
              ),
              Brands(
                imagepath: 'images/logo5.png',
              ),
              Brands(
                imagepath: 'images/logo6.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
