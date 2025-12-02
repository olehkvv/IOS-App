//
//  NotificationsView.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import SwiftUI
import ComposableArchitecture

struct NotificationsFeatureView: View {
    let store: Store<NotificationsState, NotificationsAction>
    
    var body: some View {
        WithViewStore(self.store) { viewStore in
            VStack {
                if viewStore.notifications.isEmpty {
                    Text("No notifications")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    List {
                        ForEach(viewStore.notifications, id: \.self) { notification in
                            Text(notification)
                        }
                    }
                    
                    Button("Clear All") {
                        viewStore.send(.clearAll)
                    }
                    .padding()
                }
            }
            .onAppear {
                viewStore.send(.loadNotifications)
            }
        }
    }
}
