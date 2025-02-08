//
//  HomeView.swift
//  CourseApp
//
//  Created by Edgar Adamyan on 02.02.25.
//

import SwiftUI

struct HomeView: View {
  @State var searchedWord = ""
  @StateObject var viewModel = AppViewModel()
  
  var body: some View {
    NavigationStack {
      ScrollView {
        header
        searchTextField
        topCategories
        categorieButtons
        createSection(text: "Continue Learning")
        currentCourses
        createSection(text: "New & Trending Courses")
        newCourses
        
        
      }
      
    }
  }
  
  var topCategories: some View {
    
      Text("Top Categories")
        .font(.system(size: 17))
        .fontWeight(.bold)
        .frame(maxWidth: .infinity,alignment: .leading)
        .padding()
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
  
  var categorieButtons: some View {
    HStack {
      ForEach(viewModel.categoryButtons, id: \.title) { button in
        categorieButtonView(data: button)
        
      }
    }
    .padding(.horizontal)
  }
  
  var currentCourses: some View {
    ForEach(viewModel.startedCourses, id: \.title) { data in
      CourseCellView(data: data)
    }
  }
  
  var newCourses: some View {
    HStack{
      ForEach(viewModel.newCourses, id: \.title) { data in
        NavigationLink(destination: DetailView(course: data)) {
          NewCoursesView(data: data)
        }
        
      }
    }
  }
}






#Preview {
  HomeView()
}
