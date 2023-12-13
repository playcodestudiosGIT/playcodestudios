import 'package:flutter/material.dart';
import 'package:playcodestudios/constants.dart';
import 'package:playcodestudios/styles/button_style.dart';
import 'micro_service_item.dart';

class SliderServices extends StatefulWidget {
  final List<String> tags;
  final List<MicroServiceItem> microservices;
  const SliderServices({super.key, required this.tags, required this.microservices});

  @override
  State<SliderServices> createState() => _SliderServicesState();
}

class _SliderServicesState extends State<SliderServices> {
  int currentPage = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: currentPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      color: Colors.black,
      child: Column(
        
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: wSize(context),
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              alignment: WrapAlignment.center,
              children: [
                ...widget.tags.map((e) {
                  final i = widget.tags.indexOf(e);

                  return ElevatedButton(

                      style: (i == currentPage) ? BotonStyle.botonStyleSec : null,
                        
                      onPressed: () => setState(() {
                            currentPage = i;
                            pageController.jumpToPage(i);
                          }),
                      child: Text(e, ));
                })
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            constraints: const BoxConstraints(maxHeight: 650),
            width: wSize(context),
            // height: 550,
            child: PageView(
              
              controller: pageController,
              
              onPageChanged: (value) => setState(() {
                currentPage = value;
              }),
              children: widget.microservices,
            ),
          ),
          // const SizedBox(height: 60),
        ],
      ),
    );
  }
}
