import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';

import '../models/trabajo.dart';
import 'job_dialog.dart';

class JobCard extends StatelessWidget {
  final Trabajo trabajo;
  const JobCard({super.key, required this.trabajo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
          await showDialog(
              context: context,
              builder: (context) => JobDialog(trabajo: trabajo));
        },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 10,
                offset: const Offset(0, 10))
          ], color: bgColor, borderRadius: BorderRadius.circular(20)),
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
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(trabajo.imgs[0]), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      color: shadePrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
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
        ),
      ),
    );
  }
}


