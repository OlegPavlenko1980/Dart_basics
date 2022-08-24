import 'dart:math';

class Point {
  //Реализуйте класс Point, который описывает точку в трёхмерном пространстве. У данного класса реализуйте метод distanceTo(Point another),
  // который возвращает расстояние от данной точки до точки в параметре.

  int xa;
  int ya;
  int za;

  double distanceTo(xb, yb, zb) {
    var xab = pow(xa - xb, 2);
    var yab = pow(ya - yb, 2);
    var zab = pow(za - zb, 2);

    return sqrt(xab + yab + zab);
  }

  Point(this.xa, this.ya, this.za);
}
