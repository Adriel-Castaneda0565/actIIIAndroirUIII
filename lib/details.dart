import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details(
      {Key? key, required this.productName, required this.productDir,required this.productTel,required this.productEma,required this.productHora,required this.productNombre,required this.productCp,required this.productPW,required this.productIdemp})
      : super(key: key);

  String productName,productDir,productTel,productEma,productHora,productNombre,productCp,productIdemp,productPW;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Details",
          ),
          //Pop and navigate to previous screen
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Container(
          padding: const EdgeInsets.all(4.0),
          child: ListView(
            children: [Card(
  elevation: 4,
  margin: const EdgeInsets.all(12),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(Icons.numbers, color: Colors.purple),
          title: Text('ID_Sucursal'),
          subtitle: Text(productName), // <-- Reemplazar con valor real
        ),
        ListTile(
          leading: Icon(Icons.map, color: Colors.purple),
          title: Text('Direccion'),
          subtitle: Text(productDir),
        ),
        ListTile(
          leading: Icon(Icons.phone, color: Colors.purple),
          title: Text('Telefono'),
          subtitle: Text(productTel),
        ),
        ListTile(
          leading: Icon(Icons.email, color: Colors.purple),
          title: Text('E-mail'),
          subtitle: Text(productEma),
        ),
        ListTile(
          leading: Icon(Icons.access_time, color: Colors.purple),
          title: Text('Horario'),
          subtitle: Text(productHora),
        ),
        ListTile(
          leading: Icon(Icons.store, color: Colors.purple),
          title: Text('Nombre'),
          subtitle: Text(productNombre),
        ),
        ListTile(
          leading: Icon(Icons.location_city, color: Colors.purple),
          title: Text('CP'),
          subtitle: Text(productCp),
        ),
        ListTile(
          leading: Icon(Icons.web, color: Colors.purple),
          title: Text('Pag_web'),
          subtitle: Text(productPW),
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.purple),
          title: Text('ID_Empleado'),
          subtitle: Text(productIdemp),
        ),
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.purple,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text("SUBMIT FORM"),
          ),
        )
      ],
    ),
  ),
),
            ],
          ),
        ));
  }
}
