//Создайте класс User, у которого есть поле email. Реализуйте два наследника данного класса AdminUser и GeneralUser. Реализуйте mixin над классом User,
// у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @. Например, если email пользователя user@mail.ru,
// то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>, у которого будет храниться
// список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако
//если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.
class User {
  String? email;
  User(this.email);
}

class AdminUser extends User with MailSystemChecker {
  AdminUser(String? email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String? email) : super(email);
}

mixin MailSystemChecker on User {
  String? getMailSystem() => email?.split('@').last;
}

class UserManager<T extends User> {
  Set<T> users = {};

  void add(T user) => users.add(user);

  void remove(T user) => users.remove(user);

  List<String> getEmails() {
    final List<String> emails = [];

    for (final user in users) {
      if (user.email != null) {
        if (user is AdminUser) {
          emails.add(user.getMailSystem()!);
        } else {
          emails.add(user.email!);
        }
      }
    }

    return emails;
  }
}
