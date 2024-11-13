import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'BorderRadiusProvider.dart';
import 'RadiusSliderSection.dart'; // імпорт віджету слайдерів
import 'RoundedContainer.dart'; // імпорт віджету контейнера

class V2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BorderRadiusProvider(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Секція слайдерів
              RoundedContainer(),

              const SizedBox(height: 20),

              // Секція синього контейнера
              RadiusSliderSection(),
            ],
          ),
        ),
      ),
    );
  }
}
