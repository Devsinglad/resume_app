import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../models/providerfile.dart';

class TranslateMenu extends StatelessWidget {
  const TranslateMenu({
    Key? key,
    required this.provider,
  }) : super(key: key);

  final MyProvider provider;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        color: provider.isDark ? Colors.white : Colors.black,
      ),
      itemBuilder: (_) => [
        PopupMenuItem(
          onTap: () {
            context.setLocale(Locale('en'));
            provider.onlanguage();
          },
          child: Text(
            'btn_en'.tr(),
            style: TextStyle(
              color: provider.isDark ? Colors.white : Colors.black,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            context.setLocale(Locale('pt'));
            provider.onlanguage();
          },
          child: Text(
            'btn_por'.tr(),
            style: TextStyle(
              color: provider.isDark ? Colors.white : Colors.black,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            context.setLocale(Locale('es'));
            provider.onlanguage();
          },
          child: Text(
            'btn_sp'.tr(),
            style: TextStyle(
              color: provider.isDark ? Colors.white : Colors.black,
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            context.setLocale(Locale('ru'));
            provider.onlanguage();
          },
          child: Text(
            'btn_russia'.tr(),
            style: TextStyle(
              color: provider.isDark ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
