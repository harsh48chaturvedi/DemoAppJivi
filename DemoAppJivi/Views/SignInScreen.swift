//
//  SignInScreen.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 25/12/24.
//

import SwiftUI

struct SignInScreen: View {
	@EnvironmentObject var path: NavigationRouter
	@State private var email: String = ""
	@State private var password: String = ""
	private var vm = SignInViewModel()
	@State var shouldShowAlert: Bool = false
	
	var body: some View {
		VStack() {
			Spacer()
			Image("appName")
				.resizable()
				.scaledToFit()
				.padding(.horizontal, 13)
			Image("image_\(AppState.shared.companyWorkspace)")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(height: 50)
				.padding(.top, 40)
				.padding(.bottom, 20)
			
			VStack(alignment: .leading) {
				Text("Email")
					.font(.custom("Lato", size: 12))
					.font(.subheadline)
					.foregroundStyle(Color("textfield_bottom_color"))
				TextField("", text: $email)
					.padding(.bottom, 8)
					.overlay(
						Rectangle()
							.frame(height: 1)
							.foregroundColor(Color("textfield_bottom_color")),
						alignment: .bottom
					)
			}
			.padding(.bottom, 10)
			VStack(alignment: .leading) {
				SecureField("password", text: $password)
					.padding(.bottom, 8)
					.overlay(
						Rectangle()
							.frame(height: 1)
							.foregroundColor(Color("textfield_bottom_color")),
						alignment: .bottom
					)
				HStack {
					Spacer()
					Button(action: {
						
					}) {
						Text("Forgot Password?")
							.font(.footnote)
							.foregroundColor(.blue)
							.padding(.top, 5)
					}
				}
			}
			.padding(.bottom, 10)
			
			// Sign In Button
			Button(action: {
				if vm.isCredentialValid(userName: email, password: password) {
					path.push(Route.mainApp)
				}
				else {
					shouldShowAlert = true
				}
			}) {
				HStack {
					Spacer()
					Text("Sign in")
						.foregroundColor(.white)
					Image(systemName: "arrow.right")
						.foregroundColor(.white)
					Spacer()
				}
				.padding()
				.background(Color.blue)
				.cornerRadius(10)
			}
			Spacer()
			Image("tagNTracLogo")
				.resizable()
				.frame(width: 100, height: 85)
			Spacer()
			HStack {
				Button(action: {
					// move to scanner screen
				}) {
					HStack {
						Image(uiImage: UIImage(named: "scan")!.withRenderingMode(.alwaysTemplate))
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(height: 30)
							.foregroundColor(.black)
						Text("Scanner")
							.font(.custom("Lato", size: 16))
							.foregroundColor(.black)
					}
					.padding(.horizontal, 25)
					.padding(.vertical, 10)
					.overlay(
						RoundedRectangle(cornerRadius: 10)
							.stroke(Color("textfield_bottom_color"), lineWidth: 2)
					)
				}
				Spacer()
				Button(action: {
					// move to tracker screen
				}) {
					HStack {
						Image(uiImage: UIImage(named: "tracker")!.withRenderingMode(.alwaysTemplate))
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(height: 30)
							.foregroundColor(.black)
						Text("Tracker")
							.font(.custom("Lato", size: 16))
							.foregroundColor(.black)
					}
					.padding(.horizontal, 25)
					.padding(.vertical, 10)
					.overlay(
						RoundedRectangle(cornerRadius: 10)
							.stroke(Color("textfield_bottom_color"), lineWidth: 2)
					)
				}
			}
		}
		.padding(.horizontal, 34)
		.padding(.vertical)
		.toolbar(.hidden)
		.alert(isPresented: $shouldShowAlert) {
			Alert(
				title: Text("User not valid"),
				message: Text("Try with different username and password."),
				dismissButton: .default(Text("Dismiss")) {
					print("Alert dismissed")
				}
			)
		}
		.edgesIgnoringSafeArea(.top)

	}
}

#Preview {
	SignInScreen()
}
