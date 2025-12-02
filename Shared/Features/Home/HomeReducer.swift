//
//  HomeReducer.swift
//  iOS15
//
//  Created by olehkv on 27.05.2025.
//


import ComposableArchitecture

let homeReducer = Reducer<HomeState, HomeAction, HomeEnvironment> { state, action, env in
    switch action {
    
    case let .showCourse(show):
        state.showCourse = show
        return .none
        
    case let .selectCourse(course):
        state.selectedCourse = course
        state.showCourse = true
        return .none
        
    case let .contentScrolled(scrolled):
        state.contentHasScrolled = scrolled
        return .none
    
    case .onAppear:
        state.courses = environment.courseService.loadCourses()
        return .none

    case let .courseTapped(course):
        state.selectedCourse = course
        state.isCoursePresented = true
        return .none

    case .dismissCourse:
        state.selectedCourse = nil
        state.isCoursePresented = false
        return .none
}
