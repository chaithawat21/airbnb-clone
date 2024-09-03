//
//  ImageCarouselView.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import SwiftUI

struct ImageCarouselView: View {
    let images: [String]
    let height: Double = 320
    var cornerRadius: Double = 10

    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(height: height)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .tabViewStyle(.page)
    }
}

#Preview {
    ImageCarouselView(images: mockListingImages, cornerRadius: 0)
}
