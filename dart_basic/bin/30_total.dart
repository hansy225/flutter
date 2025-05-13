void main() {
  List<Map<String, String>> people = [
    {'name' : '로제', 'group' : '블랙핑크'},
    {'name' : '제니', 'group' : '블랙핑크'},
    {'name' : '정국', 'group' : 'bts'},
    {'name' : '뷔', 'group' : 'bts'}
  ];
  print(people);
  
  print('------------------------------------');
  
  final pasePeople = people.map((x) => Person(name : x['name'], group : x['group'])).toList();
  print(pasePeople);

  print('------------------------------------');

  final bts = people.where((x) => x['group'] == 'bts').toList();
  print(bts);

  // 위에 2개를 한꺼번에
  final result = people.map((x) => Person(name : x['name']!, group : x['group']!))
      .where((x) => x.group == 'bts')
      .fold<int>(0, (prev, next) => prev + next.name.length);
  print(result);
}

class Person {
  final name;
  final group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name : $name, group : $group)';
  }
}