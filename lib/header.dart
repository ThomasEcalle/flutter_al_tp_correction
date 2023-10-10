import 'package:correction_tp_flutter_al1/choice_item.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    this.selectedChoices = const [],
  });

  final List<String> selectedChoices;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      width: double.infinity,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vos choix',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 20),
              _buildSelectedChoices(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedChoices(BuildContext context) {
    if (selectedChoices.isEmpty) {
      return Text(
        'Cliquez sur les choix en dessous',
        style: Theme.of(context).textTheme.headlineSmall,
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: selectedChoices.map((choice) => ChoiceItem(choice: choice)).toList(),
    );
  }
}
