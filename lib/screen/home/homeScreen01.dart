import 'package:barbershop_baseapp/classes/Estabelecimento.dart';
import 'package:barbershop_baseapp/functions/userLogin.dart';
import 'package:barbershop_baseapp/rotas/Approutes.dart';
import 'package:barbershop_baseapp/screen/add/addScreen.dart';
import 'package:barbershop_baseapp/screen/calendar/calendarScreen.dart';
import 'package:barbershop_baseapp/screen/home/homeOnlyWidgets.dart';
import 'package:barbershop_baseapp/screen/home/home_components/header.dart';
import 'package:barbershop_baseapp/screen/home/home_components/profissionaisList.dart';
import 'package:barbershop_baseapp/screen/home/home_components/promotionBanner.dart';
import 'package:barbershop_baseapp/screen/profile/profileScreen.dart';
import 'package:barbershop_baseapp/screen/ranking/rankingScreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen01 extends StatefulWidget {
  const HomeScreen01({super.key});

  @override
  State<HomeScreen01> createState() => _HomeScreen01State();
}

class _HomeScreen01State extends State<HomeScreen01> {
  int screen = 0;
  List<Map<String, Object>>? _screensSelect;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _screensSelect = [
      {
        'tela': const HomeOnlyWidgets(),
      },
      {
        'tela': const CalendarScreen(),
      },
      {
        'tela': const AddScreen(),
      },
      {
        'tela': const RankingScreen(),
      },
      {
        'tela': const ProfileScreen(),
      },
    ];
  }

  void attScren(int index) {
    setState(() {
      screen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        animationDuration: const Duration(milliseconds: 100),
        onTap: attScren,
        backgroundColor: Estabelecimento.primaryColor,
        items: const [
          Icon(
            Icons.home,
          ),
          Icon(
            Icons.calendar_month,
          ),
          Icon(
            Icons.add,
          ),
          Icon(
            Icons.stars,
          ),
          Icon(
            Icons.account_circle,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: _screensSelect![screen]['tela'] as Widget,
    );
  }
}
