// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on UserStoreBase, Store {
  Computed<bool> _$isAuthenticatedComputed;

  @override
  bool get isAuthenticated =>
      (_$isAuthenticatedComputed ??= Computed<bool>(() => super.isAuthenticated,
              name: 'UserStoreBase.isAuthenticated'))
          .value;

  final _$meAtom = Atom(name: 'UserStoreBase.me');

  @override
  User get me {
    _$meAtom.reportRead();
    return super.me;
  }

  @override
  set me(User value) {
    _$meAtom.reportWrite(value, super.me, () {
      super.me = value;
    });
  }

  final _$previousUsersAtom = Atom(name: 'UserStoreBase.previousUsers');

  @override
  ObservableList<User> get previousUsers {
    _$previousUsersAtom.reportRead();
    return super.previousUsers;
  }

  @override
  set previousUsers(ObservableList<User> value) {
    _$previousUsersAtom.reportWrite(value, super.previousUsers, () {
      super.previousUsers = value;
    });
  }

  final _$UserStoreBaseActionController =
      ActionController(name: 'UserStoreBase');

  @override
  void login() {
    final _$actionInfo = _$UserStoreBaseActionController.startAction(
        name: 'UserStoreBase.login');
    try {
      return super.login();
    } finally {
      _$UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$UserStoreBaseActionController.startAction(
        name: 'UserStoreBase.logout');
    try {
      return super.logout();
    } finally {
      _$UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addSkill() {
    final _$actionInfo = _$UserStoreBaseActionController.startAction(
        name: 'UserStoreBase.addSkill');
    try {
      return super.addSkill();
    } finally {
      _$UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
me: ${me},
previousUsers: ${previousUsers},
isAuthenticated: ${isAuthenticated}
    ''';
  }
}
