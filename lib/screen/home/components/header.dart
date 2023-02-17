import 'package:flutter/material.dart';
import 'package:mobilewebapp/screen/home/components/menu.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          const Text(
            "CORA'L",
            style: TextStyle(
                color: Color(
                  0xff17494D,
                ),
                fontWeight: FontWeight.w900,
                fontSize: 30.0),
          ),
          const SizedBox(
            width: 40.0,
          ),
          const Menu(),
          const Spacer(),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            height: 45,
            decoration: const BoxDecoration(color: Color(0xffF1F1F1)),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search for products or brands....',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black54,
                  size: 30,
                ),
                focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          )),
          const SizedBox(
            width: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 45,
                width: 45,
                child: const Icon(Icons.favorite_border),
              ),
              Container(
                height: 45,
                width: 45,
                child: const Icon(Icons.person_outline),
              ),
              Container(
                height: 45,
                width: 45,
                child: const Icon(Icons.shopping_basket_outlined),
              )
            ],
          )
        ],
      ),
    );
  }
}
