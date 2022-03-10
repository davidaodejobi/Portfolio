import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';

import '../components.dart/components.dart';
import '../constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();

    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: kDefaultPadding * 2,
          left: kDefaultPadding * 7,
          right: kDefaultPadding * 7,
        ),
        child: PageView(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: _pageController,
          children: [
            BodyOne(pageController: _pageController),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AboutMe(),
                const SizedBox(height: kDefaultPadding * 3),
                Text(
                  'Projects',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: kDefaultPadding / 2),
              ],
            ),
            Container(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: kDefaultPadding,
            bottom: kDefaultPadding / 2,
          ),
          child: Text(
            'About me',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Row(
          children: [
            Container(
              width: 5,
              color: kPrimaryColor,
              height: 80,
            ),
            const SizedBox(width: kDefaultPadding / 2),
            Text(
              '''
Sed libero. Vestibulum fringilla pede sit amet augue. Donec elit libero, sodales nec, volutpat a, suscipit non, tur
Nulla neque dolor, sagitis eget, iaculis quis, molestie non, velit. Sed magna purus, fermentum eu, tincidunt eu, va
Maecenas egestas arcu qis ligula mattis placerat. Donec mi odio, faucibus at, scelerisque quis, convallis in, 
Aenean ut eros et nisl sagittis vestibulum. Ut tincidunt tincidunt erat. Morbi mollis tellus ac sapien. Maecenas te''',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ],
    );
  }
}
