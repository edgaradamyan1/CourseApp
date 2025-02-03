//
//  courseModel.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 03.02.25.
//

import SwiftUI

struct CourseModel {
  let title: String
  let image: String
  let teacher: Teacher
  let time: String
  var progress: Double
}

struct Teacher {
  let name: String
  let image: String
}
