---
title: 반가워요, 번들러 1.9!
date: 2015-03-21 00:00 UTC
author: 사무엘 기딘스(Samuel Giddins)
author_url: http://segiddins.me
category: release
---

번들러 1.8 버전이 나온지 한달 반이 채 지나지 않은채, 번들러 1.9 버전을 발표하게 되어 기쁩니다.

이 버전의 [변경사항 CHANGELOG](https://github.com/bundler/bundler/blob/v1.9.0/CHANGELOG.md#190-2015-03-20)에 길이는 짧습니다만(중요하고 새로운 기능 추가), 그 것에 관해 전해드리겠습니다: [모리닐로 Molinillo](https://github.com/CocoaPods/Molinillo). 모리닐로(커피 콩 분쇄기, 코코아 빵는 도구, Molinillo)는  [코코아파드즈 CocoaPods](http://cocoapods.org)의 새로운 의존성 해결 알고리즘을 개발하였습니다. -- 코코아 Cocoa 의존성 관리자. 이제 번들러는 코코아 파드즈가 사용하는 의존성을 해결해주는 관리자를 공유합니다  -- 의존성 관리자라는 가장 중요한 내부 구성요소 중 하나 -- 핵심 로직은 별도로 테스트하며 문서화되어 있습니다. [스트라이프 Stripe의 아낌없은 후원](https://stripe.com/blog/stripe-open-source-retreat) 덕분에 코코아 파드즈, 번들러 (그리고 어쩌면 [RubyGems](https://github.com/rubygems/rubygems/pull/1189)) 등 코드 베이스와 관계없이 일반적으로 의존성을 해결하는 알고리즘을 공유하려는 목적으로 모리닐로 Molinillo를 개발하였습니다!

#### 번들러의 의존성은?

번들러가 루비 젬을 _위한_ 의존성 관리자이기 때문에 번들러가 의존성을 가진다는 것이 다소 말이 안될 수도 있습니다. 번들러가 젬을 어떻게 쓸 수 있을까요? _불가능_합니다. 하지만 우회하는 방법으로 모리닐로 Molinillo 소스 파일을 `bundler` 젬에 내장하여 다른 루비 젬을 사용할 수 있습니다. 가령 코코아파드즈 같은 젬이 `molinillo` 의 다른 버전을 요구하는 상황에 맞닥뜨리면(번들러라면 `thor` 젬이 다른 버전을 요구하는 경우) 어떻게 될까요? 번들러는 고유의 네임스페이스를 최상의 레벨에 네임스페이스 상수 이름 앞에  덧붙여서 해결할 수 있습니다. 꼼수나 변명같아 보이지만 이런 방법으로 번들러가 다른 모든 젬과 같은 오픈 소스 라이브러리를 공유할 수 있습니다!

#### 업데이트하기

번들러 최신 버전을 설치하려면 아래와 같이 실행하세요:

```
$ [sudo] gem install bundler
```

모든 세부사항은, 이력변동사항(Changelog)를 잊지마세요!
