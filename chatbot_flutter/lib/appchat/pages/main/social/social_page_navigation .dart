import 'package:chatbot_flutter/appchat/pages/main/social/diary_page.dart';
import 'package:chatbot_flutter/appchat/widgets/toolbar_social.dart';
import 'package:flutter/material.dart';

class SocialPageNavigation extends StatelessWidget {
  const SocialPageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomSocialToolbar(), body: DiaryPage());
  }
}
