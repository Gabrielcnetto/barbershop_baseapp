import 'package:barbershop_baseapp/classes/Estabelecimento.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'circularProgressIndicLevel.dart';

class HomePageHeader extends StatelessWidget {
  final double widhTela;
  final double heighTela;
  const HomePageHeader({
    super.key,
    required this.heighTela,
    required this.widhTela,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: widhTela,
      height: heighTela / 2.2,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: heighTela / 2.2 * 0.8,
            decoration: BoxDecoration(
              color: Estabelecimento.secondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(60, 60),
                bottomRight: Radius.elliptical(60, 60),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 40, right: 15),
            child: Positioned(
              top: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        Estabelecimento.nomeLocal,
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Estabelecimento.secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bem-vindo(a), Gabriel",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              "Você Possui 13 Pontos",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade700,
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                        CircularProgressWithImage(
                          progress: 0.8,
                          imageSize: widhTela / 5.5,
                          widghTela: widhTela,
                          imageUrl:
                              "https://img.odcdn.com.br/wp-content/uploads/2024/03/mark-zuckerberg.jpg",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 2,
              child: Container(
                width: widhTela,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: widhTela / 2.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(
                    width: 0.2,
                    color: Colors.black.withOpacity(0.1),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Próximo agendamento",
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                            color: Estabelecimento.secondaryColor,
                            fontWeight: FontWeight.w500,
                          )),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Estabelecimento.secondaryColor,
                          size: 20,
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(90),
                                child: Container(
                                  width: 90,
                                  height: 90,
                                  child: Image.network(
                                    "https://img.odcdn.com.br/wp-content/uploads/2024/03/mark-zuckerberg.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 14,
                                bottom: 0,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 0.2,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  width: widhTela / 6 * 1,
                                  height: heighTela / 3 * 0.1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.grade,
                                        color: Colors.orangeAccent,
                                        size: 17,
                                      ),
                                      Text(
                                        "5.0",
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Estabelecimento.secondaryColor,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          width: widhTela / 4,
                          height: heighTela / 1.5 * 0.2,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Profissional:",
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Eduardo",
                                  style: GoogleFonts.openSans(),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Com Sobrancelha",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "15 fev - 17:50",
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        Colors.green.shade200.withOpacity(0.4),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  child: Text(
                                    "R\$50,00",
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color: Colors.green),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Estabelecimento.primaryColor,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Ver Código",
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13,
                                              color: Estabelecimento
                                                  .contraPrimaryColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            bottom: 0,
            left: 25,
            right: 25,
          )
        ],
      ),
    );
  }
}
