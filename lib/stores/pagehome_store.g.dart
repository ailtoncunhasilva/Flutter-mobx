// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagehome_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageHomeStore on _PageHomeStore, Store {
  Computed<bool> _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_PageHomeStore.emailValid'))
          .value;
  Computed<bool> _$passwordValidComputed;

  @override
  bool get passwordValid =>
      (_$passwordValidComputed ??= Computed<bool>(() => super.passwordValid,
              name: '_PageHomeStore.passwordValid'))
          .value;

  final _$emailAtom = Atom(name: '_PageHomeStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_PageHomeStore.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_PageHomeStoreActionController =
      ActionController(name: '_PageHomeStore');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_PageHomeStoreActionController.startAction(
        name: '_PageHomeStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_PageHomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_PageHomeStoreActionController.startAction(
        name: '_PageHomeStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_PageHomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
emailValid: ${emailValid},
passwordValid: ${passwordValid}
    ''';
  }
}
