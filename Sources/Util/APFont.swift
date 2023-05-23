//
//  File.swift
//  
//
//  Created by DDang on 2023/05/23.
//

import Foundation
import SwiftUI

public extension View {
    /// 폰트 등록
    /// - Author: 김민규
    /// - Date: 2023/05/23
    func configureFont() -> some View {
        APFont.NotoSansKR.allCases.forEach { font in
            guard let url = Bundle.main.url(forResource: font.rawValue, withExtension: "otf") else { return }
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
        return self
    }
}

/// Again 고유 Font 명세
/// - Author: 김민규
/// - Date: 2023/05/23
public struct APFont {
    public enum NotoSansKR: String, CaseIterable {
        case thin = "NotoSansKR-Thin"
        case light = "NotoSansKR-Light"
        case regular = "NotoSansKR-Regular"
        case medium = "NotoSansKR-Medium"
        case bold = "NotoSansKR-Bold"
        case black = "NotoSansKR-Black"
    }
}

public extension Font {
    /// View(Text)를 NotoSansKR Font로 지정, 글자 사이즈 지정
    /// - Parameters:
    ///   - weight: 글자 굵기
    ///   - size: 글자 크기
    static func notoSansKR(_ weight: APFont.NotoSansKR, size: CGFloat) -> Font {
        return .custom(weight.rawValue, size: size)
    }
}

#if DEBUG
/// APFont에 대한 사용법 및 Previews
struct AZFont_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack(alignment: .leading, spacing: 20) {
                Text("NotoSansKR-Thin")
                    .font(.notoSansKR(.thin, size: 20))
                Text("NotoSansKR-Light")
                    .font(.notoSansKR(.light, size: 20))
                Text("NotoSansKR-Regular")
                    .font(.notoSansKR(.regular, size: 20))
                Text("NotoSansKR-Medium")
                    .font(.notoSansKR(.medium, size: 20))
                Text("NotoSansKR-Bold")
                    .font(.notoSansKR(.bold, size: 20))
                Text("NotoSansKR-Black")
                    .font(.notoSansKR(.black, size: 20))
            }
            .padding()
            .previewDisplayName("NotoSansKR")
        }
        .previewLayout(.sizeThatFits)
        .configureFont()
    }
}
#endif
