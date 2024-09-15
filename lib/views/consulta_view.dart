import 'package:flutter/material.dart';

class ConsultaImeiWidget extends StatelessWidget {
  final double fontSize;
  const ConsultaImeiWidget({super.key, required this.fontSize});
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                'Preguntas Frecuentes',
                style: TextStyle(
                  fontSize: fontSize + 4,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              )
            ),
          ),
          const Divider(),
          const SizedBox(height: 20),
          
          Text(
            '– Consulta en el sitio web de cualquier empresa móvil el estado de tu equipo con el IMEI. Te recomendamos cualquiera de los siguientes sitios:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize,),
          ),
          const SizedBox(height: 10),
          _buildCompanyInfo('CLARO', 'https://www.clarochile.cl/personas/equipos/consulta-imei/'),
          _buildCompanyInfo('ENTEL', 'http://entel.cl/nueva-normativa/'),
          _buildCompanyInfo('MOVISTAR', 'https://ww2.movistar.cl/terminos-regulaciones/multibanda-sae/'),
          _buildCompanyInfo('VTR', 'https://vtr.com/productos/consulta-imei'),
          _buildCompanyInfo('WOM', 'https://www.wom.cl/sello-multibandas/'),
          const SizedBox(height: 20),
          Text(
            '– Si es un teléfono móvil comprado en el extranjero, revisa el listado de las empresas certificadoras donde puedes inscribirlo y desbloquearlo gratuitamente. Si lo compraste en Chile, debes acudir directamente a la empresa o retail y solicitar el desbloqueo.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize,),
          ),
          const SizedBox(height: 20),
          Text(
            '– En el caso de otros dispositivos móviles comprados en el extranjero, como IoT u otros que usen Sim Card, revisa el listado de las empresas certificadoras donde puedes registrarlo y desbloquearlo. Si lo compraste en Chile, debes acudir directamente a la empresa o retail y solicitar el desbloqueo.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
          ),
          Text(
            '\nListado de las empresas certificadoras: \nhttps://multibanda.cl/empresas-certificadoras/',
            style: TextStyle(color: Colors.black, fontSize: fontSize),
          ),
        ],
      ),
    );
  }

  Widget _buildCompanyInfo(String company, String url) {
    return RichText(
      text: TextSpan(
        text: '$company Consulta IMEI: \n',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: fontSize,
        ),
        children: [
          TextSpan(
            text: '$url\n',
            style: TextStyle(
              color: Colors.blue,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
