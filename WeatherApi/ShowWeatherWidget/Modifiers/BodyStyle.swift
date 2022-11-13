//
//  BodyStyle.swift
//  WeatherApi
//
//  Created by Dmitrij Meidus on 12.11.22.
//

import SwiftUI

public struct BodyStyle: ViewModifier {
    
    public func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
    
    public init() {}
}
