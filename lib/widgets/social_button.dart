import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/helper/colors.dart';

class SocialButton extends StatelessWidget {
  SocialButton(
      {super.key,
      required this.name,
      required this.icon,
      this.appleLogo = false});

  String name;
  String icon;
  bool appleLogo;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: const BorderSide(
              width: 0.1,
              color: Colors.white,
              style: BorderStyle.solid,
            ),
          ),
          backgroundColor: ColorSys.kSecondary,
          padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          appleLogo
              ? SvgPicture.asset(
                  icon,
                  height: 30.0,
                  colorFilter: ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                )
              : SvgPicture.asset(
                  icon,
                  height: 30.0,
                ),
          const SizedBox(
            width: 16.0,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
          )
        ],
      ),
    );
  }
}
