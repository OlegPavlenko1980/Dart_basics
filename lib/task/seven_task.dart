//Реализуйте метод, который вычисляет корень любой заданной степени из числа.
// Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на википедии
//как «Алгоритм нахождения корня n-й степени». Запрещается использовать методы math.
// В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.
class Seventask {
  double npower(double base, int n) {
    if (n < 0) {
      return npower(1 / base, -n);
    } else if (n == 0) {
      return 1.0;
    } else if (n == 1) {
      return base;
    }
    // ignore: unnecessary_null_comparison
    else if (n % 2 != null) {
      return base * npower(base * base, n ~/ 2);
    } else {
      return npower(base * base, n ~/ 2);
    }
  }

  double? nroot(double base, int n) {
    if (n == 1) {
      return base;
    } else if (n <= 0 || base < 0) {
      return null;
    } else {
      double delta, x = base / n;
      do {
        delta = (base / npower(x, n - 1) - x) / n;
        x += delta;
      } while (delta.abs() >= 1e-8);
      return x;
    }
  }
}
