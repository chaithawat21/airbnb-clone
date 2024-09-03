//
//  ProfileOptionRowView.swift
//  AirbnbClone
//
//  Created by Chaithawat Pinsuwan on 15/8/24.
//

import SwiftUI

struct ProfileOptionRowView: View {
    var imageName: String
    var title: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .imageScale(.medium)

                Text(title)
                    .font(.subheadline)

                Spacer()

                Image(systemName: "chevron.right")
            }
            .padding(.vertical, 8)

            Divider()
        }
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
