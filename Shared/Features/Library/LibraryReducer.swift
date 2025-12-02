//
//  LibraryReducer.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import ComposableArchitecture

let libraryReducer = Reducer<LibraryState, LibraryAction, LibraryEnvironment> { state, action, env in
    switch action {
    case let .addItem(item):
        state.savedItems.append(item)
        return .none
        
    case let .removeItem(atOffsets):
        state.savedItems.remove(atOffsets: atOffsets)
        return .none
    }
}
