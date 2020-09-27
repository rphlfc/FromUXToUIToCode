//
//  LoginFormView.swift
//  FromUXToUIToCode
//
//  Created by Raphael Cerqueira on 27/09/20.
//

import SwiftUI

struct LoginFormView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Welcome!")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer()
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Email")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.gray)
                
                TextField("", text: self.$email)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 15).fill(Color.white))
            .padding(.top, 8)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("Password")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.gray)
                
                HStack {
                    SecureField("", text: self.$password)
                    
                    Button(action: {}, label: {
                        Image(systemName: "eye")
                            .font(.system(size: 19, weight: .bold))
                            .foregroundColor(Color.white)
                    })
                }
            }
            .padding()
            .background(Blur(style: .systemUltraThinMaterialLight))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.top, 8)
            
            HStack {
                Spacer()
                
                Button(action: {}, label: {
                    Text("Forgot password or login?")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                        .frame(height: 50)
                })
            }
            .padding(.top, 4)
            
            Button(action: {}, label: {
                Text("Login")
                    .font(.system(size: 19, weight: .bold))
                    .foregroundColor(.white)
                    .frame(height: 80)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color(#colorLiteral(red: 0.07861731201, green: 0.0781577602, blue: 0.07897556573, alpha: 1))))
            })
            .padding(.top, 8)
            
            Button(action: {}, label: {
                Text("I don't have an account")
                    .font(.system(size: 19, weight: .bold))
                    .foregroundColor(.white)
                    .frame(height: 80)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).strokeBorder(Color.gray, lineWidth: 1))
            })
            .padding(.top, 8)
            
            Button(action: {}, label: {
                Text("Contact us")
                    .font(.system(size: 19, weight: .bold))
                    .foregroundColor(.white)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
            })
            .padding(.top, 8)
        }
        .padding(30)
        .background(Blur(style: .systemUltraThinMaterialDark))
        .clipShape(RoundedRectangle(cornerRadius: 36))
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
    }
}
