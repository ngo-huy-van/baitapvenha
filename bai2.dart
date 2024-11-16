import 'dart:math';

void main()
{
  double a = 1;
  double b = -3;
  double c = 2;
  String ketQua = giaiPTBacHai(a,b,c);
  print(ketQua);
}

String giaiPTBacHai(double a, double b,double c) {
  if(a==0) {
    if(b==0) {
      if(c==0) {
        return "phương trình vô số nghiệm";
      } else {
        return "phương trình vô nghiệm";
      }
    } else {
      double x = -c / b;
      return "Phương trình có nghiệm duy nhất x = $x";
    }
  } else {
    double delta = b * b - 4 * a * c;
    if (delta<0) {
      return "phương trình vô nghiệm";
    } else if (delta==0) {
      double x = -b / (2 * a);
      return "Phương trình có nghiệm kép x = $x";
    } else {
      double x1 = (-b + sqrt(delta)) / (2 * a);
      double x2 = (-b - sqrt(delta)) / (2 * a);
      return "Phương trình có hai nghiệm phân biệt:\n" +
          "x1 = $x1" +  "\n"
          "x2 = $x2" ;
    }
  }
}