import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final double fontSize;
  const HomeView({super.key, required this.fontSize});

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
                fontSize: fontSize - 2
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '¿Qué es Multibanda/SAE?',
                style: TextStyle(
                  fontSize: fontSize + 4,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              )
            ),
          ),
          const Divider(),
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: fontSize,
                  color: Colors.black,
                ),
              children: const <TextSpan>[
                TextSpan(text: "\nEs una política pública,"),  
                TextSpan(
                  text: "relanzada el 11 de febrero de 2019, ",
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),  
                TextSpan(text: "que entregará dos importantes beneficios a las personas:\n\n"),  
                TextSpan(
                  text: "1.- ",
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),
                TextSpan(text: "Todos los teléfonos móviles que se comercialicen en el país desde ese día, recibirán los mensajes de emergencia que envía SENAPRED (SAE): "),
                TextSpan(
                  text: "¡Más seguridad para las personas!\n\n",
                  style: TextStyle(fontWeight: FontWeight.bold)
                ), 
                TextSpan(
                  text: "2.- ",
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),  
                TextSpan(text: "Se informará a través de un sello, la compatibilidad del teléfono móvil con las diferentes tecnologías: 2G, 3G y 4G: "),  
                TextSpan(
                  text: "¡Más información para las personas!\n\n",
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),  
                TextSpan(text: "– A partir de esa fecha cualquier dispositivo que use la red móvil, para ser reconocido por ésta, deberá estar incluido en un sistema centralizado conectado a dicha red, a través de su número de identificación (IMEI).\n\n"), 
                TextSpan(text: "– Las formas de inclusión en este sistema dependen del tipo de dispositivo y de su compra en Chile o en el extranjero.\n\n"), 
                TextSpan(text: "– Las únicas empresas que están habilitadas para incluir los dispositivos en este sistema, son las denominadas empresas certificadoras, validadas por Subtel (www.multibanda.cl).\n\n"), 
                TextSpan(text: "– Sin embargo, las empresas móviles también deben entregar a sus clientes el servicio para incluir los dispositivos en este sistema.\n\n"), 
                TextSpan(text: "– Si transcurrido un plazo de 1 o 2 horas desde que reciba la confirmación por parte de la Empresa Certificadora de que efectuó la Inscripción del mismo en la Base de Datos Centralizada aquél no funciona, diríjase a la compañía de telecomunicaciones chilena con la que contrató el servicio (sea plan o prepago) y a que pertenece la Sim Card que se encuentra utilizando.\n\n"), 
                TextSpan(text: "– Para verificar si su equipo está correctamente inscrito en el sistema, ingrese el IMEI del mismo en alguno de los sitios de consulta de las empresas móviles indicados en: Consulta IMEI\n\n"), 
              ]
              )
            )
          )
        ]
      ),
    );
  }
}

