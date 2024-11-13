import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'BorderRadiusProvider.dart';

class RadiusSliderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BorderRadiusProvider>(
      builder: (context, provider, _) {
        return Column(
          children: [
            SliderRow(
              label: "Top Left",
              value: provider.topLeft,
              onChanged: (value) => provider.setTopLeft(value),
            ),
            SliderRow(
              label: "Top Right",
              value: provider.topRight,
              onChanged: (value) => provider.setTopRight(value),
            ),
            SliderRow(
              label: "Bottom Left",
              value: provider.bottomLeft,
              onChanged: (value) => provider.setBottomLeft(value),
            ),
            SliderRow(
              label: "Bottom Right",
              value: provider.bottomRight,
              onChanged: (value) => provider.setBottomRight(value),
            ),
          ],
        );
      },
    );
  }
}

class SliderRow extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const SliderRow({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$label: "),
            Text(
              value.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
