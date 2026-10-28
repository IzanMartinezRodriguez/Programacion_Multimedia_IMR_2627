import 'package:flutter/material.dart';
import 'package:paisesgui/data/repositories/paises_repository.dart';
import 'package:paisesgui/domain/entities/pais.dart';

class InfoPaisGeneral extends StatelessWidget {
  InfoPaisGeneral({super.key});

  final PaisesRepository _repository = PaisesRepository();

  @override
  Widget build(BuildContext context) {
    Pais pais = _repository.infoPais();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen del país
              Image.network(
                pais.imagen ?? '',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),

              // Nombre del país
              Container(
                margin: const EdgeInsets.only(top: 12, left: 12),
                child: Text(
                  pais.nombre,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),

              // Capital
              Container(
                margin: const EdgeInsets.only(top: 4, left: 12),
                child: Text(
                  'Capital: ${pais.capital}',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
               

                ),
              ),

              // Descripción
              Container(
                margin: const EdgeInsets.only(top: 20, left: 12, right: 12),
                child: Text(
                  pais.descripcion ?? '',
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}