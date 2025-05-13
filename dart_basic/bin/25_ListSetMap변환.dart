void main() {
  List<String> blackPink = ['로제', '지수','리사', '제니'];
  print(blackPink.runtimeType);
  print(blackPink.asMap());  // List -> Map으로 변경
  print(blackPink.toSet());  // List -> Set으로 변경

  Map blackPinkMap = blackPink.asMap();
  print(blackPinkMap.keys);

  // Map -> List
  print(blackPinkMap.keys.toList());    // keys만 리스트로
  print(blackPinkMap.values.toList());  // values만 리스트로
  // print(blackPinkMap.toList());  오류 : keys 또는 values로 리스트를 만들어야 함
  
  // List -> set : 변경 방법 2가지
  Set blackPinkSet = blackPink.toSet();
  Set blackPinkSet2 = Set.from(blackPink);

  // set -> List
  print(blackPinkSet2.toList());
}