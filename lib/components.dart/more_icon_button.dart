import 'package:flutter/material.dart';

import '../constants.dart';

class MoreIconButton extends StatefulWidget {
  const MoreIconButton({
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  State<MoreIconButton> createState() => _MoreIconButtonState();
}

class _MoreIconButtonState extends State<MoreIconButton> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      transform: Matrix4.translationValues(
        0,
        _isHovering ? -kDefaultPadding : 0,
        0,
      ),
      //this stop working when pageview widget was added
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: InkWell(
          onTap: widget.onPressed,
          borderRadius: BorderRadius.circular(10.0),
          onHover: (value) {
            setState(() {
              _isHovering = value;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: RotatedBox(
              quarterTurns: _isHovering ? 2 : 0,
              child: const Icon(
                Icons.arrow_downward,
              ),
            ),
          )),
    );
  }
}
