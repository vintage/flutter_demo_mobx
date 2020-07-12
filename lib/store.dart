import 'package:flutter_demo_mobx/data.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {
  @observable
  User me;

  @observable
  ObservableList<User> previousUsers = ObservableList();

  @computed
  bool get isAuthenticated => me != null;

  @action
  void login() {
    me = User(
      "Kamil #${previousUsers.length}",
      DateTime(1988, 6, 1),
      ["Dart", "Flutter"],
    );
  }

  @action
  void logout() {
    previousUsers.add(me);
    me = null;
  }

  @action
  void addSkill() {
    me = me.copyWith(skills: [...me.skills, "new skill"]);
  }
}
