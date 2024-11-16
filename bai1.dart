void main() {
  int soKwh = 350;
  double tienDien = tinhTienDien(soKwh);
  print("Số tiền điện phải trả cho $soKwh Kwh là $tienDien đồng");
}

double tinhTienDien( int soKwh) {
  double tongTien = 0;
  if (soKwh<=50) {
    tongTien = soKwh*1.678;
  } else if (soKwh<=100) {
    tongTien = (50 * 1.678) + (soKwh - 50) * 1.734;
  } else if (soKwh<=200) {
    tongTien = (50 * 1.678) + (50 * 1.734) + (soKwh - 100) *  2.014;
  } else if (soKwh<=300) {
    tongTien = (50 * 1.678) + (50 * 1.734) + (100 * 2.014) + (soKwh - 200) * 2.536;
  } else {
    tongTien = (50 * 1.678) + (50 * 1.734) + (100 * 2.014) + (100 * 2.536) + (soKwh - 300) * 2.834;
  }
  return tongTien;
}
