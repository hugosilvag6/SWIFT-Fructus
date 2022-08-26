//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Hugo Silva on 26/08/22.
//

import SwiftUI

struct FruitDetailView: View {
  
  var fruit: Fruit
  
    var body: some View {
      NavigationView {
        ScrollView(.vertical, showsIndicators: false) {
         VStack (alignment: .center, spacing: 20) {
           
           // HEADER (imagem)
           FruitHeaderView(fruit: fruit)
           
           // CONTENT
            VStack(alignment: .leading, spacing: 20) {
              
              // TITLE
              Text(fruit.title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(fruit.gradientColors[1])
              
              // HEADLINE
              Text(fruit.headline)
                .font(.headline)
                .multilineTextAlignment(.leading)
              
              // NUTRIENTS
              FruitNutrientsView(fruit: fruit)
              
              // SUBHEADING
              Text("Learn more about \(fruit.title)".uppercased())
                .fontWeight(.bold)
                .foregroundColor(fruit.gradientColors[1])
              
              // DESCRIPTION
              Text(fruit.description)
                .multilineTextAlignment(.leading)
              
              // LINK
              SourceLinkView()
                .padding(.top, 10)
                .padding(.bottom, 40)
              
            } // vstack
            .padding(.horizontal, 20)
            .frame(maxWidth: 640, alignment: .center)
          } // vstack
         .navigationTitle(fruit.title)
         .navigationBarHidden(true)
        } // scrollView
        .edgesIgnoringSafeArea(.top)
      } // navigationView
      .navigationViewStyle(StackNavigationViewStyle()) // resolve bug do ipad
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
