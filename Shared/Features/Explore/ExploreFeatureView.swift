//
//  ExploreView.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import SwiftUI
import ComposableArchitecture

struct ExploreFeatureView: View {
    let store: Store<ExploreState, ExploreAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack {
                TextField("Search...", text: viewStore.binding(
                    get: \.searchText,
                    send: ExploreAction.searchTextChanged
                ))
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Search") {
                    viewStore.send(.performSearch)
                }
                .padding(.bottom)
                
                List {
                    ForEach(viewStore.results, id: \.self) { result in
                        Text(result)
                    }
                }
            }
            .padding()
        }
    }
}
