import "package:flutter/material.dart";

class GranularityButton extends StatefulWidget {
  final Function(int) onGranularityChanged;

  const GranularityButton({super.key, required this.onGranularityChanged});

  @override
  State<GranularityButton> createState() => _GranularityButtonState();
}

class _GranularityButtonState extends State<GranularityButton> {
  int _selectedGranularity = 3600;

  String getGranularityLabel(int granularity) {
    switch (granularity) {
      case 3600:
        return '1 Hour';
      case 86400:
        return '1 Day';
      case 604800:
        return '1 Week';
      case 2592000:
        return '1 Month';
      case 31536000:
        return '1 Year';
      default:
        return '???';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: _selectedGranularity,
      onChanged: (int? newGranularity) {
        if (newGranularity != null) {
          setState(() {
            _selectedGranularity = newGranularity;
          });
          widget.onGranularityChanged(newGranularity);
        }
      },
      items: <int>[
        3600,
        86400,
        604800,
        2592000,
        31536000,
      ].map<DropdownMenuItem<int>>(
            (int granularity) => DropdownMenuItem<int>(
          value: granularity,
          child: Text(getGranularityLabel(granularity)),
        ),
      ).toList(),
    );
  }
}
