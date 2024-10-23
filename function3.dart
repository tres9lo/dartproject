
void main() {
  double base = 4;
  double height = 5;
  
  double area = calculateTriangleArea(base, height);
  
  print('The area of the triangle is: $area');
}

double calculateTriangleArea(double base, double height) {
  return 0.5 * base * height;
}
