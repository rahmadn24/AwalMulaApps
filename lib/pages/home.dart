import 'package:awalmula/providers/product_provider.dart';
import 'package:awalmula/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../style.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 0),
      () => Provider.of<ProductProvider>(context, listen: false).init(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ProductProvider productProvider = Provider.of<ProductProvider>(context);
    print("Ryan Ahmad");

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0),
          child: Row(
            children: [
              Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('logo.jpg'),
                  ),
                ),
              ),
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('profile.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0),
          child: Center(
            child: Text(
              'Products',
              style: primaryTextStyle.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ),
        Consumer<ProductProvider>(builder: (context, provider, _) {
          return Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Row(
                    children: provider.products
                        .map(
                          (product) => ProductCard(product),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
          );
        }),
      ],
    );
  }
}
