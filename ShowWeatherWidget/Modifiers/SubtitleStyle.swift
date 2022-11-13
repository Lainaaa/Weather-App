//
//  SubtitleStyle.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 12.11.22.
//

import SwiftUI

public struct SubtitleStyle: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundColor(.secondary)
            .frame(height: 15, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
    
    public init() {}
}
