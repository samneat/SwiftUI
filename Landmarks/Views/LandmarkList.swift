//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Sam Neat on 16/07/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
