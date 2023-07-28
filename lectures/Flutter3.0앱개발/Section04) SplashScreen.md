## assets

- root에 asset 디렉토리 만들어서 관리
- pubspec.yaml에서 추가 설정 필요 (설정 완료 후 우측 상단의 pub get 클릭)

  ```yaml
    flutter:
      assets:
        - asset/img/
  ```

## hot reload

Widget들의 build 메서드 내부에서 정의된 것들만 hot reload 적용된다.

## alt+enter

여러 action 들을 제공하는 아주 유용한 단축키

## 그냥 알고있으면 좋은것들?

- 대부분의 위젯들은 child나 children 파라미터를 가지고 있음
  - Scaffold나 MaterialApp 같은게 조금 특이한 형태임
- 우측 상단에 debug 라벨 거슬리면 `debugShowCheckedModeBanner: false`를 MaterialApp의 파라미터로 설정해주면 됨

## 새로 공부한거

### Widget
- Column (세로)
  - children
  - mainAxisAlignment [주축 정렬]
- Image.asset('asset/img/logo.png')
- CircularProgressIndicator

### Utility?
- Color vs Colors
  - Color(0xFF[이후6자]) >> 0xFF를 붙여주는 이유는 16진수임을 나타냄과 동시에 투명도 관련값을 넣어준거임
  - Colors.red >> 이런식으로 정해진 색상값을 획득할 때 사용