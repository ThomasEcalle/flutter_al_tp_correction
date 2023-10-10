import 'package:flutter/material.dart';

import 'choice_item.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.choices,
    required this.onChoiceSelected,
    required this.selectedChoices,
  });

  final List<String> choices;
  final List<String> selectedChoices;
  final Function(String) onChoiceSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: choices.map((choice) {
            return ChoiceItem(
              choice: choice,
              selected: selectedChoices.contains(choice),
              onTap: () => _onTap(choice),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _onTap(String choice) {
    onChoiceSelected(choice);
  }
}
