import 'package:flutter/material.dart';

class FaqView extends StatefulWidget {
  final double fontSize;
  const FaqView({super.key, required this.fontSize});

  @override
  FaqViewState createState() => FaqViewState();

}

class FaqViewState extends State<FaqView> {

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> _keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  void _scrollToText(int section) {
    final context = _keys[section].currentContext;

    if (context != null) {
      Scrollable.ensureVisible(context, duration: const Duration(seconds: 1));
    }
  }


  @override
  Widget build( BuildContext context ) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '18 de Octubre de 2018',
              style: TextStyle(
                fontSize: widget.fontSize - 2
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Preguntas Frecuentes',
                style: TextStyle(
                  fontSize: widget.fontSize + 4,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              )
            ),
          ),
          const Divider(),

          // INICIO BOTONES
            
          const SizedBox(height: 10),
          SizedBox(
            height: 130,
            width: double.infinity,
            child: FilledButton(
              onPressed: () => _scrollToText(0),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromRGBO(194, 88, 10, 1)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'Generalidades sobre Multibanda/SAE',
                  style: TextStyle(
                    fontSize: widget.fontSize + 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 130,
            width: double.infinity,
            child: FilledButton(
              onPressed: () => _scrollToText(1),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromRGBO(18, 104, 156, 1)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'Personas naturales que traen teléfonos móviles a Chile (residentes o extranjeros)',
                  style: TextStyle(
                    fontSize: widget.fontSize + 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              )
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 130,
            width: double.infinity,
            child: FilledButton(
              onPressed: () => _scrollToText(2),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromRGBO(7, 122, 48, 1)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'Bloqueo e inscripción de teléfonos',
                  style: TextStyle(
                    fontSize: widget.fontSize + 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              )
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 130,
            width: double.infinity,
            child: FilledButton(
              onPressed: () => _scrollToText(3),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromRGBO(161, 14, 35, 1)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'En qué fijarse al comprar un teléfono en Chile',
                  style: TextStyle(
                    fontSize: widget.fontSize + 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              )
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 130,
            width: double.infinity,
            child: FilledButton(
              onPressed: () => _scrollToText(4),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromRGBO(148, 14, 81, 1)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'Personas naturales que traen dispositivos móviles a Chile (residentes o extranjeros)',
                  style: TextStyle(
                    fontSize: widget.fontSize + 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              )
            ),
          ),

          // FIN BOTONES
          const SizedBox(height: 50),

          SingleChildScrollView(
            controller: _scrollController,
            child: Column(children: [
              RichText(
                key: _keys[0],
                text: TextSpan(
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: "Generalidades sobre Norma Multibanda SAE\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),  
                    TextSpan(
                      text: "P: ¿Qué es la norma Multibanda/SAE?\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),  
                    TextSpan(text: "R: Corresponde a una política pública que ha impulsado Subtel, traducida en un conjunto de normativa sectorial, que exige que todos los teléfonos móviles a comercializarse en el país cumplan un proceso de homologación (pruebas de carácter técnico), que asegura que dicho teléfono:\n\n"),  
                    TextSpan(text: "1. Reciba los mensajes del Sistema de Alerta de Emergencia (SAE) que envía SENAPRED a la población cuando debido a algún fenómeno, natural o no, se puede poner en riesgo su vida (tsunamis, aludes, erupciones, etc)."),  
                    TextSpan(text: "2. Funcione en todas las bandas de frecuencia disponibles en, al menos, una de las tecnologías móviles (2G, 3G y/o 4G).\n\n"),  
                    TextSpan(text: "3. Permita la portación del número ya que estará desbloqueado para su uso en cualquier compañía móvil del país. Es decir, que funcione con cualquier compañía y no sólo con la que originalmente operaba.\n\n\n\n"),
                  ]
                )
              ),


              RichText(
                key: _keys[1],
                text: TextSpan(
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: "Personas naturales que traen teléfonos móviles a Chile (residentes o extranjeros)\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "P: Soy persona natural y traje un teléfono desde el extranjero ¿qué debo hacer?\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(text: "R: Las personas naturales que ingresen al país teléfonos para su uso personal, deben inscribirlos. Cuando lo active con una Sim Card nacional recibirá un SMS indicándole que tiene 30 días para realizar dicha inscripción. Para ello tienes dos alternativas:\n\n"),  
                    TextSpan(text: "1. Solicita la inscripción en la Oficina Comercial de la empresa móvil a la que corresponde su Sim Card, quienes deberán realizar el trámite en el mismo momento.\n\n"),  
                    TextSpan(text: "2. Ingresa exclusivamente al link que le llegó en el SMS (https://multibanda.cl/ia ), elija una de las Empresas Certificadoras, completa la información solicitada y adjunta los documentos requeridos (ver puntos siguientes).\n\n\n\n"),
                  ]
                )
              ),



              RichText(
                key: _keys[2],
                text: TextSpan(
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[    
                    TextSpan(
                      text: "Bloqueo e inscripción de teléfonos\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "P: ¿Qué es el IMEI de mi equipo?\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(text: "R: El IMEI, es un número de 15 dígitos único para cada equipo móvil, teléfono u otro dispositivo, que se usa para identificarlo en la red móvil. IMEI es el acrónimo en inglés de International Mobile Station Equipment Identity (Identidad Internacional del Equipo Móvil).\n\n"),  
                    TextSpan(
                      text: "P: ¿Cómo puedo conocer el IMEI de mi teléfono?\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(text: "R: En su teléfono marque lo siguiente, como si fuera a hacer una llamada telefónica: *#06# y el equipo le entregará el IMEI, que es un número de 15 dígitos.\n\n\n\n"),
                  ]
                )
              ),


              RichText(
                key: _keys[3],
                text: TextSpan(
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[   
                    TextSpan(
                      text: "En qué fijarse al comprar un teléfono en Chile\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "P: ¿Qué pasa si compro un teléfono sin sello?\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(text: "R: Puedes dirigirte a la Subsecretaría de Telecomunicaciones o al Sernac para denunciar y reclamar esta situación, dependiendo de si el teléfono fue vendido por una compañía de telecomunicaciones o no (retail, distribuidores, etc.).\n\n\n\n"),
                  ]
                )
              ),



              RichText(
                key: _keys[4],
                text: TextSpan(
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: Colors.black,
                  ),
                  children: const <TextSpan>[   
                    TextSpan(
                      text: "Personas naturales que traen dispositivos móviles a Chile (residentes o extranjeros)\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(
                      text: "P: ¿Qué ocurre con los otros dispositivos, que no son teléfonos, y que ocupan la red de las compañías móviles?\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                    TextSpan(text: "R: Si bien estos equipos no requieren homologación (no se prueban técnicamente), deben registrarse en el sistema para que puedan funcionar permanentemente en las redes móviles.\n\n"),
                    TextSpan(text: "Si el dispositivo sólo va a conectarse a través de wifi, no requiere registrarse, pero si va a usar una Sim Card local, tendrá 30 días para registrarse desde la primera vez que se conectó a la red móvil.\n\n"),
                    TextSpan(text: "En el caso de los equipos en funcionamiento antes del 11 de febrero de 2019, y al igual que para los teléfonos, serán incorporados automáticamente al sistema por las compañías móviles.\n\n"),
                    TextSpan(text: "Por ende, los dispositivos móviles que traigan al país las personas naturales a partir del 11 de febrero de 2019, deben ser registrados a través de una Empresa Certificadora (multibanda.cl), las que solicitarán los antecedentes que permitan identificar el tipo de dispositivo que se quiere registrar.\n\n"),
                    TextSpan(text: "Sin registro, sólo hay conexión a las redes móviles por 30 días.\n\n\n\n"),
                  ]
                )
              ),



            ])
          ),
        ]
      ),

    );
  }

}