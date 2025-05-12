/*
   * 연산
   - 몫 : ~/
      * 나눗셈 : int/int=double
   - 나머지는 java와 같음 : +=, -=, %=, ++, --, ...
   
   * ??= : 만약 값이 null이면 오른쪽에 있는 값을 넣고 그렇지 않으면 왼쪽의 값 넣기
 */
void main() {
  var result = 4 / 2;
  print(result);
  print(result.runtimeType);

  print('몫 : ${10~/3}');
  print('-------------------');

  int? num= 2;
  print(num);
  num = null;
  print(num);

  num ??= 5;
  print('num : $num');  // 중괄호 생략 가능

  num ??= 10;  // null이 아니기 때문에 변경되지 않음(num=5)
  print('num : $num');

  print('-------------------');
  /*
    ? : 자료형에 붙여줌
    변수? : .isEmpty, .isNotEmpty가 사용될 때
    ?? : 변수에 붙여줌
    ??= : 변수에 붙여줌. 변수에 값을 넣어줌.(null이면 오른 쪽의 값을, 그렇지 않으면 원래값(왼쪽)을 다시 넣음)
  */
  num = null;
  num ?? 5;
  print(num);
}