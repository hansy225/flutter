/*
   class : java와 같음. 모든 클래스의 부모는 Object
 */

void main() {
  Idol blackPink = Idol();
  print(blackPink.name);
  print(blackPink.members);

  blackPink.sayHello();
  blackPink.introduce();
}

class Idol {
  String name= '블랙핑크';
  List<String> members = ['리사', '로제', '제니', '지수'];

  sayHello() {
    print('안녕하세요. 블랙핑크 입니다,');
  }

  introduce() {
    print('저희 멤버는 리사, 로제, 제니, 지수 입니다.');
  }

  int memberCount() {
    return members.length;
  }
}