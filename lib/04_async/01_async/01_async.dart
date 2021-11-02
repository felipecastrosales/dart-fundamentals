void main() {
  print('Start proccess');

  future();

  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
  sync();
  print('Finish proccess');
}

void sync() {
  print('second proccess');
}

void future() {
  Future.delayed(Duration(seconds: 2), () {
    print('future proccess');
  });
}
