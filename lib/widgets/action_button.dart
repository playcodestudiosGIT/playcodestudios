import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';


import '../constants.dart';
import '../providers/servicios_provider.dart';
import '../styles/button_style.dart';
import 'start_dialog.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final AllServices tipo;
  const ActionButton({super.key, required this.text, required this.tipo});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: BotonStyle.botonStyle,
        onPressed: () async {
          await showDialog(
              context: context, builder: (context) => StartDialog(tipo: tipo,));
        },
        child: TextRenderer(
          style: TextRendererStyle.paragraph,
          child: Text(text,
          textAlign: TextAlign.center,
           style: textBoton(context)),
        ));
  }
}
