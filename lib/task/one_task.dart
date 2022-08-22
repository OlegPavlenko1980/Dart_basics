//Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
class Onetask {
  void nod(int a, int b) {
    var res = a.gcd(b);
    // ignore: avoid_print
    print("NOD $res");
  }

  void nok(int a, int b) {
    // ignore: avoid_print
    var res = (a * b).abs() / a.gcd(b);
    print('NOK $res');
  }

  List<int> factorsOf(int num) {
    List<int> factors = [1];
    for (int i = 2; i <= num; i++) {
      if (num % i == 0) factors.add(i);
    }
    return factors;
  }
}
