import 'package:flutter/material.dart';
import 'package:travel/shared/theme.dart';
import 'package:travel/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 30, left: defaultMargin, right: defaultMargin),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigationItem(imageUrl: 'assets/icon_home.png', isSelected: true),
              CustomButtonNavigationItem(imageUrl: 'assets/icon_booking.png'),
              CustomButtonNavigationItem(imageUrl: 'assets/icon_card.png'),
              CustomButtonNavigationItem(imageUrl: 'assets/icon_settings.png'),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          const Text(
            'Main Page',
          ),
          customButtonNavigation(),
        ],
      ),
    );
  }
}