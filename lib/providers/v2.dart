import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'BorderRadiusProvider.dart';
import 'RadiusSliderSection.dart'; 
import 'RoundedContainer.dart'; 

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
          
              RoundedContainer(),

              const SizedBox(height: 20),

          
              RadiusSliderSection(),
            ],
          ),
        ),
      ),
    );
  }
}
