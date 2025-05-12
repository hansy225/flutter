void main() {
  Set<String> names = {
    'java',
    'oracle',
    'html',
    'flutter',
    'oracle'
  };
  print(names);

  names.add('AWS');
  print(names);

  names.remove('html');
  print(names);

  // 값이 존재하는지 검사
  print(names.contains('Flutter')); // 대소문자 구분

  // 조건문 반복문에서 한줄이 되어도 중괄호를 넣어주는 것이 권장사항
  int num = 5;
  if (num % 2 == 0) {
    print('짝수입니다.');
  }
}