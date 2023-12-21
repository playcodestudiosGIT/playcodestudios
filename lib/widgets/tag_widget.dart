import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:provider/provider.dart';

import '../providers/trabajos_provider.dart';

class Tag extends StatefulWidget {
  final JobFilters jobFilter;
  final String nameTag;

  const Tag({super.key, required this.nameTag, required this.jobFilter});

  @override
  State<Tag> createState() => _TagState();
}

class _TagState extends State<Tag> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    JobFilters currentFilter =
        Provider.of<TrabajosProvider>(context).currentFilter;

    if (currentFilter == widget.jobFilter) {
      isActive = true;
    } else {
      isActive = false;
    }
    
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Provider.of<TrabajosProvider>(context, listen: false).brandingFilter =
              widget.jobFilter;
          setState(() {});
        },
        child: FittedBox(
          fit: BoxFit.contain,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: 28,
            decoration: BoxDecoration(
                color: (isActive) ? secondaryColor : bgColor,
                border: Border.all(color: Colors.white.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Text(widget.nameTag, style: text14BodyM(context)),
                )),
          ),
        ),
      ),
    );
  }
}
