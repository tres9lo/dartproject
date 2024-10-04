void main() {
  // Declare a list of integers
  List<int> numbers = [34, 67, 23, 89, 2, 45, 78];

  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print("The largest element in the list is: $largest");
}
