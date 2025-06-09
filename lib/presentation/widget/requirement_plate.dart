import 'package:flutter/material.dart';

import '../../lang.dart';
class RequirementPlate extends StatelessWidget {
  final int level;

  const RequirementPlate({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.red.shade100,
      ),
      alignment: Alignment.center,
      width: 150,
      height: 48,
      child: Text(currentLanguage
          .translate("availableOnDescription")
          .replaceAll("\${level}", "$level")),
    );
  }
}
