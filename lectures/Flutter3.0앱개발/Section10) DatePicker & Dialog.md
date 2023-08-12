## font asset 추가

```yaml
  fonts:
    - family: parisienne
      fonts:
        - asset: asset/font/Parisienne-Regular.ttf
    - family: sunflower
      fonts:
        - asset: asset/font/Sunflower-Light.ttf
          weight: 400
        - asset: asset/font/Sunflower-Medium.ttf
          weight: 500
        - asset: asset/font/Sunflower-Bold.ttf
          weight: 700
```



## backgroundColor

```dart
backgroundColor: Colors.pink[100] // 기본값 500
```



## Dialog 사용하기 / DatePicker

```dart
showCupertinoDialog(
    context: context,
    barrierDismissible: true,	// dimmed 영역 클릭 시 닫기
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.white,
          height: 300.0,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime date) {
                print(date);
              },
          )
        ),
      );
    });
```



## Tip

- 만약 높이를 지정했는데, 화면 전체 영역을 덮어버린다?
  - 그 위젯을 어디에 정렬해야할지 모르기 때문에 그런 현상임
  - Align Widget을 사용해서 해결 ㄱ