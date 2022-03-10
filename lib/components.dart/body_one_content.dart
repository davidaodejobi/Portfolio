import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';
import 'components.dart';

class BodyOne extends StatelessWidget {
  const BodyOne({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Header(),
        const BodyOneContent(),
        MoreIconButton(
          onPressed: () {
            _pageController.nextPage(
                duration: const Duration(milliseconds: 5000),
                curve: Curves.easeInOutQuint);
          },
        ),
      ],
    );
  }
}

class BodyOneContent extends StatelessWidget {
  const BodyOneContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter Developer',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'David OdeJobi',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'A Tech enthusiast always trying to solve a problem with his tech skills. \nI have over 1 year of experience in Flutter and Dart and I can build \nan App from the ground up concept to the UI level and do \nsome (A - P) parts of the networking.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: kDefaultPadding * 0.75),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Contact Me',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                    ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Lottie.asset(
          'assets/animations/developer.json',
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
      ],
    );
  }
}
