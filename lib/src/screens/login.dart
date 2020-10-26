import 'package:flutter/material.dart';
import 'package:BarberConfort/src/widgets/showLogo.dart';
import 'package:BarberConfort/src/themes/theme.dart';

class Login extends StatefulWidget {
  LoginState createState() => LoginState();
}

class LoginState extends State {
  final TextEditingController inputEmailController = TextEditingController();
  final TextEditingController inputPWController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            appLogo,
            Text('Faça seu login',
                style: Theme.of(context).primaryTextTheme.headline6),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        controller: inputEmailController,
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'Esta campo não pode estar vazio';
                          }
                          return null;
                        },
                        style: customTheme.primaryTextTheme.headline6,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.mail_outline, color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'E-mail',
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide.none),
                          fillColor: Color.fromRGBO(35, 33, 41, 1),
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        obscureText: true,
                        controller: inputPWController,
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'Esta campo não pode estar vazio';
                          }
                          return null;
                        },
                        style: customTheme.primaryTextTheme.headline6,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.lock_outline, color: Colors.white),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Senha',
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide.none),
                          fillColor: Color.fromRGBO(35, 33, 41, 1),
                          filled: true,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RaisedButton(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none),
                            child: Text('Entrar'),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                print('Email: ' + inputEmailController.text);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    Text('Esqueci minha senha',
                        style: customTheme.primaryTextTheme.headline6),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('Cadastrar-se',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
