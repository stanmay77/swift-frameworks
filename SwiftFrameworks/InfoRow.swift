//
//  InfoRow.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI

struct InfoRow: View {
    var framework: Post
    
    var body: some View {
        HStack {
            Image(framework.frameworkImageName)
                .resizable()
                .frame(width: 50, height: 50)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            Text(framework.frameworkName)
                .padding(.leading, 20)
            Spacer()
        }
    }
}

#Preview {
    InfoRow(framework: FrameworksBase.posts[0])
}
