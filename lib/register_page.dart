import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_data.dart';
import 'list_page.dart';

// class RegisterPage extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();

//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Preenchimento dos dados'),
//       ),
//       body: Center(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Nome'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Por favor, insira o nome';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Por favor, insira o email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _addressController,
//                 decoration: InputDecoration(labelText: 'Endereço'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Por favor, insira o endereço';
//                   }
//                   return null;
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     final name = _nameController.text;
//                     final email = _emailController.text;
//                     final address = _addressController.text;
//                     Provider.of<UserData>(context, listen: false).addPerson(
//                       name: name,
//                       email: email,
//                       address: address,
//                     );
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => ListPage()),
//                     );
//                   }
//                 },
//                 child: Text('Enviar'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 0, 254),
        title: Text(
          'Cadastro',
          style: TextStyle(color: Color.fromARGB(225, 255, 255, 255)),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 500,
            minHeight: 300,
            minWidth: 300,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Color.fromARGB(181, 80, 0, 254),
              width: 1.5,
              style: BorderStyle.solid,
            ),
            //color: Color.fromARGB(98, 80, 0, 254),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Preenchimento dos dados',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(labelText: 'Endereço'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o endereço';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final name = _nameController.text;
                      final email = _emailController.text;
                      final address = _addressController.text;
                      Provider.of<UserData>(context, listen: false).addPerson(
                        name: name,
                        email: email,
                        address: address,
                      );
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => ListPage()),
                      );
                    }
                  },
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
