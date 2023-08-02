import 'dart:io';
import 'dart:math';

void main() {
  print('가위, 바위, 보 중 하나를 선택하세요 (가위: 가위, 바위: 바위, 보: 보):');
  String my = stdin.readLineSync() ?? '가위';
  DoHands hand = DoHands(my);
  DoHands hand2 = DoHands(my);
  hand.result();
  hand2.result();
}

class DoHands {
  final String myHand;

  DoHands(this.myHand);

  result() {
    Random random = Random();
    int rivalHand = random.nextInt(3) + 1;
    String? handString = null;

    switch (rivalHand) {
      case 1:
        handString = '가위';
        break;
      case 2:
        handString = '바위';
        break;
      case 3:
        handString = '보';
        break;
      default:
        handString = '잘못 됨';
    }

    if (this.myHand == handString) {
      print('컴퓨터 ${handString} 나 ${this.myHand} 비겼습니다.');
    } else if ((this.myHand == '가위' && handString == '보') ||
        (this.myHand == '바위' && handString == '가위') ||
        (this.myHand == '보' && handString == '바위')) {
      print('컴퓨터 ${handString} 나 ${this.myHand} 이겼습니다.');
    } else {
      print('컴퓨터 ${handString} 나 ${this.myHand} 졌습니다.');
    }
  }
}
