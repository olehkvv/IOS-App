import ComposableArchitecture

struct HomeState: Equatable {
    var courses: [Course] = []
    var showCourse: Bool = false
    var selectedCourse: Course? = nil
    var contentHasScrolled: Bool = false
}
