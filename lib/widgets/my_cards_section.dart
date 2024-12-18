import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashborad/widgets/dots_indecator.dart';
import 'package:responsive_dashborad/widgets/my_card_header.dart';
import 'package:responsive_dashborad/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round() % 3;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyCardHeader(),
        const SizedBox(height: 20),
        MyCardsPageView(pageController: pageController),
        const SizedBox(height: 19),
        DotsIndecator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
