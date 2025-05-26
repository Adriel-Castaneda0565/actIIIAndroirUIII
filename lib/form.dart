import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productIdController = TextEditingController();
  final _productDirController = TextEditingController();
  final _productTelController = TextEditingController();
  final _productEmaController = TextEditingController();
  final _productHoraController = TextEditingController();
  final _productNombreController = TextEditingController();
  final _productCpController = TextEditingController();
  final _productPWDesController = TextEditingController();
  final _productIdempController = TextEditingController();
 

  @override
  void dispose() {
     _productIdController.dispose();
    _productDirController.dispose();
    _productTelController.dispose();
    _productEmaController.dispose();
    _productHoraController.dispose();
    _productNombreController.dispose();
    _productCpController.dispose(); 
    _productPWDesController.dispose();
    _productIdempController.dispose();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            backgroundColor: Colors.deepPurple.shade300,
            title: const Text("Sucursales"),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productIdController,
                  fieldName: "ID_Sucursal",
                  myIcon: Icons.numbers_outlined,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 10.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: _productDirController,
                  fieldName: "Direccion",
                   myIcon: Icons.map_outlined,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productTelController,
                  fieldName: "Telefono",
                   myIcon: Icons.ring_volume,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productEmaController,
                  fieldName: "E-mail",
                   myIcon: Icons.mail_outline,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productHoraController,
                  fieldName: "Horario",
                   myIcon: Icons.punch_clock_outlined,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productNombreController,
                  fieldName: "Nombre",
                   myIcon: Icons.location_city,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productCpController,
                  fieldName: "CP",
                   myIcon: Icons.location_city_sharp,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productPWDesController,
                  fieldName: "Pag_web",
                   myIcon: Icons.web_asset,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              MyTextField(
                  myController: _productIdempController,
                  fieldName: "ID_Empleado",
                   myIcon: Icons.numbers_outlined,
                  prefixIconColor: Colors.deepPurple.shade300),
              const SizedBox(height: 20.0),
              myBtn(context),
            ],
          ),
        ));
  }

  //Function that returns OutlinedButton Widget also it pass data to Details Screen
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productName: _productIdController.text,
              productDir: _productDirController.text,
              productTel: _productTelController.text,
              productEma: _productEmaController.text,
              productHora: _productHoraController.text,
              productNombre: _productNombreController.text,
              productCp: _productCpController.text,
              productPW: _productPWDesController.text,
              productIdemp: _productIdempController.text,
            );
          }),
        );
      },
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.deepPurple),
      ),
    );
  }
}

//Custom STateless WIdget Class that helps re-usability
// You can learn it in Tutorial (2.13) Custom Widget in Flutter
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple)),
    );
  }
}
