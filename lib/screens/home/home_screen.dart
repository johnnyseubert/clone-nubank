import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_refactor/screens/home/sections/account_section.dart';
import 'package:nubank_refactor/screens/home/sections/credit_card_section.dart';
import 'package:nubank_refactor/screens/home/sections/follow_section.dart';
import 'package:nubank_refactor/screens/home/sections/header_section.dart';
import 'package:nubank_refactor/screens/home/sections/loan_section.dart';
import 'package:nubank_refactor/screens/home/sections/menu_section.dart';
import 'package:nubank_refactor/screens/home/sections/my_cards_section.dart';
import 'package:nubank_refactor/screens/home/sections/notification_section.dart';
import 'package:nubank_refactor/utils/colors.dart';
import 'package:nubank_refactor/utils/money.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentBottomNavigationIndex = 0;
  List<Icon> bottomItems = [
    Icon(Icons.compare_arrows_outlined),
    Icon(Icons.attach_money_sharp),
    Icon(Icons.shopping_bag_outlined),
    Icon(Icons.sports_basketball_outlined),
  ];

  var moneyController = Money();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      backgroundColor: nuPrimary,
      //backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              HeaderSection(moneyController: moneyController),
              AccountSection(moneyController: moneyController),
              MenuSection(moneyController: moneyController),
              MyCardsSection(),
              NotificationSection(),
              Divider(thickness: 1.2),
              CreditCardSection(moneyController: moneyController),
              Divider(thickness: 1.2),
              FollowSection(),
              Divider(thickness: 1.2),
              LoanSection(),
              Divider(thickness: 1.2),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: _bottomNavigationBar(),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        backgroundColor: nuPrimary,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentBottomNavigationIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: nuPrimary,
      unselectedItemColor: nuMedium,
      type: BottomNavigationBarType.fixed,
      items: bottomItems
          .map((Icon item) => _bottomNavigationBarItem(item))
          .toList(),
      onTap: (int newIndex) {
        setState(() => _currentBottomNavigationIndex = newIndex);
      },
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(Icon icon) {
    return BottomNavigationBarItem(
      label: "",
      icon: icon,
    );
  }
}
