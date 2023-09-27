//
//  SettingsView.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI


struct SettingsView: View {
    
    @State var selectedFramework: String
    @State var sliderValue: Double = 50.0
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    
    var body: some View {
        Form {
            
            Section(header: Text("Your color scheme settings")) {
                Text("Your color scheme: \(colorScheme == .light ? "Light Theme enabled" : "Dark Theme enabled")")
            }
            
            Section(header: Text("Navigation title")) {
                Toggle(titleOn == true ? "Navigation title enabled" : "Navigation title disabled", isOn: $titleOn)
            }
            
            Section(header: Text("Picker")) {
                Picker("Framework", selection: $selectedFramework) {
                    ForEach(FrameworksBase.posts) { post in
                        Text(post.frameworkName).tag(post.frameworkName)
                    }
                }
            }
            
            Section(header: Text("Slider")) {
                Slider(value: $sliderValue, in: 0.0...100.0, label: { Text("Slider")})
            }
            
        }
    }
}

#Preview {
    SettingsView(selectedFramework: FrameworksBase.posts[0].frameworkName, titleOn: .constant(true))
}
