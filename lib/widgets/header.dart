import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network('https://multibanda.cl/wp-content/uploads/2023/11/cropped-header-7-scaled-1.jpg',
          width: double.infinity,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 50,
          width: double.infinity,
        ),
      ],
    );
  }
}