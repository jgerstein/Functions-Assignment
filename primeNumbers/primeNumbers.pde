void setup() {
  size(100, 100);  //display is not necessary, but I couldn't find a way to bring it to text 
  background(0);
}

void draw() {
  println(primeSieve(0, 100));  //executes function below
}

IntList primeSieve(int start, int finish) {
  IntList list = new IntList();  //creates blank IntList
  for (int number = start; number < finish; number++) {  //tests if prime for numbers between start and finish
    boolean prime = true; //originally every number is considered prime
    for (int i = 2; i < number; i++) {  //divides numbers by all numbers leading up to it
      if (number%i == 0) {  //if it turns out to factor out equally, ...
        prime = false;  //the number is no longer deemed prime
      }
    }
    if (prime) {  //adds all prime numbers to the blank IntList
      list.append(number);
    }
  }
  list.remove(0);  //remove 0 from list (assuming you start at 0)
  list.remove(0);  //remove 1 from list (assuming you start at 0)
  for(int x = 0; x < list.size(); x++){  //for each value in the IntList, ...
    println(str(list.get(x)));  //print it to the console
  }
  return list;  //return the list (although it is not used for anything outside of the function)
}