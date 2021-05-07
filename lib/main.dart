import 'package:flutter/material.dart';
import 'package:flutter_lista_compras/loading.dart';
import 'package:flutter_lista_compras/login/login.dart';
import 'package:flutter_lista_compras/login/register.dart';
import 'package:flutter_lista_compras/telas/MenuApp.dart';
import 'package:flutter_lista_compras/telas/NewProduct.dart';
import 'package:flutter_lista_compras/telas/updateProduct.dart';
import 'package:flutter_lista_compras/telas/showProduct.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Controle de compras mensal',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Loading(),
      routes: {
        Register.nameRoute: (ctx) => Register(),
        Login.nameRoute: (ctx) => Login(),
        MenuApp.nameRoute: (ctx) => MenuApp(),
        NewProduct.nameRoute: (ctx) => NewProduct(),
        ShowProduct.nameRoute: (ctx) => ShowProduct(),
        UpdateProduct.nameRoute: (ctx) => UpdateProduct(),
      },
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('pt')],
    );
  }
}
