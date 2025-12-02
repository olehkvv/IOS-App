//
//  LibraryView.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import SwiftUI
import ComposableArchitecture

struct LibraryFeatureView: View {
    let store: Store<LibraryState, LibraryAction>
    @State private var newItemText: String = ""
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack {
                HStack {
                    TextField("New item", text: $newItemText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Add") {
                        guard !newItemText.isEmpty else { return }
                        viewStore.send(.addItem(newItemText))
                        newItemText = ""
                    }
                }
                .padding()
                
                List {
                    ForEach(viewStore.savedItems, id: \.self) { item in
                        Text(item)
                    }
                    .onDelete { indexSet in
                        viewStore.send(.removeItem(atOffsets: indexSet))
                    }
                }
            }
        }
    }
}
