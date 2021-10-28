class Number {
  int i;
  Number(this.i);

  Number operator +(Number number2) {
    return Number((i + number2.i) * 2);
  }

  Number operator -(Number number2) {
    return Number(i - number2.i);
  }
}
