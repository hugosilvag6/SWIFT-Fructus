//
//  SettingsView.swift
//  Fructus
//
//  Created by Hugo Silva on 26/08/22.
//

import SwiftUI

struct SettingsView: View {
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          
          // section 1
          GroupBox {
            
            Divider().padding(.vertical, 4)
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              Spacer()
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and more.")
                .font(.footnote)
            }
            
          } label: {
            
            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            
          }
          
          // section 2
          GroupBox {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding proccess and you will see the welcome screen again.")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(.secondary)
              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
            
          } label: {
            SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          }
          
          
          // section 3
          GroupBox {
            SettingsRowView(name: "Developer", content: "John / Jane")
            SettingsRowView(name: "Designer", content: "Robert Petras")
            SettingsRowView(name: "Compatibility", content: "iOS 14")
            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
            SettingsRowView(name: "Swift UI", content: "2.0")
            SettingsRowView(name: "Version", content: "1.1.0")
          } label: {
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          }
          
          
        } // vstack
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
          Button {
            presentationMode.wrappedValue.dismiss()
          } label: {
            Image(systemName: "xmark")
          }
        }
        .padding()
      } // scrollView
    } // navigationView
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
