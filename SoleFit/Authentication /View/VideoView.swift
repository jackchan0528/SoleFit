//
//  VideoView.swift
//  SoleFit
//
//  Created by hocman on 13/6/2024.
//

import SwiftUI
import AVKit

struct VideoView: View {
    var body: some View {
        
        ZStack {
            VStack {
                VStack (alignment: .leading, spacing: 10) {
                    Text("Some instructions...\n")
                    VideoPlayer(player: AVPlayer(url:  URL(string: "https://yoursite.com/video.mp4")!))
                        .frame(height: 300)
                    Text("If you need assistance with your photo, get help from a friend or family member.")
                }
                .padding()
                .foregroundColor(.white)
                .background(.black.opacity(0.7))
                .cornerRadius(10)
                .padding()
                NavigationLink("Next") {
                    
                }
                .buttonStyle(GreenButton())
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .gradientBackground([Color.secondaryGreen.opacity(0.5), Color.primaryGreen, Color.secondaryGreen.opacity(0.5)])
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    VideoView()
}
