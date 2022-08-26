//
//  ContentView.swift
//  Fructus
//
//  Created by Hugo Silva on 26/08/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isShowingSettings: Bool = false
  var fruits: [Fruit] = fruitsData
  
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { item in
          
          NavigationLink {
            FruitDetailView(fruit: item)
          } label: {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      } // List
      .navigationTitle("Fruits")
      .toolbar {
        Button {
          isShowingSettings = true
        } label: {
          Image(systemName: "slider.horizontal.3")
        }
        .sheet(isPresented: $isShowingSettings) {
          SettingsView()
        }
      }
    } // navigationView
    .navigationViewStyle(StackNavigationViewStyle()) // resolve bug do ipad
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
