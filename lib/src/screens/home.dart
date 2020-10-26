import 'package:flutter/material.dart';
import 'package:BarberConfort/src/widgets/showLogo.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          showLogo(),
          Text('Faça seu login',
              style: Theme.of(context).primaryTextTheme.headline6),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Form(
                //key:,
                child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return 'Campo não pode estar vazio';
                    }
                    return null;
                  },
                  //controller:,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return 'Campo não pode estar vazio,insira uma senha';
                    }
                    return null;
                  },
                  //controller:,
                  decoration: InputDecoration(
                    hintText: 'Senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                )
              ],
            )),
          )),
        ],
      ),
    );
  }
}
