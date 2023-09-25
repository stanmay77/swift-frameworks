//
//  CoreTabView.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI

struct CoreTabView: View {
    
    @State private var toggleBool: Bool = false
    
    var body: some View {
        TabView {
           FrameworksListView()
                .tabItem {
                    Label("Frameworks", systemImage: "list.bullet.circle")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "person.circle")
                }
            SettingsView(selectedFramework: FrameworksBase.posts[0].frameworkName)
                .tabItem {
                    Label("Settings", systemImage: "gear.circle.fill")
                }
        }
    }
}

#Preview {
    CoreTabView()
}
