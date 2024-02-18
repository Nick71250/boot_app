import 'package:flutter/material.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      height: 255,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.amber,
          image: const DecorationImage(
              image: NetworkImage(
                  'https://img.freepik.com/free-vector/modern-big-sale-yellow-banner-design_1017-15063.jpg?w=2000'))),
    );
  }
}
