import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playcodestudios/constants.dart';

import '../models/trabajo.dart';

class WorkCard extends StatelessWidget {
  final Trabajo trabajo;
  const WorkCard({super.key, required this.trabajo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 280,
      // height: 315,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 128,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(trabajo.img), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      color: shadePrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.start,
                children: [...trabajo.tags.map((e) => Tag(tag: e)).toList()],
              ),
              const SizedBox(height: 10),
              Text(
                trabajo.title,
                style: text22Title(context),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Text(
                trabajo.description,
                style: text14BodyMOp(context),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String tag;
  const Tag({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 20,
        decoration: BoxDecoration(
            // color: Colors.amber,
            border: Border.all(color: Colors.white.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          tag,
          style: GoogleFonts.roboto(fontSize: 8),
        )),
      ),
    );
  }
}
