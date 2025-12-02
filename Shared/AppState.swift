import Foundation
import ComposableArchitecture

struct AppState {
    var selectedTab: Tab = .home
    var isAccountSheetPresented = false
}

enum Tabb: String, CaseIterable, Hashable {
    case home, explore, notifications, library
}
