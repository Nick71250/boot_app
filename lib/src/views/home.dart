import 'package:flutter/material.dart';
import 'package:shop_app/src/sample.dart';
import 'package:shop_app/src/views/widgets/custom_app_bar.dart';
import 'package:shop_app/src/views/widgets/banner.dart';
import 'package:shop_app/src/views/widgets/product_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const CustomAppBar(),
          Expanded(
            child: ListView(children: [
              const MainBanner(),
              ListView.builder(
                shrinkWrap: true,
                primary:
                    false, // убирает с этого ListView признак основного для того, чтобы скроллился ListView, который является родительским
                itemCount: products.length,
                itemBuilder: (context, index) =>
                    ProductTile(product: products[index]),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
