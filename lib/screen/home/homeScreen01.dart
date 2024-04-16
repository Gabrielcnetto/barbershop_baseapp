import 'package:barbershop_baseapp/functions/userLogin.dart';
import 'package:barbershop_baseapp/rotas/Approutes.dart';
import 'package:barbershop_baseapp/screen/home/home_components/header.dart';
import 'package:barbershop_baseapp/screen/home/home_components/profissionaisList.dart';
import 'package:barbershop_baseapp/screen/home/home_components/promotionBanner.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen01 extends StatelessWidget {
  const HomeScreen01({super.key});

  @override
  Widget build(BuildContext context) {
    final double widhtTela = MediaQuery.of(context).size.width;
    final double heighTela = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePageHeader(
              heighTela: heighTela,
              widhTela: widhtTela,
            ),
            ProfissionaisList(
              heighScreen: heighTela,
              widhScreen: widhtTela,
            ),
            PromotionBannerComponents(widhtTela: widhtTela,),
          ],
        ),
      ),
    );
  }
}
