## Widget Tree

- 실제로 화면에 나타나는 친구들을 Widget이라고 부른다. 즉 UI를 구성하는 기본 단위이다. (React에서의 컴포넌트와 비슷)
- MaterialApp, Scaffold, Center, Text 등은 Widget이다.
- TextStyle은 Widget이 아니다.

## 필수구조

```dart
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: [...something]
      )
    )
  )
}
```

## 공부한거?

- Scaffold()
  - backgroundColor
- Center()
  - child
- Text()
  - style
- TextStyle()
  - color
  - fontSize
- Colors.xxx

## Text 기본 사용법

```dart
Text('Hello World', style: TextStyle());
```
