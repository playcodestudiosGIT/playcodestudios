import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';

import '../providers/trabajos_provider.dart';

class Tag extends StatelessWidget {
  final JobFilters filterName;
  final bool isMini;
  const Tag({super.key, required this.filterName, this.isMini = false});

  @override
  Widget build(BuildContext context) {
    final tag = filterName.toString().split('.').last;
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: (!isMini) ? 28 : 20,
        decoration: BoxDecoration(
            // color: Colors.amber,
            border: Border.all(color: Colors.white.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          tag,
          style: (!isMini) ? text14BodyMOp(context) : const TextStyle(fontSize: 8),
        )),
      ),
    );
  }
}
