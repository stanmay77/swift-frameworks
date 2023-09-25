import Foundation

struct Post: Hashable, Identifiable {
    let id = UUID()
    let frameworkName: String
    let frameworkImageName: String
    let urlString: String
    let description: String
}

struct FrameworksBase {
    
    static let posts: [Post] = [
        Post(frameworkName: "ARKit",
                frameworkImageName: "arkit",
                urlString: "https://developer.apple.com/augmented-reality/arkit",
                  description: "ARKit 6 introduces 4K video, so you can capture stunning high-resolution videos of AR experiences — perfect for professional video editing, film production, social media apps, and more. Video and capture capabilities are expanded with support for HDR video and high-resolution background image capture. ARKit 6 also brings Location Anchors to new cities, such as Montreal, Sydney, Singapore, and Tokyo, and it features improvements to Motion Capture."),
        
        Post(frameworkName: "CarPlay",
             frameworkImageName: "carplay",
                  urlString: "https://developer.apple.com/carplay",
                  description: "A smarter, safer way to use iPhone in the car, CarPlay lets people get directions, make calls, send and receive messages, and play music from their car’s built-in display, all while staying focused on the road."),
        
        Post(frameworkName: "Catalyst",
             frameworkImageName: "catalyst",
                  urlString: "https://developer.apple.com/mac-catalyst",
                  description: "Mac apps built with Mac Catalyst share code with your iPad apps, and you can add more features just for Mac. Desktop-class features on iPad translate beautifully onto Mac. Your Mac app’s toolbars are automatically optimized and document-based apps gain key features, such as menu items and the ability to rename the document in the toolbar. And you can use new Mac Catalyst APIs to enhance multiwindow behaviors, add custom views to your toolbars, and more."),

        Post(frameworkName: "CloudKit",
             frameworkImageName: "cloudkit",
                  urlString: "https://developer.apple.com/icloud/cloudkit",
                  description: "Store your app’s data in iCloud and keep everything up to date across devices and on the web. Featuring efficient syncing, as well as simple monitoring and management, it’s never been easier to build and grow your apps with CloudKit. Store private data securely in your users’ iCloud accounts for limitless scale as your user base grows, and get up to 1PB of storage for your app’s public data."),
        
        Post(frameworkName: "Core ML",
             frameworkImageName: "coreml",
                  urlString: "https://developer.apple.com/machine-learning",
                  description: "Create intelligent features and enable new experiences for your apps by leveraging powerful on-device machine learning. Learn how to build, train, and deploy machine learning models into your iPhone, iPad, Mac, and Apple Watch apps."),
        
        Post(frameworkName: "HealthKit",
             frameworkImageName: "healthkit",
                  urlString: "https://developer.apple.com/health-fitness/",
                  description: "Integrate HealthKit into your health and fitness apps for iOS and watchOS to create a more seamless user experience. When a customer provides permission for your app to read and write health and activity data to their Health app, your app becomes a valuable data source and can deliver deeply informed health and fitness solutions."),
        
        Post(frameworkName: "Metal",
             frameworkImageName: "metal",
                  urlString: "https://developer.apple.com/metal",
                  description: "Metal powers hardware-accelerated graphics on Apple platforms by providing a low-overhead API, rich shading language, tight integration between graphics and compute, and an unparalleled suite of GPU profiling and debugging tools. Your games and pro apps can take full advantage of the incredible performance and efficiency of Apple silicon across iPhone, iPad, Mac, and Apple TV. This year, the new game porting toolkit makes it easier than ever to bring games from other platforms to Mac and the Metal shader converter dramatically simplifies the process of converting your game’s shaders and graphics code."),
        
        Post(frameworkName: "SF Symbols",
             frameworkImageName: "sf-symbols",
                  urlString: "https://developer.apple.com/sf-symbols",
                  description: "With over 5,000 symbols, SF Symbols is a library of iconography designed to integrate seamlessly with San Francisco, the system font for Apple platforms. Symbols come in nine weights and three scales, and automatically align with text. They can be exported and edited using vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features. SF Symbols 5 introduces a collection of expressive animations, over 700 new symbols, and enhanced tools for custom symbols."),
        
        Post(frameworkName: "SiriKit",
             frameworkImageName: "sirikit",
                  urlString: "https://developer.apple.com/siri",
                  description: "Siri is the world’s most popular intelligent assistant."),
        
        Post(frameworkName: "SpriteKit",
             frameworkImageName: "spritekit",
                  urlString: "https://developer.apple.com/spritekit",
                  description: "The SpriteKit framework makes it easy to create high-performance, battery-efficient 2D games. With support for custom OpenGL ES shaders and lighting, integration with SceneKit, and advanced new physics effects and animations, you can add force fields, detect collisions, and generate new lighting effects in your games."),
        
        Post(frameworkName: "SwiftUI",
             frameworkImageName: "swiftui",
                  urlString: "https://developer.apple.com/xcode/swiftui",
                  description: "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs."),
        
        Post(frameworkName: "Test Flight",
             frameworkImageName: "test-flight",
                  urlString: "https://developer.apple.com/testflight",
                  description: "TestFlight makes it easy to invite users to test your apps and App Clips and collect valuable feedback before releasing your apps on the App Store. You can invite up to 10,000 testers using just their email address or by sharing a public link."),
        
        Post(frameworkName: "WidgetKit",
             frameworkImageName: "widgetkit",
                  urlString: "https://developer.apple.com/widgets",
                  description: "Easily build widgets and make them available in iOS, iPadOS, and macOS using the WidgetKit framework and the widget API for SwiftUI. Now you can use WidgetKit to create widgets for the iPhone Lock Screen, as well as complications in watchOS. And starting with iOS 16.1, you can create Live Activities to deliver timely updates.")
    ]
    
}
