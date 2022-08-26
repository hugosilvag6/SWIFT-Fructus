//
//  StartButtonView.swift
//  Fructus
//
//  Created by Hugo Silva on 26/08/22.
//

import SwiftUI

struct StartButtonView: View {
  
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  
    var body: some View {
      Button {
        isOnboarding = false
      } label: {
        HStack(spacing: 8) {
          Text("Start")
          Image(systemName: "arrow.right.circle")
            .imageScale(.large)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
      }
      .tint(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
      StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
    }
}
