import 'package:flutter/material.dart';

import '../../../constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.footerShop,
    required this.about,
    required this.policy,
  }) : super(key: key);

  final List<String> footerShop;
  final List<String> about;
  final List<String> policy;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: primaryColor),
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Shop By Category',
                    style:
                        TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      itemCount: footerShop.length,
                      itemBuilder: (context, index) => ListTile(
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                            title: Text(
                              footerShop[index],
                              style:
                                  const TextStyle(color: lightText),
                            ),
                            onTap: () {},
                          )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'About',
                    style:
                        TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      itemCount: about.length,
                      itemBuilder: (context, index) => ListTile(
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                            title: Text(
                              about[index],
                              style:
                                  const TextStyle(color: lightText),
                            ),
                            onTap: () {},
                          )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Privacy Policy',
                    style:
                        TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      itemCount: policy.length,
                      itemBuilder: (context, index) => ListTile(
                            dense: true,
                            contentPadding: const EdgeInsets.all(0),
                            title: Text(
                              policy[index],
                              style:
                                  const TextStyle(color: lightText),
                            ),
                            onTap: () {},
                          )),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.facebook,
                          color: primaryTint,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.facebook,
                          color: primaryTint,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.facebook,
                          color: primaryTint,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.facebook,
                          color: primaryTint,
                          size: 35,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        const Text(
                          'India',
                          style: TextStyle(color: lightText),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '© 2021 | Cora Leviene All Rights Reserved',
                      style: TextStyle(color: lightText),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
