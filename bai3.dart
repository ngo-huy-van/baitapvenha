import 'dart:math';

void main()
{
  int a = 2;
  int b = 3;
  int ucln = tinhUCLN(a,b);
  int bcnn = tinhBCNN(a,b);
  print("Ước chung lớn nhất của $a và $b là $ucln");
  print("Bội chung nhỏ nhất của $a và $b là $bcnn");
}
int tinhBCNN(int a, int b) {
  int bcnn = 1;
  for(int i=2;;i++)
  {
    if (i % a == 0 && i % b == 0) {
      bcnn = i;
      break;
    }
  }
  return bcnn;
}
int tinhUCLN(int a, int b) {
  int ucln = 1;
  for(int i=min(a,b);i>1;i--)
  {
    if (a % i == 0 && b % i == 0) {
      ucln = i;
      break;
    }
  }
  return ucln;
}