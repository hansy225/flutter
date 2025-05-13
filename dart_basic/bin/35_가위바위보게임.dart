import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  // 1. 유저에게 무엇을 낼건지 물어보기
  print('가위 바위 보 중 하나를 입력해주세요.');

  final String? userInput = stdin.readLineSync(encoding: utf8);
  print('내가 낸 값 : $userInput');

  // 2. 컴퓨터가 랜덤 추출
  const comList = ['가위', '바위','보'];
  final comResult = comList[Random().nextInt(3)];
  print('컴퓨터가 낸 값 : $comResult');

  final result = getResult(userInput!, comResult);
  print('사용자는 $userInput을 냈습니다.');
  print('컴퓨터는 $comResult을 냈습니다.');
  print('결과는 $result');

}

getResult(String userInput, String comInput) {
  const comWin = '컴퓨터가 승리하였습니다.';
  const userWin = '사용자가 승리하였습니다.';
  const draw = '비겼습니다.';

  String result = draw;

  switch(userInput) {
    case '가위' :
      if(comInput == '바위') {
        result = comWin;
      }
      if(comInput == '보') {
        result = userWin;
      }
    case '바위' :
      if(comInput == '가위') {
        result = userWin;
      }
      if(comInput == '보') {
        result = comWin;
      }
    case '보' :
      if(comInput == '가위') {
        result = comWin;
      }
      if(comInput == '바위') {
        result = userWin;
      }
    default:
      result = '값이 정확하지 않습니다.';
  }
  return result;
}