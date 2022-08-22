class Fourtask{
//Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
    void findInString(){
       List<String>
        map = [
            "Tom",
            "Tom1",
            "Tom1",
            "Tom",
            "Tom1",
            "Tom1",
            "Tom",
            "Tom1",
        ];
         
       Map<String, int> double = {};

        for (var word in map) {
            double[word] = double[word] != null ? double[word]! + 1 : 1;
        }
         
      
        // ignore: avoid_print
       print(double); 
    }
}