import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../const.dart';
import '../models/providerfile.dart';
import 'myText.dart';

class Input extends StatelessWidget {
  String text;
  String subtitle;
  String location;
  Input({
    Key? key,
    required this.text,
    required this.subtitle,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: text,
            color: Colors.grey,
            weight: FontWeight.w600,
            textsize: Smallsize,
          ),
          SizedBox(
            height: 10,
          ),
          MyText(
            title: subtitle,
            color: Colors.grey,
            weight: FontWeight.w600,
            textsize: Smallsize,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.blue,
              ),
              MyText(
                title: location,
                color: Colors.grey,
                weight: FontWeight.w600,
                textsize: Smallsize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MySkill extends StatelessWidget {
  String text;
  double level;
  MySkill({
    Key? key,
    required this.text,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: text.toUpperCase(),
            color: Colors.grey,
            weight: FontWeight.w600,
            textsize: Smallsize,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: LinearProgressIndicator(
              color: progressColor,
              value: level,
            ),
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Boxcolor, borderRadius: BorderRadius.circular(10)),
      child: Text(
        'about_description'.tr(),
        style: TextStyle(
          fontSize: Smallsize,
          fontWeight: FontWeight.bold,
          color: provider.isDark ? Colors.blueGrey : Colors.black,
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 35,
            backgroundColor: provider.isDark ? Colors.transparent : Colors.grey,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              title: 'name_text'.tr(),
              color: Colors.black,
              weight: FontWeight.bold,
              textsize: MediaQuery.of(context).textScaleFactor * 15,
            ),
            SizedBox(
              height: 5,
            ),
            MyText(
              title: 'title_description'.tr(),
              color: Colors.grey,
              weight: FontWeight.bold,
              textsize: Smallsize,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                MyText(
                  title: 'location_description'.tr(),
                  color: Colors.grey,
                  weight: FontWeight.bold,
                  textsize: Smallsize,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class socialLink extends StatelessWidget {
  socialLink({
    Key? key,
  }) : super(key: key);

// linkedIn

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: provider.launchGmailUrl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  image2,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 6,
                ),
                MyText(
                  title: 'simonsinglad5@gmail.com',
                  color: Colors.black,
                  weight: FontWeight.w500,
                  textsize: Smallsize,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: provider.launchLinkedInUrl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              image3,
              height: 30,
              width: 30,
            ),
          ),
        ),
        InkWell(
          onTap: provider.launchGitUrl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: provider.isDark
                ? Image.asset(
                    image4,
                    height: 30,
                    width: 30,
                  )
                : Image.asset(
                    image5,
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 4,
                  ),
          ),
        ),
      ],
    );
  }
}
