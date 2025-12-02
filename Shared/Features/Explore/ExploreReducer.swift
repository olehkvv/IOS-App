//
//  ExploreReducer.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import ComposableArchitecture

let exploreReducer = Reducer<ExploreState, ExploreAction, ExploreEnvironment> { state, action, env in
    switch action {
    case let .searchTextChanged(text):
        state.searchText = text
        return .none
        
    case .performSearch:
        
        let mockResults = ["Result 1", "Result 2", "Result 3"].filter {
            $0.lowercased().contains(state.searchText.lowercased())
        }
        return Effect(value: .setResults(mockResults))
        
    case let .setResults(results):
        state.results = results
        return .none
    }
}
