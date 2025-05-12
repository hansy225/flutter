void main() {
  Idol idol1 = Idol('블랙핑크', ['리사', '로제', '제니', '지수']);
  print(idol1.name);
  idol1.introduce();

  print('---------------------------------------');

  Idol idol2 = Idol.List2([['정국', '지민', '뷔', '진'], 'BTS']);
  print(idol2.members);
  idol2.sayHello();
}

class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

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