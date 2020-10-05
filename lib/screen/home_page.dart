import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_flutter/stores/pagehome_store.dart';

class HomePage extends StatelessWidget {
  final PageHomeStore pagehomeStore = PageHomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faça login'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              elevation: 8,
              margin: EdgeInsets.symmetric(horizontal: 28),
              child: Padding(
                padding: const EdgeInsets.all(26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Entre com E-mail',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                    SizedBox(height: 8),
                    Observer(builder: (_) {
                      return TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          hintText: 'Exemplo: fulano@gmail.com',
                          isDense: true,
                          errorText: pagehomeStore.emailError,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: pagehomeStore.setEmail,
                      );
                    }),
                    SizedBox(height: 12),
                    Text(
                      'Senha',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                    SizedBox(height: 8),
                    Observer(builder: (_) {
                      return TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          isDense: true,
                          hintText: 'w23ead',
                          errorText: pagehomeStore.passwordError,
                        ),
                        obscureText: true,
                        onChanged: pagehomeStore.setPassword,
                      );
                    }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
