//
//  TextFieldViewModel.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 01.02.25.
//

import SwiftUI

class AppViewModel: ObservableObject {
  @Published var textFields: [TextFieldModel] = [
    .init(placeholder: "Name", image: "person"),
    .init(placeholder: "Email Adress", image: "email"),
    .init(placeholder: "Password", image: "password"),
    .init(placeholder: "Confirm Password", image: "password")
  ]
  
  var registrationButtons: [ButtonModel] = [
    .init(title: "Sign in with Google", image: "google", color: .white, strokeColor: .lightGrayCustom, foreGroundColor: .shadowBlack),
    .init(title: "Sign in with Facebook", image: "facebook", color: .blue, strokeColor: .blue, foreGroundColor: .white),
    .init(title: "Continue with Apple", image: "apple", color: .black, strokeColor: .blue, foreGroundColor: .white)
  ]
  
  var categoryButtons: [ButtonModel] = [
    .init(title: "UI UX Design", image: "uiDesign", color: .white, strokeColor: .lightGrayCustom, foreGroundColor: .black),
    .init(title: "Web", image: "webDevelopment", color: .white, strokeColor: .lightGrayCustom, foreGroundColor: .black),
    .init(title: "Figma", image: "figma", color: .white, strokeColor: .lightGrayCustom, foreGroundColor: .black)
  ]
  
  let angelaWhite = Teacher(name: "Angela White", image: "angelaWhite")
  let harryWillson = Teacher(name: "Harry Willson", image: "harryWillson")
  
  var courses: [CourseModel]
  
  init() {
    courses = [ .init(title: "Python", image: "python", teacher: angelaWhite, time: "1 hour Remaining", progress: 75),
                .init(title: "Flutter", image: "flutter", teacher: harryWillson, time: "2 hours Remaining", progress: 60)
    ]
    
  }
  
  
}
