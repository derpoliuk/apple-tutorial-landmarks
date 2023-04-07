//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Stanislav Derpoliuk on 2023-04-07.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Old approach
//        NavigationView {
//            List(landmarks) { landmark in
//                NavigationLink {
//                    LandmarkDetail(landmark: landmark)
//                } label: {
//                    LandmarkRow(landmark: landmark)
//                }
//            }
//            .navigationTitle("Landmarks")
//        }

        NavigationStack {
            List(landmarks) { landmark in
                NavigationLink(value: landmark) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationDestination(for: Landmark.self) { landmark in
                LandmarkDetail(landmark: landmark)
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 8", "iPhone 14 Pro Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
