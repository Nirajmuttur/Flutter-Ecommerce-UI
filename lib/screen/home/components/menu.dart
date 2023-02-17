import 'package:flutter/material.dart';
import 'package:mobilewebapp/screen/home/components/headermenu.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          menu: 'Handbags',
        ),
        SizedBox(
          width: 20,
        ),
        HeaderMenu(
          menu: 'Watches',
        ),
        SizedBox(
          width: 20,
        ),
        HeaderMenu(
          menu: 'Skincare',
        ),
        SizedBox(
          width: 20,
        ),
        HeaderMenu(
          menu: 'Jewellery',
        ),
        SizedBox(
          width: 20,
        ),
        HeaderMenu(
          menu: 'Apparels',
        ),
      ],
    );
  }
}

