import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/styles/button_style.dart';
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
      constraints: BoxConstraints(maxHeight: 1200, maxWidth: wSize(context)),
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 30,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.network(
                  img,
                  height: 300,
                  width: 
                  (wSize(context) <= 687)
                    ? 400 : 400,
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            constraints: const BoxConstraints(maxWidth: 400),
            alignment: Alignment.center,
            
            child: Column(
              // mainAxisAlignment: (wSize(context) <= 630)
              //     ? MainAxisAlignment.center
              //     : MainAxisAlignment.start,
              // crossAxisAlignment: (wSize(context) <= 630)
              //     ? CrossAxisAlignment.center
              //     : CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: TextRenderer(
                      style: TextRendererStyle.header1,
                      child: Text(
                        title,
                        textAlign: TextAlign.start,
                        style: text22Title(context).copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                          height: 1),
                      )),
                ),
                const SizedBox(height: 15),
                TextRenderer(
                  style: TextRendererStyle.paragraph,
                  child: Text(
                    textContent,
                    
                    textAlign: TextAlign.start,
                    style: text14BodyM(context),
                  ),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: BotonStyle.botonStyleSec,
                  onPressed: () {  },
                  child: Text('Mas sobre $title'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
