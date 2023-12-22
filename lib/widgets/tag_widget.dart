import 'package:flutter/material.dart';
import 'package:playcodestudios/styles/button_style.dart';
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

    return ElevatedButton(
      style: (isActive) ? BotonStyle.botonStyleSec : null,
      onPressed: () {
        Provider.of<TrabajosProvider>(context, listen: false).brandingFilter =
              widget.jobFilter;
        setState(() {});
      },
      child: Text(widget.nameTag)
      );
  }
}
