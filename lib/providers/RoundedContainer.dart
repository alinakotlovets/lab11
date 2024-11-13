import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'BorderRadiusProvider.dart';

class RoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BorderRadiusProvider>(
      builder: (context, provider, _) {
        return Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(provider.topLeft),
              topRight: Radius.circular(provider.topRight),
              bottomLeft: Radius.circular(provider.bottomLeft),
              bottomRight: Radius.circular(provider.bottomRight),
            ),
          ),
        );
      },
    );
  }
}
