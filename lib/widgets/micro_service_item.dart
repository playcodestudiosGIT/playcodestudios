import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/widgets/action_button.dart';
import 'package:seo_renderer/seo_renderer.dart';

import '../providers/servicios_provider.dart';

class MicroServiceItem extends StatelessWidget {
  final String img;
  final AllServices tipo;
  final String title;
  final String textContent;
  const MicroServiceItem(
      {super.key,
      required this.img,
      required this.title,
      required this.textContent,
      required this.tipo});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 1100, maxWidth: wSize(context)),
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 30,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.network(
                img,
                width: (wSize(context) <= 730)
                  ? 200 : 300,
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            constraints: BoxConstraints(maxWidth: 400),
            alignment: Alignment.center,
            
            child: Column(
              mainAxisAlignment: (wSize(context) <= 630)
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              crossAxisAlignment: (wSize(context) <= 630)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                TextRenderer(
                    style: TextRendererStyle.header1,
                    child: Text(
                      title,
                      style: text22Title(context)
                    )),
                const SizedBox(height: 15),
                TextRenderer(
                  style: TextRendererStyle.paragraph,
                  child: Text(
                    
                    textContent,
                    textAlign: (wSize(context) >= 630) ? TextAlign.start : TextAlign.center,
                    style: text14BodyM(context),
                  ),
                ),
                const SizedBox(height: 15),
                ActionButton(text: 'Mas sobre $title', tipo: tipo)
              ],
            ),
          )
        ],
      ),
    );
  }
}
