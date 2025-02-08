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
  
  var labels: [LabelModel] = [
    .init(text: "1 hr video Lecture", image: "pocketWatch"),
    .init(text: "English Subtitles", image: "cc"),
    .init(text: "Certificate", image: "certificate"),
    .init(text: "20 % off", image: "priceTag"),
    .init(text: "Lifetime access", image: "infinity"),
    .init(text: "Beginner Level", image: "growth")
  ]
  
  let sampleText = "Lorem ipsum dolor sit amet consectetur. Lectus viverra sed aliquam quis enim leo. Turpis nec facilisis placerat dolor ac donec. Odio semper quis rutrum quis lacus odio vivamus ultricies. Ultrices ultricies platea feugiat ac velit nulla. Proin lectus commodo id nullam "
  
  var newCourses: [NewCourseModel]
  
  let angelaWhite = Teacher(name: "Angela White", image: "angelaWhite")
  let harryWillson = Teacher(name: "Harry Willson", image: "harryWillson")
  
  var startedCourses: [startedCoursesModel]
  
  init() {
    startedCourses = [ .init(title: "Python", image: "python", teacher: angelaWhite, time: "1 hour Remaining", progress: 75),
                .init(title: "Flutter", image: "flutter", teacher: harryWillson, time: "2 hours Remaining", progress: 60)
    ]
    
    newCourses = [
    .init(title: "UI UX Designing", level: "Beginners Level", videos: "25 Videos", rating: "4.9", price: "$200", image: "designing", teacher: angelaWhite),
      .init(title: "Digital Marketing", level: "Advanced Level", videos: "30 VIdeos", rating: "5.0", price: "Free", image: "marketing", teacher: harryWillson)
    ]
  }
  
  
}
