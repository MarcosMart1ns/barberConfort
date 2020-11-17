import 'package:BarberConfort/src/model/User.dart';
import 'package:BarberConfort/src/view_controllers/cadastroController.dart';
import 'package:email_validator/email_validator.dart';
import 'package:BarberConfort/src/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:BarberConfort/src/widgets/showLogo.dart';
import 'package:BarberConfort/src/themes/theme.dart';
import 'package:BarberConfort/src/utils/getDeviceInfo.dart';

class SignUp extends StatefulWidget {
  SignUpState createState() => SignUpState();
}

class SignUpState extends State {
  final TextEditingController inputEmailController = TextEditingController();
  final TextEditingController inputNameController = TextEditingController();
  final TextEditingController inputPWController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black38, //Theme.of(context).backgroundColor,
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: getDeviceWidth(context) * 0.60,
              child: appLogo,
            ),
            Text('Crie sua Conta',
                style: Theme.of(context).primaryTextTheme.headline6),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        controller: inputNameController,
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'Esta campo não pode estar vazio';
                          }
                          return null;
                        },
                        style: customTheme.primaryTextTheme.headline6,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,
                              color: customTheme.iconTheme.color),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Nome',
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
                        keyboardType: TextInputType.emailAddress,
                        controller: inputEmailController,
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'Esta campo não pode estar vazio';
                          }
                          if (!(EmailValidator.validate(value))) {
                            return 'Insira um email válido';
                          }

                          return null;
                        },
                        style: customTheme.primaryTextTheme.headline6,
                        //textAlign: TextAlign.start,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline,
                              color: customTheme.iconTheme.color),
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
                      margin: EdgeInsets.only(bottom: 15),
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
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.lock_outline, color: Colors.white),
                          hintStyle:
                              TextStyle(color: customTheme.iconTheme.color),
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
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                borderSide: BorderSide.none),
                            child: Text('Cadastrar',
                                style: TextStyle(
                                    fontSize: customTheme
                                        .primaryTextTheme.button.fontSize)),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                cadastrar(
                                    new User(
                                        inputEmailController.text,
                                        inputNameController.text,
                                        inputPWController.text),
                                    context);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Expanded(
                            child: RaisedButton(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                color: Colors.black12,
                                shape: Border(
                                    top: BorderSide(
                                        color: Color.fromRGBO(35, 33, 41, 1))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.arrow_back,
                                        color: Color.fromRGBO(45, 87, 253, 1)),
                                    Text(
                                      'Voltar para o login',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(45, 87, 253, 1)),
                                    ),
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                })),
                      ],
                    )))
          ],
        )));
  }
}
