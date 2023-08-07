## PageView

```dart
// 원래 코드
PageView(
	children: [
        Image.asset(
        	'asset/img/...',
            fit: BoxFit.cover
        ),
        Image.asset(),
        ...
    ]
)
    
// 개선
PageView(
	children: [1,2,3,4,5].map(
        e => Image.asset(
        	'asset/img/image_$e.jpeg',
            fit: BoxFit.cover
        )
    ).toList()
)
```



## Timer

```dart
Timer? timer;

void initState() {
    super.initState();
    
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
        // something...
    })
}

void dispose() {
    if(timer != null) {
        timer!.cancel();
    }
    
    super.dispose();
}
```



## 직접 Controller 만들기

```dart
PageController controller = PageController(
	initialPage: 0
)
    
PageView(
	controller: controller,
    children: []
)
    
// timer
timer = Timer.periodic(Duration(seconds: 1, (timer) {
    int currentPage = controller.page!.toInt();
    int nextPage = currentPage + 1;
    
    if (nextPage > 4) { nextPage = 0; }
    
    controller.animateToPage(
        nextPage, 
        duration: Duration(milliseconds: 400), 
        curve: Curves.linear
    )
});
                       
dispose() {
    controller.dispose();
}
```



## Status Bar 색상 변경

```dart
// light, dark
SystemChrome.setSystemUIOverlayStyle(SystemUIOverlayStyle.light)
```

