
void main() {
  double length = 5.0;
  double width = 3.0;
  
  double area = calculateArea(length, width);
  
  print('The area of the rectangle is: $area');
}

double calculateArea(double length, double width) {
  return length * width;
}
