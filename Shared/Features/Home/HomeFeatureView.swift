import SwiftUI
import ComposableArchitecture

struct HomeFeatureView: View {
    let store: Store<HomeState, HomeAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            ZStack {
                Color("Background").ignoresSafeArea()
                
                if viewStore.showCourse, let course = viewStore.selectedCourse {
                    CourseDetailView(course: course) {
                        viewStore.send(.showCourse(false))
                    }
                    .transition(.move(edge: .bottom))
                }
                    
                
                ScrollView {
                    VStack(spacing: 16) {
                        Text("Welcome to Home")
                            .font(.largeTitle)
                        
                        
                        ForEach(sampleCourses) { course in
                            Button {
                                viewStore.send(.selectCourse(course))
                            } label: {
                                Text(course.title)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                        }
                    }
                    .padding()
                }
                .coordinateSpace(name: "scroll")
                .onChange(of: viewStore.contentHasScrolled) { _ in

                }
            }
        }
    }
}



let sampleCourses = [
    Course(index: 1, title: "SwiftUI for iOS 15", subtitle: "20 sections - 3 hours", text: "Build an iOS app for iOS 15 with custom layouts, animations and ...", image: "Illustration 5", background: "Background 5", logo: "Logo 2"),
    Course(index: 2, title: "UI Design for iOS 15", subtitle: "20 sections - 3 hours", text: "Design an iOS app for iOS 15 with custom layouts, animations and ...", image: "Illustration 3", background: "Background 4", logo: "Logo 4"),
    Course(index: 3, title: "Flutter for designers", subtitle: "20 sections - 3 hours", text: "Flutter is a relatively new toolkit that makes it easy to build cross-platform apps that look gorgeous and is easy to use.", image: "Illustration 1", background: "Background 1", logo: "Logo 1"),
    Course(index: 4, title: "React Hooks Advanced", subtitle: "20 sections - 3 hours", text: "Learn how to build a website with Typescript, Hooks, Contentful and Gatsby Cloud", image: "Illustration 2", background: "Background 2", logo: "Logo 3"),
]


struct CourseDetailView: View {
    let course: Course
    let onClose: () -> Void
    
    var body: some View {
        VStack {
            Text(course.title)
                .font(.largeTitle)
            
            Button("Close") {
                onClose()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}
