//
//  ContentView.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI

struct FrameworksListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(FrameworksBase.posts) { post in
                    NavigationLink(destination: InfoDetails(framework: post) ) {
                        InfoRow(framework: post)
                    }
                }
                
            }
            .navigationTitle("💻 Swift Frameworks")
            
        }
    }
}

#Preview {
    FrameworksListView()
}
