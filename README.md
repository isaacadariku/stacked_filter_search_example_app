## Stacked Filter & Search Example App! 

 A stacked architecture filter and search example application, can run on any platform - Andriod | Desktop | iOS | Web

<!-- ## Download App
<a href="https://drive.google.com/open?id=1UDfFS1UfB4gMBNcsCHrU0tFw55IE9s9Q"><img src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" width="200"></img></a> -->

[![ForTheBadge made-with-flutter](https://img.shields.io/badge/flutter-made%20with%20flutter-blue.svg)](https://flutter.dev)

This stacked architecture app example is an implementation of [Johannes Milke filter_listview_example](https://github.com/JohannesMilke/filter_listview_example), you can also watch the [Tutorial Video](https://www.youtube.com/watch?v=oFZIwBudIj0) 

## Features
* Search and Filter Offline
* Search and Filter Online

## Dependencies
<details>
     <summary> Click to expand </summary>
     
* [stacked](https://pub.dev/packages/stacked)
* [http](https://pub.dev/packages/http)
* [animations](https://pub.dev/packages/animations)
* [google_fonts](https://pub.dev/packages/google_fonts)
     
</details>

## Screenshots

Offline View               |  Offline Search & Filter View               | Online View               |  Online Search & Filter View
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/isaacadariku/stacked_filter_search_example_app/blob/master/screenshots/flutter_02.png?raw=true)|![](https://github.com/isaacadariku/stacked_filter_search_example_app/blob/master/screenshots/flutter_03.png?raw=true)|![](https://github.com/isaacadariku/stacked_filter_search_example_app/blob/master/screenshots/flutter_04.png?raw=true)|![](https://github.com/isaacadariku/stacked_filter_search_example_app/blob/master/screenshots/flutter_01.png?raw=true)|

## Directory Structure
<details>
     <summary> Click to expand </summary>
  
```
|-- lib
|   |-- app
|   |   '-- locator.dart
|   |-- core
|   |   |-- model
|   |   |  '-- book_model.dart
|   |-- '-- services
|   |     |-- book_api_service.dart
|   |     '-- book_offline_service.dart
|   |-- ui
|   |   |-- shared
|   |   |   |-- widget
|   |   |   |    '-- search_textfield_widget.dart
|   |   |   |-- const_color.dart
|   |   |   |-- const_text_style.dart
|   |   |   '-- screen_size.dart
|   |   |-- views
|   |   |   |-- local_list_view
|   |   |   |    |-- local_list_view.dart
|   |   |   |    '-- local_list_viewmodel.dart
|   |   |   |-- main
|   |   |   |    |-- main_view.dart
|   |   |   |    '-- main_viewmodel.dart
|   |   |   |-- remote_list_view
|   |   |   |    |-- remote_view.dart
|   |   |   |    '-- remote_viewmodel.dart
|   |-- main.dart
|-- pubspec.yaml
```

</details>
     
## Visitors Count

<img align="left" src = "https://profile-counter.glitch.me/stacked_filter_search_example_app/count.svg" alt ="Loading">

[![ForTheBadge built-with-love](http://ForTheBadge.com/images/badges/built-with-love.svg)](https://github.com/isaacadariku/)