//
//  FruitRowView.swift
//  Fructus
//
//  Created by Hugo Silva on 26/08/22.
//

import SwiftUI

struct FruitRowView: View {
  
  var fruit: Fruit
  
  var body: some View {
    HStack {
      
      // FRUIT: IMAGE
      Image(fruit.image)
        .renderingMode(.original)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 3, x: 2, y: 2)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(8)
      
      // FRUIT: CONTENT
      VStack(alignment: .leading, spacing: 5) {
        Text(fruit.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(fruit.headline)
          .font(.caption)
          .foregroundColor(Color.secondary)
      }
      
    } // hstack
  }
}

struct FruitRowView_Previews: PreviewProvider {
  static var previews: some View {
    FruitRowView(fruit: fruitsData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
