//
//  OnboardingView.swift
//  Fructus
//
//  Created by Hugo Silva on 26/08/22.
//

import SwiftUI

struct OnboardingView: View {
  
  var fruits: [Fruit] = fruitsData
  
  var body: some View {
    TabView {
      ForEach(fruits.shuffled()[0...5]) { item in
        FruitCardView(fruit: item)
      } // foreach
    } // tabview
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
