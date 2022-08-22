class Threetask{
  //Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  void inInt (){
    String string = 'a 1 c2 d 10';

   List numsList = []; 
   List list =  string.split(' ') ;
    for(int i=0; i < list.length; i++){
      num? number = int.tryParse(list[i]);
        if (number != null) {
            numsList.add(number);
        }
      }
    // ignore: avoid_print
        print(numsList);
    }
}