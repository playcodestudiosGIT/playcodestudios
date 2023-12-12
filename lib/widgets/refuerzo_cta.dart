import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/services/navigator_service.dart';
import 'package:seo_renderer/seo_renderer.dart';


class RefuerzoCTA extends StatelessWidget {
  final String title;
  final String content;
  final String textButton;
  final String route;
  const RefuerzoCTA(
      {super.key,
      required this.title,
      required this.content,
      this.textButton = '',
      this.route = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.black,
      child: Column(
        children: [
          Refuerzo(
            title: title,
            content: content,
          ),
          // TitleSection(title: title, content: content)
          if (textButton != '' && route != '')
          OutlinedButton(
              // style: BotonStyle.botonStyleSec,
              onPressed: () {
                NavigatorService.navigateTo(context, route);
              },
              child: Text(textButton, style: textBoton(context),)),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class Refuerzo extends StatefulWidget {
  final String title;
  final String? content;
  const Refuerzo({super.key, required this.title, this.content});

  @override
  State<Refuerzo> createState() => _RefuerzoState();
}

class _RefuerzoState extends State<Refuerzo> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      
    });
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      constraints: const BoxConstraints(maxWidth: 800),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextRenderer(
            text: widget.title,
            style: TextRendererStyle.header1,
            child: Text(
              widget.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: (wSize(context) < 420)
                  ? text22Title(context)
                      .copyWith(fontWeight: FontWeight.w900, fontSize: 26)
                  : text32Headline(context)
                      .copyWith(fontWeight: FontWeight.w900),
            ),
          ),
          if (widget.content != null) ...[
            const SizedBox(
              height: 10,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 800),
              child: TextRenderer(
                text: widget.content,
                style: TextRendererStyle.paragraph,
                child: Text(widget.content!,
                // maxLines: 5,
                    textAlign: TextAlign.center, style: text14BodyM(context)),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
