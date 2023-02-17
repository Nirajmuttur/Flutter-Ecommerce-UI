import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobilewebapp/constants.dart';
import 'package:mobilewebapp/screen/home/components/banner.dart';
import 'package:mobilewebapp/screen/home/components/categories.dart';
import 'package:mobilewebapp/screen/home/components/collection.dart';
import 'package:mobilewebapp/screen/home/components/collectionlist.dart';
import 'package:mobilewebapp/screen/home/components/footer.dart';
import 'package:mobilewebapp/screen/home/components/headline.dart';
import 'package:mobilewebapp/screen/home/components/herosection.dart';
import 'package:mobilewebapp/screen/home/components/productcard.dart';
import 'package:mobilewebapp/screen/home/components/shopbybrands.dart';

import 'components/header.dart';
import 'components/headermenu.dart';
import 'components/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> data = [
    {
      "description": "Blossom Pouch",
      "name": "Grande",
      "imagepath": "images/image1.png",
      "price": "39.49"
    },
    {
      "description": "Leather Coach Bag",
      "name": "Coach",
      "imagepath": "images/image2.png",
      "price": "54.49"
    },
    {
      "description": "Brown Strap Bag",
      "name": "Remus",
      "imagepath": "images/image3.png",
      "price": "57.00"
    },
    {
      "description": "Black Bag",
      "name": "Boujee",
      "imagepath": "images/image4.png",
      "price": "56.49"
    },
  ];
  List<String> footerShop = [
    'Skincare',
    'PersonalCare',
    'Handbags',
    'Apparels',
    'Watches',
    'Eye Wear',
    'Jewellery'
  ];
  List<String> about = ['Contact Us', 'About Us', 'Carrers', 'Press'];
  List<String> policy = [
    'Return Policy',
    'Terms Of Use',
    'Sitemap',
    'Security',
    'Privacy',
    'EPR Compliance'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Header(),
              const Headline(),
              const HeroSection(),
              const Categories(
                color: Colors.white,
                title: 'New Arrivals',
              ),
              Container(
                margin: const EdgeInsets.all(14.0),
                height: MediaQuery.of(context).size.height * 0.5 - 20,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) => ProductCard(
                      name: data[index]["name"].toString(),
                      description: data[index]["description"].toString(),
                      price: data[index]["price"].toString(),
                      imagepath: data[index]["imagepath"].toString()),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const CollectionList(),
              const SizedBox(
                height: 25,
              ),
              const ShopByBrands(),
              const Banners(),
              Footer(footerShop: footerShop, about: about, policy: policy)
            ],
          ),
        ),
      ),
    );
  }
}
