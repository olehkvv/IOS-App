import ComposableArchitecture

enum HomeAction: Equatable {
    case showCourse(Bool)
    case selectCourse(Course)
    case contentScrolled(Bool)
}
