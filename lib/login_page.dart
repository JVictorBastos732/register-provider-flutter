import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_data.dart';
import 'register_page.dart';

// class LoginPage extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();

//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextFormField(
//                 controller: _usernameController,
//                 decoration: InputDecoration(labelText: 'Usuário'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Por favor, insira o nome de usuário';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(labelText: 'Senha'),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Por favor, insira a senha';
//                   }
//                   return null;
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     final username = _usernameController.text;
//                     final password = _passwordController.text;
//                     if ((username == 'Gerente' && password == '123')||(username == 'teste' && password == '456')) {
//                       Provider.of<UserData>(context, listen: false).setUsername(username);
//                       Provider.of<UserData>(context, listen: false).setPassword(password);
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => RegisterPage()),
//                       );
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Usuário ou senha invalido'),
//                         ),
//                       );
//                     }
//                   }
//                 },
//                 child: Text('Login'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 0, 254),
        title: Text(
          'Cadastro de Pessoas',
          style: TextStyle(color: Color.fromARGB(225, 255, 255, 255)),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          constraints: BoxConstraints(
            maxHeight: 250,
            maxWidth: 300,
            minHeight: 200,
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
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                  ),
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: 'Usuário'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome de usuário';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a senha';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final username = _usernameController.text;
                      final password = _passwordController.text;
                      if ((username == 'Gerente' && password == '123') ||
                          (username == 'Teste' && password == '456')) {
                        Provider.of<UserData>(context, listen: false)
                            .setUsername(username);
                        Provider.of<UserData>(context, listen: false)
                            .setPassword(password);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Usuário ou senha invalido'),
                          ),
                        );
                      }
                    }
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
