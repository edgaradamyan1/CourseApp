//
//  CourseCellView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 03.02.25.
//

import SwiftUI


struct CourseCellView: View {
  let data: CourseModel
  
  var body: some View {
    RoundedRectangle(cornerRadius: 5)
      .fill(.white)
      .shadow(radius: 5, y: 3)
      .frame(maxWidth: .infinity, maxHeight: 115)
      .padding(.horizontal)
      .overlay {
        HStack {
          Image(data.image)
          
          VStack {
            Text(data.title)
            HStack {
              Image(data.teacher.image)
              Text(data.teacher.name)
            }
            Text(data.time)
          }
          circle
        }
      }
  }
  
  var circle: some View {
    ZStack {
      Circle()
        .stroke(Color.lightGrayCustom ,lineWidth: 10)
        .frame(width: 53 ,height: 53)
        .overlay {
          Circle()
            .trim(from: 0.0, to: CGFloat(data.progress / 100))
            .stroke(Color.oceanBlue ,lineWidth: 10)
            .rotationEffect(.degrees(-90))
            .frame(width: 53 ,height: 53)
            .overlay {
              Text("\(data.progress.formatted()) %")
                .font(.system(size: 13))
                .fontWeight(.bold)
            }
          
        }
    }
    .padding(.trailing, 2)
  }
}
