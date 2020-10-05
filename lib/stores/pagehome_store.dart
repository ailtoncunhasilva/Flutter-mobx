import 'package:mobx/mobx.dart';

part 'pagehome_store.g.dart';

class PageHomeStore = _PageHomeStore with _$PageHomeStore;

abstract class _PageHomeStore with Store {

  @observable 
  String email;

  @action 
  void setEmail(String value) => email = value;

  @computed 
  bool get emailValid => email != null;//...
  String get emailError {
    if(email == null || emailValid)
    return null;
    else if(email.isEmpty)
    return 'Entre com o E-mail cadastrado';
    else
    return 'E-mail inválido!';
  } 

  @observable 
  String password;

  @action 
  void setPassword(String value) => password = value;

  @computed 
  bool get passwordValid => password != null && password.length >= 6;
  String get passwordError {
    if(password == null || passwordValid)
    return null;
    else if(password.isEmpty)
    return 'Entre com sua senha cadastrada';
    else
    return 'Senha inválida';
  }

}