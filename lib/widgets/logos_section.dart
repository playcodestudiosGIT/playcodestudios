import 'package:flutter/material.dart';

import '../constants.dart';

class LogosSection extends StatelessWidget {
  const LogosSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: wSize(context),
      height: 80,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 15),
            _Logo(
                img:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699382233/assets/jp_dtfbpr.png'),
            _Logo(
                img:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699382230/assets/er_ykftu9.png'),
            _Logo(
                img:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699382256/assets/tlg_dumc5x.png'),
            _Logo(
                img:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699382252/assets/mr_m9gdpr.png'),
            _Logo(
                img:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699382253/assets/mv_tiku5i.png'),
            _Logo(
                img:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699382229/assets/db_qdleex.png'),
            _Logo(
                img:
                    'https://res.cloudinary.com/dyxt5lhzw/image/upload/v1699382257/assets/tucan_zfzajj.png'),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  final String img;
  const _Logo({required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: const EdgeInsets.all(5),
      width: 100,
      height: 100,
      child: FittedBox(
        // fit: BoxFit.cover,
        child: Image.network(
          img,
        ),
      ),
    );
  }
}