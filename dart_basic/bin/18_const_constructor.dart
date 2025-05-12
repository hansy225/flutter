/*
   - 객체 선언 시 const가 없을 때 : 객체가 별도로 만들어짐
   - 객체 선언 시 const가 붙으면 : 하나만 객체가 만들어짐
 */

void main() {
  Idol idol1 = Idol('블랙핑크', ['리사', '로제', '제니', '지수']);
  print(idol1.name);
  idol1.introduce();
  // idol1.name = '더조은';  -> final이 붙어있으므로 값을 변경할 수 없음

  print('---------------------------------------');

  Idol idol2 = Idol.List2([['정국', '지민', '뷔', '진'], 'BTS']);
  print(idol2.members);
  idol2.sayHello();
}

class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  Idol.List2(List values)
    : this.members = values[0],
      this.name = values[1];

  sayHello() {
    print('안녕하세요 ${this.name} 입니다');
  }

  introduce() {
    print('저희 멤버는 $members 입니다.');
  }

}