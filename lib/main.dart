import 'task/one_task.dart';
import 'task/two_task.dart';

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
}