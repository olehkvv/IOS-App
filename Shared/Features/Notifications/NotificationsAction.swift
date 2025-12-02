//
//  NotificationsAction.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import ComposableArchitecture

enum NotificationsAction: Equatable {
    case loadNotifications
    case setNotifications([String])
    case clearAll
}
