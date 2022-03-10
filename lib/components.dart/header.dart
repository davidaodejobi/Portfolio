import 'package:flutter/material.dart';

import '../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Home',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const Spacer(),
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Projects',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding * 2,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Contact',
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
    );
  }
}
