import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_app/models/providerfile.dart';
import '../widgets/traslatemenu.dart';
import '../widgets/resumeOverview.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  IconData lightmodeIcon = Icons.wb_sunny_outlined;
  IconData DarkmodeIcon = Icons.nights_stay;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: provider.toggleTheme,
              icon: Icon(
                provider.isDark ? DarkmodeIcon : lightmodeIcon,
                color: provider.isDark ? Colors.deepPurple : Colors.yellow,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Translate',
                style: TextStyle(
                  color: provider.isDark ? Colors.white : Colors.black,
                ),
              ),
            ),
            TranslateMenu(provider: provider),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: resumeOverview(provider: provider),
          ),
        ),
      ),
    );
  }
}
