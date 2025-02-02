

This project demonstrates the use of SwiftUI to build a user-friendly and visually appealing sign-up and sign-in flow for an educational platform app, Edu Corner. 
It includes reusable components like buttons, text fields, and layouts, designed to simplify and speed up UI development.

SignUpView: A registration page for new users, with fields for personal information (Name, Email, Password, and Confirm Password) and options to sign up using social media platforms (Google, Facebook, Apple).
SignInView: A login page for existing users, allowing sign-in with email and password, and additional features like a "Forgot Password" option and a "Remember Me" checkbox.
TextFieldView: A custom view that renders text fields with corresponding icons. This view is reusable across the app for consistent input fields.
ButtonView: A flexible button component that supports various styles, allowing easy customization for different actions like social media sign-ins and form submissions.
Reusable Functions: Functions like separator(), title(), and continueButton() help maintain a clean and consistent layout across the app.
ViewModel:
The AppViewModel is responsible for managing the state of the views, holding the data for text fields and buttons. It utilizes the TextFieldModel and ButtonModel classes to define the structure of the form fields and buttons.

SwiftUI Concepts:
@StateObject: Used to create and bind the view model to the views.
@Binding: Provides two-way data binding for the text fields, enabling dynamic updates of the user input.
ForEach: Used to generate multiple instances of views (text fields and buttons) based on data arrays, allowing for dynamic UI generation.
Custom Layouts: Functions like separator(), title(), and subTitle() provide reusable UI elements, making the layout structure more modular.

Link:
https://www.figma.com/design/LiHXDmjUl0poMrHv6h3xOH/Free-Online-E-Learning-App-Design-(Community)?node-id=363-744&t=NJgCZ0tM4x1kWiCE-0
