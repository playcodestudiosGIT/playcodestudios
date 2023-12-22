import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/models/trabajo.dart';
import 'package:playcodestudios/providers/servicios_provider.dart';
import 'package:playcodestudios/providers/trabajos_provider.dart';
import 'package:playcodestudios/services/launch_url_service.dart';
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
      contentPadding: const EdgeInsets.only(left: 30, right: 10, top: 20, bottom: 20),
      backgroundColor: bgColor,
      content: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 20),
          constraints: const BoxConstraints(maxWidth: 500),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.trabajo.imgs.isNotEmpty) _JobSwiper(widget: widget),
              if (widget.trabajo.video != '') ...[
                const SizedBox(height: 20),
                _JobScreenPlayer(widget: widget),
              ],
              const SizedBox(height: 20),
              const Wrap(
                children: [
                  Tag(
                    nameTag: 'Diseño',
                    jobFilter: JobFilters.diseno,
                  )
                ],
              ),
              const SizedBox(height: 20),
              _JobDialogInformation(trabajo: widget.trabajo),
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: const ActionButton(
                    text: 'Quiero algo así', tipo: AllServices.devWeb),
              ),
              const SizedBox(height: 20),
              Row(children: [
                const Spacer(),
                IconButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(bgColor)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  color: Colors.red,
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class _JobDialogInformation extends StatelessWidget {
  final Trabajo trabajo;
  const _JobDialogInformation({required this.trabajo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          trabajo.title,
          style: text22Title(context),
        ),
        const SizedBox(height: 20),
        Text(
          trabajo.shortDescription,
          style: text14BodyM(context),
        ),
        const SizedBox(height: 20),
        Text(
          trabajo.description,
          style: text14BodyM(context),
        ),
        const SizedBox(height: 20),
        Text(
          'Fecha: 22-05-2021',
          style: text14BodyM(context),
        ),
        const SizedBox(height: 20),
        if (trabajo.urlLaunch != '')
          TextButton.icon(
            onPressed: () {
              UrlLaunch.launchJob(trabajo.urlLaunch!);
            },
            icon: const Icon(Icons.launch),
            label: const Text('LAUNCH PROJECT'),
          )
      ],
    );
  }
}

class _JobScreenPlayer extends StatelessWidget {
  const _JobScreenPlayer({
    super.key,
    required this.widget,
  });

  final JobDialog widget;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ScreenPlayer(
        videoUrl: widget.trabajo.video!,
      ),
    );
  }
}

class _JobSwiper extends StatelessWidget {
  const _JobSwiper({
    super.key,
    required this.widget,
  });

  final JobDialog widget;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
                    activeColor: primaryColor, color: secondaryColor)),
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
        ));
  }
}
