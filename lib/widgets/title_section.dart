import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_web.dart';

class TitleSection extends StatelessWidget {
  final String? title;
  final String? content;
  const TitleSection({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != '')
          Container(
              constraints: const BoxConstraints(maxWidth: 950),
              child: Container(
                alignment: Alignment.centerLeft,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextRenderer(
                  text: title,
                  style: TextRendererStyle.header1,
                  child: Text(
                    title!,
                    style: text22Title(context).copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        height: 1.2),
                  ),
                ),
              )),
        if (content != '') ...[
          const SizedBox(height: 15),
          Container(
            width: wSize(context),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            constraints: const BoxConstraints(maxWidth: 950),
            child: TextRenderer(
              text: content,
              style: TextRendererStyle.paragraph,
              child: Text(
                content!,
                style: text14BodyM(context),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
