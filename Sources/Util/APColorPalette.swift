//
//  File.swift
//  
//
//  Created by DDang on 2023/05/23.
//

import Foundation
import SwiftUI

extension Color {
    /// RGB
    /// - Author: 김민규
    /// - Date: 2023/05/24
    public struct RGB {
        var red: Double
        var green: Double
        var blue: Double
    }
    /// Color Initializer by Hex Code
    /// - Parameters:
    ///     - hex: color hex code (Ex. #000000)
    /// - author: 김민규
    /// - Date: 2023/05/24
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
    /// Color Initializer by RGB
    /// - Parameters:
    ///     - rgb: RGB Numbers
    /// - author: 김민규
    /// - Date: 2023/05/24
    init(rgb: RGB) {
        self.init(red: rgb.red / 255, green: rgb.green / 255, blue: rgb.blue / 255)
    }
}

/// Again 고유 Color 명세
/// - author: 김민규
/// - Date: 2023/05/24
public struct APColorPalette {
    static let primary: Color = .init(rgb: .init(red: 16, green: 128, blue: 128))
    static let secondary: Color = .init(rgb: .init(red: 6, green: 51, blue: 51))
}

#if DEBUG
struct APColorPalette_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack(spacing: 0) {
                APColorPalette.primary
                    .frame(height: 100)
                APColorPalette.secondary
                    .frame(height: 100)
            }.padding(.horizontal)
        }
        .previewLayout(.sizeThatFits)
    }
}
#endif
