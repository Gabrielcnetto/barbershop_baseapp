import 'dart:ui';

import 'package:barbershop_baseapp/classes/Estabelecimento.dart';
import 'package:barbershop_baseapp/rotas/Approutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen01 extends StatelessWidget {
  const LoginScreen01({super.key});

  @override
  Widget build(BuildContext context) {
    final WidhtTela = MediaQuery.of(context).size.width;
    final heighTela = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
          child: Container(
            width: WidhtTela,
            height: heighTela,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: WidhtTela / 5.4,
                    height: heighTela / 5.4,
                    alignment: Alignment.center,
                    child: Image.asset(
                      Estabelecimento.urlLogo,
                    ),
                  ),
                  Text(
                    "Login",
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        color: Estabelecimento.primaryColor,
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //FORMULARIO DO LOGIN - INICIO
                  //FORMULARIO DO EMAIL - INICIO
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: WidhtTela,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //FORMULARIO DO E-MAIL
                        Text(
                          "Seu E-mail",
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Estabelecimento.primaryColor)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:
                                Estabelecimento.secondaryColor.withOpacity(0.2),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //FIM FORMULARIO DO EMAIL
                  const SizedBox(
                    height: 25,
                  ),

                  //FORMULARIO DO PASSWORD - INICIO
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: WidhtTela,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //FORMULARIO DO E-MAIL
                        Text(
                          "Sua Senha",
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Estabelecimento.primaryColor)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:
                                Estabelecimento.secondaryColor.withOpacity(0.2),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //FORMULARIO DO PASSWORD - FIM
                  const SizedBox(
                    height: 10,
                  ),
                  //FORMULARIO DO LOGIN - FIM
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Esqueceu a senha?",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Estabelecimento.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Estabelecimento.primaryColor,
                      ),
                      width: WidhtTela,
                      child: Text(
                        "Entrar",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Estabelecimento.contraPrimaryColor,
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: WidhtTela,
                      height: heighTela / 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Primeiro Acesso? ",
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Estabelecimento.secondaryColor,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){ 
                              Navigator.of(context).pushNamed(AppRoutesApp.RegisterAccountScreen);
                            },
                            child: Text(
                              "Crie a sua Conta",
                                style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w600, 
                                  color: Estabelecimento.primaryColor,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
