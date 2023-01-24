import 'package:brain_school/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar theme for tablet
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          InkWell(
            onTap: () {
            },
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [

                  Text(
                    'Edit Profile',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: SizerUtil.deviceType == DeviceType.tablet ? 19.h : 15.h,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: kBottomBorderRadius,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius:
                        SizerUtil.deviceType == DeviceType.tablet ? 12.w : 13.w,
                    backgroundColor: kSecondaryColor,
                    backgroundImage:
                        AssetImage('assets/images/logo.jpg'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Arya Burhan',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,

            sizedBox,
            ProfileDetailColumn(
              title: 'Email',
              value: 'aryaburhan3@gmail.com',
            ),
            ProfileDetailColumn(
              title: 'Last Name',
              value: 'Burhan',
            ),
            ProfileDetailColumn(
              title: 'First Name',
              value: 'Arya',
            ),
            ProfileDetailColumn(
              title: 'Phone Number',
              value: '+9647701374991',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kTextBlackColor,
                      fontSize: SizerUtil.deviceType == DeviceType.tablet
                          ? 7.sp
                          : 9.sp,
                    ),
              ),
              kHalfSizedBox,
              Text(value, style: Theme.of(context).textTheme.caption),
              kHalfSizedBox,
              SizedBox(
                width: 35.w,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 10.sp,
          ),
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kTextBlackColor,
                      fontSize: SizerUtil.deviceType == DeviceType.tablet
                          ? 7.sp
                          : 11.sp,
                    ),
              ),
              kHalfSizedBox,
              Text(value, style: Theme.of(context).textTheme.caption),
              kHalfSizedBox,
              SizedBox(
                width: 92.w,
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 10.sp,
          ),
        ],
      ),
    );
  }
}
