import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VehicalImageCarousel extends StatefulWidget {
  const VehicalImageCarousel({super.key});

  @override
  State<StatefulWidget> createState() {
    return _VehicalImageCarouselState();
  }
}

class _VehicalImageCarouselState extends State<VehicalImageCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Image(
              image: NetworkImage(item),
              fit: BoxFit.fill,
            ))
        .toList();
    return Stack(children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            // aspectRatio: 1.9,
            onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        }),
      ),
      Positioned(
        top: 175,
        left: MediaQuery.of(context).size.width * 0.4,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (_current == entry.key
                              ? Colors.blue.shade700
                              : Colors.white)
                          .withOpacity(_current == entry.key ? 1 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ]);
  }
}
