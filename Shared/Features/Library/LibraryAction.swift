import Foundation
import ComposableArchitecture

enum LibraryAction: Equatable {
    case addItem(String)
    case removeItem(atOffsets: IndexSet)
}
