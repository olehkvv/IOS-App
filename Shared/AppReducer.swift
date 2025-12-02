import ComposableArchitecture
import SwiftUI

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, _ in
    switch action {
    case .tabSelected(let tab):
        state.selectedTab = tab
        return .none
        
    case .toggleAccountSheet(let isPresented):
        state.isAccountSheetPresented = isPresented
        return .none
    }
}
