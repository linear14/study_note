### DateTime

```dart
void main() {
    Date now = DateTime.now();
    
    print(now); // 2023-08-09 22:43:46.588
    print(now.year);
    print(now.month); // 8 (어떤 언어에서는 7이 나오긴 하는데 dart에서는 안그렇네)
    print(now.day);
    print(now.hour);
    print(now.minute);
    print(now.second);
    print(now.millisecond);
}
```



### Duration

```dart
void main() {
    // 기간
    Duration duration = Duration(seconds: 60);
    
    print(duration); // 0:01:00.000000
    print(duration.inDays);	// 0
    print(duration.inHours); // 0
    print(duration.inMinutes); // 1
    print(duration.inSeconds); // 60
    print(duration.inMilliseconds); // 60000
}
```



### DateTime Diff

```dart
void main() {
    DateTime specificDay = DateTime(
    	2017,
        11,
        23
    );
    
    print(specificDay); // 2017-11-23 00:00:00.000
    
    
    Date now = DateTime.now();
    final diff = now.difference(specificDay);
    print(diff); // 36430:49:46.778000
    print(diff.inDays); // 1517
    print(diff.inHours);
    print(diff.inMinutes);
    
    print(now.isAfter(specificDay)); // true
    print(now.isBefore(specificDay)); // false
}
```



### Operation

```dart
void main() {
    Date now = DateTime.now();
    print(now.add(Duration(hours: 10)));
    print(now.subtract(Duration(seconds: 20)));
}
```

