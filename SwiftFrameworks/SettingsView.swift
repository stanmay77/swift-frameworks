//
//  SettingsView.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI


struct SettingsView: View {
    
    @State var toggleBool: Bool = false
    @State var selectedFramework: String
    @State var sliderValue: Double = 50.0
    
    var body: some View {
        Form {
            Section(header: Text("Toggle")) {
                Toggle("Toggle me", isOn: $toggleBool)
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
            
            Section(header: Text("Your settings")) {
                Text("Your toggle result: \(String(toggleBool))")
                Text("You've chosen in picker: \(selectedFramework)")
                Text("Your input is: \(String(format: "%.1f", sliderValue))")
            }
        }
    }
}

#Preview {
    SettingsView(toggleBool: true, selectedFramework: FrameworksBase.posts[0].frameworkName)
}
