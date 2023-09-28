//
//  ContentView.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI

struct FrameworksListView: View {
    
    var titleOn: Bool
    
    var body: some View {
        NavigationView {
            List {
                ForEach(FrameworksBase.posts) { post in
                    NavigationLink(destination: InfoDetails(framework: post) ) {
                        InfoRow(framework: post)
                    }
                }
            }
            .applyConditionally(titleOn) {
                $0.navigationTitle("💻 Swift Frameworks")
            }
        }
    }
}

#Preview {
    FrameworksListView(titleOn: true)
}

extension View {
    @ViewBuilder func applyConditionally<T: View>(_ condition: Bool, applied: (Self)->T) -> some View {
        if condition {
            applied(self)
        } else {
            self
        }
    }
}
