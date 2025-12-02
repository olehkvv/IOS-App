//
//  ExploreState.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import ComposableArchitecture

struct ExploreState: Equatable {
    var searchText: String = ""
    var results: [String] = []
}
