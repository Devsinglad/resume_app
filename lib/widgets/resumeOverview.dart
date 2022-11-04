import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../models/providerfile.dart';
import 'const widgets.dart';
import 'myText.dart';

class resumeOverview extends StatelessWidget {
  const resumeOverview({
    Key? key,
    required this.provider,
  }) : super(key: key);

  final MyProvider provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Header(),
        SizedBox(
          height: 10,
        ),
        About(),
        MyText(
          title: 'skill'.tr(),
          color: provider.isDark ? Colors.blue : Colors.brown,
          weight: FontWeight.w600,
          textsize: size,
        ),
        MySkill(
          text: 'Dart',
          level: 0.6,
        ),
        MySkill(
          text: 'Android Studio:',
          level: 0.75,
        ),
        MySkill(
          text: 'Github:',
          level: 0.75,
        ),
        MySkill(
          text: 'Flutter:',
          level: 0.75,
        ),
        MySkill(
          text: 'Provider:',
          level: 0.75,
        ),
        MySkill(
          text: 'Firebase:',
          level: 0.85,
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          title: 'EXPERIENCE'.tr(),
          color: provider.isDark ? Colors.blue : Colors.brown,
          weight: FontWeight.w600,
          textsize: size,
        ),
        SizedBox(
          height: 10,
        ),
        Input(
          text: 'Company'.tr(),
          subtitle: 'title'.tr(),
          location: 'Address'.tr(),
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          title: 'EDUCATION'.tr(),
          color: provider.isDark ? Colors.blue : Colors.brown,
          weight: FontWeight.w600,
          textsize: size,
        ),
        SizedBox(
          height: 10,
        ),
        Input(
          text: 'Course_study'.tr(),
          subtitle: 'Uni'.tr(),
          location: 'Awka (2016 - 2021)',
        ),
        SizedBox(
          height: 10,
        ),
        MyText(
          title: 'SOCIALS'.tr(),
          color: provider.isDark ? Colors.blue : Colors.brown,
          weight: FontWeight.w600,
          textsize: size,
        ),
        SizedBox(
          height: 10,
        ),
        socialLink(),
      ],
    );
  }
}
