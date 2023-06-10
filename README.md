> Again(iOS 플랫폼)에 포함되는 디자인 컴포넌트를 모듈화하여 Package 형태로 분리하였습니다.
* [Package Info.](#package-info)
* [Package Rules.](#package-rules)
* [Installation.](#installation)
* [Usage](#usage)
  * [Utils](#utils) - [Font(`TBFont`)](#fonttbfont)
  * [Utils](#utils) - [Color-Palette(`TBColor`)](#color-palettetbcolor)

# Package Info.
- 지원 플랫폼(버전): iOS 15.0 및 상위 버전

# Package Rules.
- 각 View Class의 접두사에는 프로젝트 고유 접두사로서 `Again-Project`의 약어로 `AP`를 사용한다.
Ex) `APButton`, `APTextField`, `APText`

# Installation.
Swift Package Manager를 사용해 Again Component Package 종속 항목을 설치하고 관리합니다.
1. 앱 프로젝트를 연 상태로 Xcode에서 File(파일) > Add Packages(패키지 추가)로 이동합니다.
2. 메시지가 표시되면 Again Component Package 레포지토리(저장소)를 추가합니다.
```
https://github.com/A2Z-Project/iOS-Again-Component-Package.git
```
3. 사용할 SDK 버전을 선택합니다.
완료되면 Xcode가 백그라운드에서 자동으로 종속 항목을 확인하고 다운로드하기 시작합니다.

# Usage
## Utils
### Font(`APFont`)
> Again Design System에서 사용되는 Custom Font들을 포함하고 사용성을 고려해 `Function`으로 처리하였습니다.
- 현재, 포함된 Font List
    - Noto Sans KR

### Color-Palette(`APColor`)
> Again Design System에서 사용되는 Color들을 정형화하고 사용성을 고려해 `View`로 처리하였습니다.
- 현재, 포함된 Color List
    - Primary
    - Secondary
