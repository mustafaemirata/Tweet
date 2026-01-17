//
//  CircularProfile.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 16.01.2026.
//

import SwiftUI

struct CircularProfile: View {
    var body: some View {
        Image("musatafaemirata")
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 50)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfile()
}
