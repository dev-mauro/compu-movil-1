import 'package:flutter/material.dart';

class ChangeFontsizeButton extends StatelessWidget {
  final void Function() setSmallFontSize, setMediumFontSize, setLargeFontSize;
  const ChangeFontsizeButton(
    this.setSmallFontSize,
    this.setMediumFontSize,
    this.setLargeFontSize,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showFontSizeMenu(context, setSmallFontSize, setMediumFontSize, setLargeFontSize);
      },
      child: const Icon(Icons.text_fields),
    );
  }
}

void _showFontSizeMenu(
  BuildContext context, 
  void Function() setSmallFontSize,
  void Function() setMediumFontSize, 
  void Function() setLargeFontSize) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200, // Altura del menú desplegable
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.text_fields),
                title: const Text('Pequeño'),
                onTap: () {
                  setSmallFontSize();
                  Navigator.pop(context); // Cerrar el menú
                },
              ),
              ListTile(
                leading: const Icon(Icons.text_fields),
                title: const Text('Mediano'),
                onTap: () {
                  setMediumFontSize();
                  Navigator.pop(context); // Cerrar el menú
                },
              ),
              ListTile(
                leading: const Icon(Icons.text_fields),
                title: const Text('Grande'),
                onTap: () {
                  setLargeFontSize();
                  Navigator.pop(context); // Cerrar el menú
                },
              ),
            ],
          ),
        );
      },
    );
  }