import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Frida Sofia Apodaca Cera MAT:1136"),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: Color(0xffa3d0fb), fontSize: 15),
          backgroundColor: const Color(0xff1a2f4e),
        ),
        body: EmpleadoInfo(),
      ),
    );
  }
}

class Empleado {
  int id_empleado;
  String nombre;
  String sexo;
  int telefono;
  double sueldo;
  String direccion;

  Empleado({
    required this.id_empleado,
    required this.nombre,
    required this.sexo,
    required this.telefono,
    required this.sueldo,
    required this.direccion,
  });
}

class EmpleadoInfo extends StatelessWidget {
  final Empleado empleado = Empleado(
    id_empleado: 021,
    nombre: 'Juan Perez',
    sexo: 'Masculino',
    telefono: 6562148564,
    sueldo: 5000.0,
    direccion: 'Oscar Flores',
  );

  final Map<String, String> infoPersonal = {
    'ID': '021',
    'Nombre': 'Juan Perez',
    'Sexo': 'Masculino',
  };

  final Map<String, String> infoLaboral = {
    'telefono': '6562148564',
    'Salario': '5000.0',
    'Direccion': 'Oscar Flores',
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Card para información personal
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color(0xff133c5a),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: infoPersonal.entries.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Text(
                          '${entry.key}: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          entry.value,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 20), // Separador entre las dos Cards
          // Card para información laboral
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color(0xff81afe3),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: infoLaboral.entries.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Text(
                          '${entry.key}: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          entry.value,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
