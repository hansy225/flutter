/*
   - where() 함수 : 결과가 true인 것만 가져옴(filter와 동일)
 */
void main() {
  List<Map<String, String>> people = [
    {'name' : '로제', 'group' : '블랙핑크'},
    {'name' : '제니', 'group' : '블랙핑크'},
    {'name' : '정국', 'group' : 'bts'},
    {'name' : '뷔', 'group' : 'bts'}
  ];
  print(people);

  final blackPink = people.where((x) => x['group'] == '블랙핑크');
  final bts = people.where((x) => x['group'] == 'bts');
  print(blackPink);
  print(bts);
}