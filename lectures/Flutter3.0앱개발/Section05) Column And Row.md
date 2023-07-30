## SafeArea

- 감싸고 있는 자식 위젯들을 안드로이드나 ios의 System UI에 영향받지 않도록 보호하는 역할을 함
- System UI의 상하좌우 영역 중 특정 영역은 무시하고싶다면 해당 영역은 끌 수 있는 옵션도 제공하고 있음
- 이런건 파라미터 확인하면 됨 (Go To > Declaration or Usages)

## import

- `import 'package:xxx/~';` 이런식으로 가는거고
- xxx에 들어가는건.. `pubspec.yaml` 여기서 name 속성값과 맵핑됨
- 기본적으로 / 이후의 경로는 lib 디렉토리를 root로 가짐

## 편의성

### stless

에디터에서 빈 공간에 stless 치면 >> StatlessWidget을 바로 만들 수 있도록 인터페이스를 제공함

## MainAxisAlignment

- CSS의 flex 스타일 속성값들과 동일한 것 같음
- start, end, center
- spaceBetween, spaceEvenly, spaceAround

```dart
// 사용방법
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [...]
)
```

## CrossAxisAlignment

- 반대 축 정렬
- start, end, center
- stretch

### stretch

children에 들어있는 위젯들이 width를 특정값으로 가지고 있더라도...
그 위젯들의 너비가 부모 위젯의 너비만큼 강제로 확장됨

## MediaQuery.of(context)

- 요건 나중에 다시 배울거임
- 기기의 size를 알 수 있는 방법정도로 알고있으면 됨
  `MediaQuery.of(context).size.width`

## Expanded / Flexible

- Row, Column 위젯의 children에만 사용할 수 있음
- 다른곳에서 사용하면 오류납니다

### Expanded

- css의 flex 속성과 같음
- flex 파라미터에 넣어둔 숫자의 비율만큼 영역을 차지함

### Flexible

- [자신의 공간 + 버리는 공간] 까지를 비율 계산에 포함함

## 새로 알게 된 제공값들

### Widget

- Container
- SafeArea
- Row / Column
  - MainAxisAlignment
  - CrossAxisAlignment
  - Expanded / Flexible
  - MainAxisSize

## 알고있으면 좋은것?

- 기본적으로 Row와 Column은 주축의 모든 영역만큼을 자신의 공간영역으로 가지고 있음
  - MainAxisSize로 설정하면 될듯 (주축 크기)