//
//  InfoDetails.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI

struct InfoDetails: View {
    
    var framework: Post
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(framework.frameworkImageName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 20, trailing: 0))
                    Text(framework.frameworkName)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 40))
                    Spacer()
                }
                
                Text(framework.description)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(30)
                    .font(.title2)
            }
        }
    }
}

#Preview {
    InfoDetails(framework: FrameworksBase.posts[0])
}
