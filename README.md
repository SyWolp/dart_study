# Dart

## Dart DAY 1

### 변수

var => 타입 관계 없이 선언 가능
int => 정수
double => 실수
bool => true / false
string => 문자
dynamic => 타입 관계 없이 선언 및 재할당 가능

nullable => null 가능
non-nullable => null 불가

final => 변수 변경 불가, var 선언 생략 가능, 빌드 타임의 값을 몰라도 됨
const => 변수 변경 불가, var 선언 생략 가능, 빌드 타임의 값을 알아야함

빌드타임 => 코드 실행 시간

DateTime => 날짜

??= => null이면 이 값으로

is int, String… => 타입 비교
.runtimeType => 타입 확인

List<타입> test => [] js 배열
.add => js push
remove => 선택 삭제
insert => 특정 위치에 추가

Map => 객체

addAll( { } ) => 추가

Set => 중복 없는 배열
.contains => 값 유무 확인

required => 지정 파람
[int x, int y] => 옵션

Typedef = 함수의 파람, 리턴이 같다면 복사

## Dart DAY 2

### Class, OOP

OOP => Object Oriented Programming
why ? Class => Object 를 extends 한 것

static 은 instance에 귀속되지 않고 class에 귀속된다.

setter => 자주 사용하지 않음, 값 변경 가능
getter => 좀 더 간단한 로직을 위함

private 외부에서 불러올 수 없음. => \_ㅁㅁㅁ

override => 덮어쓰다 (우선시하다)

interface => Class 의 형태를 정해줌
abstract => Class 추상화 인스턴스 생성 불가

# Dart

## Dart DAY 1

### 변수

var => 타입 관계 없이 선언 가능
int => 정수
double => 실수
bool => true / false
string => 문자
dynamic => 타입 관계 없이 선언 및 재할당 가능

nullable => null 가능
non-nullable => null 불가

final => 변수 변경 불가, var 선언 생략 가능, 빌드 타임의 값을 몰라도 됨
const => 변수 변경 불가, var 선언 생략 가능, 빌드 타임의 값을 알아야함

빌드타임 => 코드 실행 시간

DateTime => 날짜

??= => null이면 이 값으로

is int, String… => 타입 비교
.runtimeType => 타입 확인

List<타입> test => [] js 배열
.add => js push
remove => 선택 삭제
insert => 특정 위치에 추가

Map => 객체

addAll( { } ) => 추가

Set => 중복 없는 배열
.contains => 값 유무 확인

required => 지정 파람
[int x, int y] => 옵션

Typedef = 함수의 파람, 리턴이 같다면 복사

## Dart DAY 2

### Class, OOP

OOP => Object Oriented Programming
why ? Class => Object 를 extends 한 것

static 은 instance에 귀속되지 않고 class에 귀속된다.

setter => 자주 사용하지 않음, 값 변경 가능
getter => 좀 더 간단한 로직을 위함

private 외부에서 불러올 수 없음. => \_ㅁㅁㅁ

override => 덮어쓰다 (우선시하다)

interface => Class 의 형태를 정해줌
abstract => Class 추상화 인스턴스 생성 불가
