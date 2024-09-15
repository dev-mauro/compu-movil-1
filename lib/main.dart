import 'package:flutter/material.dart';
import 'enums/views_enum.dart';
import 'widgets/header.dart';
import 'views/home_view.dart';
import 'views/faq_view.dart';
import 'widgets/change_fontsize_button.dart';
import 'views/registro_view.dart';
import 'views/consulta_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // Puedes manejar las opciones seleccionadas aquí si es necesario
  AppViews _selectedMenuOption = AppViews.inicio;
  double _fontSize = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homologación Multibanda/SAE'),
        actions: [
          // Botón desplega menú en la AppBar
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _showMenu(context);
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          const Header(),

          // BODY renderizado de forma condicional

          if (_selectedMenuOption == AppViews.inicio)
            HomeView(fontSize: _fontSize),
          if (_selectedMenuOption == AppViews.registro)
            RegistroView(fontSize: _fontSize),
          if (_selectedMenuOption == AppViews.faq)
            FaqView(fontSize: _fontSize),
          if (_selectedMenuOption == AppViews.consulta)
            ConsultaImeiWidget(fontSize: _fontSize),
          
        ],
      ),
      floatingActionButton: ChangeFontsizeButton(
        _setSmallFontSize,
        _setMediumFontSize,
        _setLargeFontSize,
      ),
    );
  }

  // Muestra el menú de navegación en la zona inferior de la pantalla
  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('¿Qué es la Multibanda/SAE?'),
                onTap: () {
                  setState(() {
                    _selectedMenuOption = AppViews.inicio;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Registro de Empresas Certificadoras'),
                onTap: () {
                  setState(() {
                    _selectedMenuOption = AppViews.registro;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('Preguntas Frecuentes'),
                onTap: () {
                  setState(() {
                    _selectedMenuOption = AppViews.faq;
                  });
                  Navigator.pop(context); // Cerrar el menú
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_mark),
                title: const Text('Consulta tu IMEI'),
                onTap: () {
                  setState(() {
                    _selectedMenuOption = AppViews.consulta;
                  });
                  Navigator.pop(context); // Cerrar el menú
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _setSmallFontSize() {
    setState(() {
      _fontSize = 12;
    });
  }

  void _setMediumFontSize() {
    setState(() {
      _fontSize = 16;
    });
  }

  void _setLargeFontSize() {
    setState(() {
      _fontSize = 20;
    });
  }
}
