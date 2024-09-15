import 'package:flutter/material.dart';


class RegistroView extends StatelessWidget {
  final double fontSize;
  const RegistroView({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '18 de Octubre de 2018',
              style: TextStyle(
                fontSize: fontSize - 2,
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
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: fontSize + 4,
                ),
              )
            ),
          ),
          const Divider(), 
          const SizedBox(height: 20),
    
    
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                headingRowColor: MaterialStateColor.resolveWith((states) => Color.fromRGBO(0, 51, 102, 1)),
                columns: const [
                  DataColumn(label: Text('Empresa', style: TextStyle(color: Colors.white))),
                  DataColumn(label: Text('Dirección', style: TextStyle(color: Colors.white))),
                  DataColumn(label: Text('Teléfono', style: TextStyle(color: Colors.white))),
                  DataColumn(label: Text('Correo electrónico de contacto', style: TextStyle(color: Colors.white))),
                  DataColumn(label: Text('Sitio web', style: TextStyle(color: Colors.white))),
                  DataColumn(label: Text('Horario de Atención', style: TextStyle(color: Colors.white))),
                  DataColumn(label: Text('Código de Empresa Certificadora', style: TextStyle(color: Colors.white))),
                  DataColumn(label: Text('Fecha incorporación Registro', style: TextStyle(color: Colors.white))),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('DEKRA Testing & Certification Ltda.')),
                    DataCell(Text('Atención presencial suspendida temporalmente.\nSólo Auto-atención mediante Sitio Web.')),
                    DataCell(Text('(Solo contacto vía correo electrónico)')),
                    DataCell(Text('Inscripciones Administrativas:\niadministrativasubtel.cl@dekra.com\nHomologaciones y Control de embarque:\ncertificacionsubtel.cl@dekra.com')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('dekra.cl'),
                        Text('service.dekra.cl'),
                      ],
                    )),
                    DataCell(Text('Lunes a Viernes, de 9:00 a 13:00')),
                    DataCell(Text('100')),
                    DataCell(Text('02/12/2016')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Ingenieros y Auditores Asociados Ltda')),
                    DataCell(Text('Atención presencial suspendida temporalmente.\nSólo Auto-atención mediante Sitio Web.')),
                    DataCell(Text('+56 2 26 04 86 20\n+56 9 38 88 58 64')),
                    DataCell(Text('certificacion@ingeaudit.cl')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ingeaudit.cl'),
                        Text('Ingeaudit_IA'),
                      ],
                    )),
                    DataCell(Text('09:30 a 17:30 hrs')),
                    DataCell(Text('101')),
                    DataCell(Text('27/12/2016')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Huawei (Chile) S.A.')),
                    DataCell(Text('Atención presencial suspendida temporalmente.\nSólo Auto-atención mediante Sitio Web.')),
                    DataCell(Text('+56 9 94989021')),
                    DataCell(Text('pmail_huaweichileservice@huawei.com')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('consumer.huawei.com/cl'),
                        Text('Huawei_IA'),
                      ],
                    )),
                    DataCell(Text('Lunes a Jueves de 09:00 hrs. a 13:00 hrs. y de 14:30 hrs. a 17:30 hrs.\nViernes de 09:00 hrs. a 13:00 hrs. y de 14:30 hrs. a 16:00 hrs.')),
                    DataCell(Text('102')),
                    DataCell(Text('27/12/2016')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Telconsur Ltda.')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Atención presencial suspendida temporalmente.'),
                        Text('Sólo Auto-atención mediante Sitio Web.'),
                      ],
                    )),
                    DataCell(Text('+56 9 34563316')),
                    DataCell(Text('certificacionsubtel@telconsur.com')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('telconsur.com'),
                        Text('Telconsur_IA'),
                      ],
                    )),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lunes a Jueves de 09:00 hrs. – 13:00 hrs.'),
                        Text('14:30 – 17:30 hrs. Viernes 09:00 hrs. – 13:00 hrs.'),
                      ],
                    )),
                    DataCell(Text('103')),
                    DataCell(Text('28/12/2016')),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('Samsung Electronics Chile Limitada')),
                    DataCell(Text('Sólo Auto-atención mediante Sitio Web.')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('8007267864'),
                        Text('+56 2 24828200 desde celulares'),
                      ],
                    )),
                    DataCell(Text('certificacionsubtel@samsung.com')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('samsung.com/cl/normativamultibanda/'),
                        Text('Samsung_IA'),
                      ],
                    )),
                    DataCell(Text('')),
                    DataCell(Text('104')),
                    DataCell(Text('15-02-2017')),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('Telefónica Móviles Chile S.A.')),
                    DataCell(Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sucursal Apoquindo: Avda. Apoquindo 3500'),
                          Text('Sucursal Parque Arauco: Av Presidente Kennedy 5413 Sector Boulevard local 460 (Parque Arauco)'),
                        ],
                    )),
                    DataCell(Text('+56 2 26913633')),
                    DataCell(Text('prueba.terminales.cl@telefonica.com')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('movistar.cl'),
                        Text('Movistar_IA'),
                      ],
                    )),
                    DataCell(Text('')),
                    DataCell(Text('105')),
                    DataCell(Text('15-02-2017')),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('D y M Equipos e Ingeniería Ltda. (Dymeq)')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Atención presencial suspendida temporalmente.'),
                        Text('Sólo Auto-atención mediante Sitio Web.'),
                      ],
                    )),
                    DataCell(Text('+56 2 2339 2000')),
                    DataCell(Text('homologacion@dymeq.com')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('dymeq.com'),
                        Text('Dymeq_IA'),
                      ],
                    )),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Atención Presencial suspendida.'),
                        Text('Atención canales digitales Lunes a Viernes 08:30 – 18:00'),
                      ],
                    )),
                    DataCell(Text('107')),
                    DataCell(Text('19-06-2017')),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('Kiwox Soluciones Tecnológicas KWX S.P.A.')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Atención presencial suspendida temporalmente.'),
                        Text('Sólo Auto-atención mediante Sitio Web.'),
                      ],
                    )),
                    DataCell(Text('+56 2 2656 7705')),
                    DataCell(Text('agendamientooabi@kiwox.cl')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('inscripcionadministrativaoabi.subtel.kiwox.net'),
                        Text('Kiwox_IA'),
                      ],
                    )),
                    DataCell(Text('')),
                    DataCell(Text('108')),
                    DataCell(Text('22-06-2017')),
                  ]),

                  DataRow(cells: [
                    DataCell(Text('I&I Asesorías de Ingeniería y Tecnología Limitada')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Atención presencial suspendida temporalmente.'),
                        Text('Sólo Auto-atención mediante Sitio Web.'),
                      ],
                    )),
                    DataCell(Text('+56 9 40490825')),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Formulario español: www.iaiasesorias.cl/ia'),
                        Text('Formulario inglés: www.iaiasesorias/ai'),
                      ],
                    )),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('iaiasesorias.cl'),
                        Text('I&I_IA'),
                      ],
                    )),
                    DataCell(Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Horario atención telefónico: Lunes a Viernes de 09:00 a 13:00'),
                        Text('y de 14:00 a 18:00'),
                      ],
                    )),
                    DataCell(Text('109')),
                    DataCell(Text('22-06-2017')),
                  ]),
      
                ],
              ),
            ),
          )],
      ),
    );
  }
}