/*
   - 집합 자료형 : List, Set, Map

     * List type(자바와 동일)
 */

void main() {
  List<String> name = ['홍길동', '강감찬', '제니'];
  List<int> numbers = [1,2,3,4,5];
  print(name);
  print(numbers[2]);
  print('list의 길이 : ${name.length}');

  print('--------------------------');
  name.add('더조은');
  print(name);

  print('--------------------------');
  name.remove('강감찬');
  print(name);

  print('--------------------------');
  print(name.indexOf('제니'));
}