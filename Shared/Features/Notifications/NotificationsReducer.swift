//
//  NotificationsReducer.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import ComposableArchitecture

let notificationsReducer = Reducer<NotificationsState, NotificationsAction, NotificationsEnvironment> { state, action, env in
    switch action {
    case .loadNotifications:
        // Заглушка
        let mockNotifications = [
            "New message from Anna",
            "Your order has been shipped",
            "Reminder: Meeting at 10 AM"
        ]
        return Effect(value: .setNotifications(mockNotifications))
        
    case let .setNotifications(notifications):
        state.notifications = notifications
        return .none
        
    case .clearAll:
        state.notifications = []
        return .none
    }
}
