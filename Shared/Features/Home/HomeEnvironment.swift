import ComposableArchitecture

struct HomeEnvironment {
    var courseService: CourseService
}

protocol CourseService {
    func loadCourses() -> [Course]
}
