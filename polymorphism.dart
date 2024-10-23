class Shape {
  double area() {
    print('Calculating area of generic shape');
    return 0.0; // Return a default value
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(this.height, this.width);
  @override
  double area() {
    return width * height;
  }
}

void main() {
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);
  double circleArea = circle.area();
  double rectangleArea = rectangle.area();
  print('Circle Area: $circleArea');
  print('Rectangle Area: $rectangleArea');
}
