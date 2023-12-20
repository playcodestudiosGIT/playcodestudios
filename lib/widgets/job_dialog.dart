import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/models/trabajo.dart';
import 'package:playcodestudios/providers/servicios_provider.dart';
import 'package:playcodestudios/providers/trabajos_provider.dart';
import 'package:playcodestudios/widgets/action_button.dart';
import 'package:playcodestudios/widgets/tag_widget.dart';

import 'screen_player.dart';

class JobDialog extends StatefulWidget {
  final Trabajo trabajo;
  const JobDialog({super.key, required this.trabajo});

  @override
  State<JobDialog> createState() => _JobDialogState();
}

class _JobDialogState extends State<JobDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: bgColor,
      content: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.trabajo.imgs.isNotEmpty)
                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: SizedBox(
                      width: double.infinity,
                      height: 450,
                      child: Swiper(
                        autoplay: true,
                        autoplayDelay: 5000,
                        itemWidth: 400,
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.trabajo.imgs.length,
                        pagination: const SwiperPagination(
                            builder: DotSwiperPaginationBuilder(
                                activeColor: primaryColor,
                                color: secondaryColor)),
                        itemBuilder: (context, index) {
                          final img = widget.trabajo.imgs[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: Image(
                              image: NetworkImage(img),
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                      ),
                    )),
              if (widget.trabajo.video != '') ...[
                const SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ScreenPlayer(
                    videoUrl: widget.trabajo.video!,
                  ),
                ),
              ],
              const SizedBox(height: 20),
              const Wrap(
                children: [Tag(filterName: JobFilters.branding)],
              ),
              const SizedBox(height: 20),
              Text(
                widget.trabajo.title,
                style: text22Title(context),
              ),
              const SizedBox(height: 20),
              Text(
                widget.trabajo.shortDescription,
                style: text14BodyM(context),
              ),
              const SizedBox(height: 20),
              Text(
                widget.trabajo.description,
                style: text14BodyM(context),
              ),
              const SizedBox(height: 20),
              Text(
                'Fecha: 22-05-2021',
                style: text14BodyM(context),
              ),
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: const ActionButton(
                    text: 'Quiero algo así', tipo: AllServices.devWeb),
              )
            ],
          ),
        ),
      ),
    );
  }
}
