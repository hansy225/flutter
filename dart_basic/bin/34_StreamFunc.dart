/*
// 0만 출력하고 종료
void main() {
  print(calculate(3));
}

calculate(int num) {
  for(int i=0; i<5; i++) {
    return i*num;
  }
}

// 0만 return하고 종료되는 것을 막는 방법
void main() {
  calculate(2).listen((val) {
    print('calculate(2) : $val');
  });
}

calculate(int num) async*{
  for(int i=0; i<5; i++) {
    yield i*num;
  }
}

// 1초마다 호출
void main() {
  calculate(2).listen((val) {
    print('calculate(2) : $val');
  });
}

calculate(int num) async*{
  for(int i=0; i<5; i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 1));  // 1초마다 호출
  }
}

// 동시에 2개씩 실행
void main() {
  calculate(2).listen((val) {
    print('calculate(2) : $val');
  });

  calculate(3).listen((val) {
    print('calculate(3) : $val');
  });
}

calculate(int num) async*{
  for(int i=0; i<5; i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 1));
  }
}*/

// 1개가 끝나고 2번째것 실행되게
void main() {

  playAllStream().listen((val) {
    print(val);
  });
}

playAllStream() async* {
  yield* calculate(1);  // yield에 들어갈 값이 없을 때까지 대기 -> 끝날때까지 대기
  yield* calculate(50);
}

calculate(int num) async*{
  for(int i=0; i<5; i++) {
    yield i*num;

    await Future.delayed(Duration(seconds: 1));
  }
}