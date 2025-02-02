//
//  HomeView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 02.02.25.
//

import SwiftUI

struct HomeView: View {
  @State var searchedWord = ""
  
  var body: some View {
    header
    searchTextField
  }
  
  var header: some View {
    HStack {
      Image("userImage")
      Text("Hello, Sara! 👋")
      
      Spacer()
      
      Button {
        print("Setting")
      } label: {
        Image("settings")
      }
      
      Button {
        print("doorBell")
      } label: {
        Image("doorBell")
      }
      
      
    }
    .padding()
  }
  
  var searchTextField: some View {
    HStack {
      HStack {
        Image("search")
          .padding(.leading)
        TextField("Search Here", text: $searchedWord)
      }
      .overlay {
        RoundedRectangle(cornerRadius: 5)
          .stroke(Color.lightGrayCustom)
          .frame(height: 40)
      }
      
      Button {
        print("filter")
      } label: {
        RoundedRectangle(cornerRadius: 5)
          .fill(Color.oceanBlue)
          .frame(width: 45, height: 40)
          .overlay {
            Image("filter")
          }
      }

      
    }
    .padding(.horizontal)
    
  }
  
  
}




#Preview {
    HomeView()
}
