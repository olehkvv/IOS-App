import Foundation
import ComposableArchitecture

enum AppAction: Equatable {
    case tabSelected(Tab)
    case toggleAccountSheet(Bool)
}
