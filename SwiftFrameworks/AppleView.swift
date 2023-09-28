//
//  HelloView.swift
//  SwiftFrameworks
//
//  Created by STANISLAV MAYBORODA on 9/25/23.
//

import SwiftUI
import WebKit

struct AppleView: View {
    
    var titleOn: Bool
    @State var selectedURLFramework: String
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    
                    Text("Choose framework:")
                    Picker("Select Framework", selection: $selectedURLFramework) {
                        ForEach(FrameworksBase.posts) { post in
                            Text(post.frameworkName).tag(post.frameworkName)
                        }
                    }
                }
                
                webView(urlString: FrameworksBase.posts.filter({$0.frameworkName == selectedURLFramework}).first!.urlString)
                
            }
            .applyConditionally(titleOn) {
                $0.navigationTitle("🍎 Apple website")
            }
        }
    }
    }


#Preview {
    AppleView(titleOn: true, selectedURLFramework: FrameworksBase.posts[0].frameworkName)
}


struct webView: UIViewRepresentable {
    
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let uiWebView = WKWebView()
        //uiWebView.navigationDelegate = context.coordinator
        return uiWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
        
    }
    
//    func makeCoordinator() -> Coordinator {
//            Coordinator(self)
//        }
//        
//        class Coordinator: NSObject, WKNavigationDelegate {
//            var parent: webView
//            
//            init(_ parent: webView) {
//                self.parent = parent
//            }
//        }
}
