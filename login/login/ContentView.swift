//
//  ContentView.swift
//  login
//
//  Created by Fabrício Guilhermo on 09/06/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        ZStack {
            Image(uiImage: #imageLiteral(resourceName: "backgroundImage"))
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            VStack (spacing: 0) {
                HStack {
                    Text("Login")
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .font(.system(size: 25)).fontWeight(.heavy)
                        .padding(.leading)
                    Spacer()
                }

                HStack {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore!")
                        .foregroundColor(.white)
                        .font(.system(size: 18)).fontWeight(.light)
                        .padding(.init(top: 16, leading: 18, bottom: 0, trailing: 18))
                    Spacer()
                }

                HStack {
                    Text("Email")
                        .foregroundColor(Color(#colorLiteral(red: 0.5882352941, green: 0.537254902, blue: 0.6901960784, alpha: 1)))
                        .padding(.init(top: 22, leading: 54, bottom: 0, trailing: 0))
                    Spacer()
                }

                ZStack {
                    Rectangle()
                        .frame(height: 51)
                        .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.03921568627, blue: 0.3176470588, alpha: 1)))
                        .border(Color.white, width: 2)
                        .cornerRadius(5)
                        .padding(.init(top: 10, leading: 20, bottom: 0, trailing: 20))

                    CustomTextField(
                        placeholder: Text("Input User")
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .font(.system(size: 14)).fontWeight(.heavy)
                            .bold(),
                        text: $email)
                        .padding(.init(top: 11, leading: 54, bottom: 0, trailing: 54))
                }


                HStack {
                    Text("Password")
                        .foregroundColor(Color(#colorLiteral(red: 0.5882352941, green: 0.537254902, blue: 0.6901960784, alpha: 1)))
                        .padding(.init(top: 22, leading: 54, bottom: 0, trailing: 0))
                    Spacer()
                }

                ZStack {
                    Rectangle()
                        .frame(height: 51)
                        .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.03921568627, blue: 0.3176470588, alpha: 1)))
                        .border(Color.white, width: 2)
                        .cornerRadius(5)
                        .padding(.init(top: 10, leading: 20, bottom: 0, trailing: 20))

                    CustomTextField(
                        placeholder: Text("Input User")
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .font(.system(size: 14)).fontWeight(.heavy)
                            .bold(),
                        text: $password)
                        .padding(.init(top: 11, leading: 54, bottom: 0, trailing: 54))
                }

                HStack {
                    Spacer()
                    Button(action: {
                        //TODO
                    }) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color.white)
                                .frame(width: 164, height: 45)
                                .cornerRadius(5)
                            Text("Sign In")
                                .font(.system(size: 14)).fontWeight(.heavy)
                                .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.03921568627, blue: 0.3176470588, alpha: 1)))
                        }
                        .padding(.top, 60)
                        .padding(.trailing, 20)
                    }
                }

                HStack {
                    Spacer()
                    Text("Forgot password or email?")
                        .font(.system(size: 12)).fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0.9568627451, green: 0.6862745098, blue: 0.2823529412, alpha: 1)))
                        .padding(.trailing, 21)
                        .padding(.top, 12)
                }
                Spacer()
            }
            .padding(.top, 98)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
