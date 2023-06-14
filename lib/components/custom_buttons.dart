import 'package:arya_kti/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onPress,
        child: Ink(
          padding: EdgeInsets.only(right: kDefaultPadding),
          width: 79.w,
          height: SizerUtil.deviceType == DeviceType.tablet ? 7.h : 7.4.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPrimaryColor, kPrimaryColor],
              ),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(title, style: Theme.of(context).textTheme.subtitle2),
              Spacer(),
              Icon(
                iconData,
                size: 20.sp,
                color: kOtherColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
