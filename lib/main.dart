// ignore_for_file: non_constant_identifier_names

import 'task/one_task.dart';
import 'task/two_task.dart';
import 'task/three_task.dart';
import 'task/four_task.dart';
import 'task/five_task.dart';
import 'task/six_task.dart';
import 'task/seven_task.dart';
import 'task/eight_task.dart';

void main() {
  Onetask taskone = Onetask();
  taskone.nod(4, 2);
  taskone.nok(4, 2);
  // ignore: avoid_print
  print(taskone.factorsOf(118));

  Twotask tasktwo = Twotask();
  // ignore: avoid_print
  print(tasktwo.intToBinary(100));
  // ignore: avoid_print
  print(tasktwo.binaryToInt('1010111'));

  Threetask threetask = Threetask();
  threetask.inInt();

  Fourtask fourtask = Fourtask();
  fourtask.findInString();

  Fivetask fivetask = Fivetask();

  // ignore: avoid_print
  print(fivetask.findNumsIn('1 2 3 4'));
  // ignore: avoid_print
  print(fivetask.findStringsIn(['one', 'two', 'zero', 'zero']));
  // ignore: avoid_print
  print(fivetask.findNumNamesIn(['one', 'two', 'zero', 'zero']));

  Point point = Point(33, 33, 33);
  var pointResult = point.distanceTo(2, 2, 2);
  // ignore: avoid_print
  print("POINT $pointResult");

  Seventask seventask = Seventask();
  // ignore: avoid_print
  print(seventask.nroot(100, 2));

  UserManager userManager = UserManager();
  userManager.add(User('test1@mail.ru'));
  userManager.add(User('test2@mail.ru'));

  // ignore: avoid_print
  print(userManager.getEmails());
}
