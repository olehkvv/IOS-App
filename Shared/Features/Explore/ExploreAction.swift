//
//  ExploreAction.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import ComposableArchitecture

enum ExploreAction: Equatable {
    case searchTextChanged(String)
    case performSearch
    case setResults([String])
}
