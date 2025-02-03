//
//  Reusable Components.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 02.02.25.
//

import SwiftUI

func makeSeparator() -> some View {
  HStack {
    Rectangle()
      .fill(.lightGrayCustom)
      .frame(width: 150, height: 1)
    
    Spacer()
    
    Text("or")
    
    Spacer()
    
    Rectangle()
      .fill(.lightGrayCustom)
      .frame(width: 150, height: 1)
  }
}

func writeTitle() -> some View {
  Text("Welcome !")
    .font(.system(size: 28).weight(.bold))
    
    
}

func writeSubTitle(text: String) -> some View {
  Text(text)
    .font(.system(size: 18).bold())
    .padding(.vertical, 10)
}

func drawContinueButton() -> some View {
  Button {
    print("continue")
  } label: {
    RoundedRectangle(cornerRadius: 10)
      .fill(.oceanBlue)
      .frame(height: 55)
      .frame(maxWidth: .infinity)
      .overlay {
        Text("Continue")
          .font(.system(size: 16).weight(.bold))
          .foregroundStyle(.white)
      }
      .padding()
  }

}

func createSection(text: String) -> some View {
  HStack {
    Text(text)
      .font(.system(size: 17))
      .fontWeight(.bold)
    
    Spacer()
    
    Button {
      print("View All")
    } label: {
      Text("View All")
        .foregroundStyle(.oceanBlue)
    }

  }
  .padding()
  
}

#Preview(body: {
  HomeView()
})
