## pub.dev

- 패키지, 오픈소스, 플러그인, 라이브러리를 다운로드 받을 수 있음
- 각 라이브러리를 다운로드 받을 때 마다 README.md를 잘 읽어야됨
  - ios, android 별로 기본 설정방식이 모두 다를 수 있기 때문 (android > app > build.gradle 설정 방식 변경 등)

- 일반적으로 dependency 추가하는 방법은 
  - pubspec.yml > dependencies or dev_dependencies 에서 name: version 방식으로 명시해주면 됨
  - 버전에서의 ^ 의미?
    - Ex) flutter_webview: ^3.0.2
    - 맨 앞에있는 숫자를 `메이저 버전` 이라고 하는데, 메이저 버전이 바뀔 때는 자동 업데이트를 안한다는 의미가 됨


### PlatformException이 뜬다면?

실행중이던 앱 종료 후, 터미널 환경에서 `flutter clean` 명령어 입력



## WebView 3.0

```dart
return Scaffold(
	body: WebView(
    	initialUrl: 'url',
      javascriptMode: JavascriptMode.unrestricted
    )
)
```

### Controller

위젯들을 조작할 수 있는 객체를 제공해줌

```dart
WebViewController? controller;

WebView(
  	// 콜백이라는 것 알 수 있지?
		onWebViewCreated:(WebViewController controller) {
        this.controller = controller;
    }
)
```

컨트롤러에는 어떤 기능들이 있을까?

- controller.loadUrl(url) : url 로드



## WebView 4.0

```dart
final homeUrl = Uri.parse('...');

// 이거 문법이 신기한듯. dart cascade 라고 검색 ㄱ
WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl)
    
WebViewWidget(
	controller: controller
)

controller.loadRequest(homeUrl)
```



## Appbar

```dart
return Scaffold(
    appBar: AppBar(
			title: Text('...')
    ),
		body: ...
)
```

- android, ios 별로 타이틀 노출 위치가 다름

  - android > 왼쪽
  - ios > 중앙

- `centerTitle: false` 옵션을 설정하면 왼쪽에 타이틀 고정. `true` 값으로 가운데 타이틀 설정 가능

- `backgroundColor` 파라미터도 있고...

- `actions` 파라미터가 있는데 이건 재밌음

  - 보통 앱바 우측 상단에 이것저것 아이콘으로 버튼 만들어져있는 케이스 많이 보이는데, 플러터에서 지원해줌

    ```dart
    actions: [
      	IconButton (
        	onPressed: () { },
          icon: Icon(Icons.home)
        )
    ]
    ```




## HTTP 허용

기본적으로는 http를 막고있음. 당연히 보안에 취약하기 때문

그럼에도 불구하고 http를 적용하는 방법은 아래와 같다. (필요할 때 마다 구글링 하는게 편함)

### Android

android > app > src > main > AndroidManifest.xml

```xml
<manifest>
	<uses-permission android:name="android.permission.INTERNET"/>
    <application
        android:usesCleartextTraffic="true">
    ...
    </application>
</manifest>
```

### ios

ios > Runner > Info.plist

```plist
<key>NSAppTransportSecurity</key>
<dict>
	<key>NSAllowsLocalNetworking</key>
	<true/>
	<key>NSAllowsArbitraryLoadsInWebContent</key>
	<true/>
</dict>
```
