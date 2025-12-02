import SwiftUI

@main
struct iOS15App: App {
    @StateObject var model = Model() // Avoid calling multiple times, ensures that model initilize once and follows the lifecycle of the app
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}


