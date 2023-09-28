//
//  CoreTabView.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI

struct CoreTabView: View {
    
    @AppStorage("titleOn") var titleOn: Bool = true
    
    var body: some View {
        TabView {
           FrameworksListView(titleOn: titleOn)
                .tabItem {
                    Label("Frameworks", systemImage: "list.bullet.circle")
                }
            
            AppleView(titleOn: titleOn, selectedURLFramework: FrameworksBase.posts[0].frameworkName)
                .tabItem {
                    Label("Apple", systemImage: "apple.logo")
                }
            
            SettingsView(selectedFramework: FrameworksBase.posts[0].frameworkName, titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear.circle.fill")
                }
        }
    }
}

#Preview {
    CoreTabView()
}
