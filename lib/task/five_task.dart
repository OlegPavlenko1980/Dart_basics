class Fivetask{
  //Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого. Реализуйте метод, возвращающий цифры без повторений, 
  //которые встречаются в данной строке. Однако цифры встречаются в виде английских слов от zero до nine. Например, в результате строки 
  //‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0]. Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.

  void inNoPov(){
      Map<String, int> colstr = {
        'one': 1, 
        'two': 2,
        'three': 3,
        'cat': 4,
        'dog': 5
      };
      
    Set<String> set1 = {'one', 'dog'};
    
    final set = <int>{};
    for (var word in set1) {
      if (colstr[word] != null) {
        set.add(colstr[word]!);
      }
    }
    
    // ignore: avoid_print
    print(set);
  }
}