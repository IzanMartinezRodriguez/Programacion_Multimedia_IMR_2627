

import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/pais.dart';
import 'package:paisesgui/ui/widgets/my_weather_info.dart';

class InfoPaisDetalle extends StatelessWidget {
  InfoPaisDetalle({
    super.key,
  });

      // Referencia al repositorio, de donde obtendremos la lista de continentes
  final PaisesRepository _repository = PaisesRepository();
 @override
Widget build(BuildContext context) {
  Pais pais = _repository.infoPais();

  return Scaffold(
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Información del tiempo
            const MyWeatherInfo(),

            // Población
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const Text('Población:'),
                  const Spacer(),
                  Text('${pais.poblacion}'),
                ],
              ),
            ),

            // Latitud
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  const Text('Latitud:'),
                  const Spacer(), 
                  Text('${pais.latitud}'),
                ],
              ),
            ),

            // Longitud
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  const Text('Longitud:'),
                  const Spacer(),
                  Text('${pais.longitud}'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}
