import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

import '../constants.dart';
import '../services/navigator_service.dart';

class ServicioCard extends StatefulWidget {
  final String img;
  final String title;
  final String route;
  const ServicioCard(
      {super.key,
      required this.img,
      required this.title,
      required this.route});

  @override
  State<ServicioCard> createState() => _ServicioCardState();
}

bool hover = false;

class _ServicioCardState extends State<ServicioCard> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => NavigatorService.navigateTo(context, widget.route),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 10,
                      offset: const Offset(0, 10)
                    )
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: 240,
                    height: 240,
                    child: Image.network(
                      widget.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                  width: 241,
                  height: 240,
                  color: bgColor.withOpacity(0.7)
                ),
              // if (!hover)
              Positioned(
                // bottom: 20,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: 240,
                  child: TextRenderer(
                    text: widget.title,
                    style: TextRendererStyle.header1,
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: text22Title(context).copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}