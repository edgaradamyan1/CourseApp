//
//  NewCoursesView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 05.02.25.
//

import SwiftUI

struct NewCoursesView: View {
  let data: NewCourseModel
  
  var body: some View {
 
        VStack {
          Image(data.image)
            .resizable()
            .scaledToFill()
            .frame(height: 140)
          Text(data.title)
            .fontWeight(.bold)
          Text(data.level)
            .foregroundStyle(.steelGray)
          Text(data.videos)
            .foregroundStyle(.steelGray)
          HStack(spacing: 2) {
            Image("star")
            Text(data.rating)
              .foregroundStyle(.steelGray)
            Spacer()
            Text(data.price)
              .foregroundStyle(.oceanBlue)
            
          }
          .padding(.bottom)
          .padding(.horizontal)
        
        }.overlay(content: {
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color.black.opacity(0.1), lineWidth: 2)
            .shadow(color: .black, radius: 4, x: 0, y: 3)
        })
        
        .padding(.horizontal)

  }
}

#Preview {
  HomeView()
}
