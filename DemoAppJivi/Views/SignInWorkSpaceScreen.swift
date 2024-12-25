//
//  SignInScreen.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 24/12/24.
//
import SwiftUI

struct SignInWorkSpaceScreen: View {
	@EnvironmentObject var path: NavigationRouter
	@State var workspace = ""
	@StateObject var vm = SignInWorkspaceViewModel()
	
	var body: some View {
		NavigationStack(path: $path.router) {
			VStack() {
				Spacer()
				Image("appName")
					.resizable()
					.scaledToFit()
					.padding(.horizontal, 13)
				Spacer()
				VStack {
					Text("Sign in to your workspace")
						.font(.custom("Lato", size: 33))
						.multilineTextAlignment(.leading)
						.frame(maxWidth: .infinity, alignment: .leading)
					Text("Enter your workspace identifier")
						.font(.custom("Lato", size: 15))
						.foregroundColor(.gray)
						.frame(maxWidth: .infinity, alignment: .leading)
				}
				Spacer()
				TextField("Workspace Identifier", text: $workspace)
					.padding(.bottom, 8)
					.overlay(
						Rectangle()
							.frame(height: 1)
							.foregroundColor(.gray),
						alignment: .bottom
					)
				Spacer()
				Button(action: {
					vm.isSupportedWorkspace(workspace: workspace)
				}) {
					HStack {
						Text("Next")
						Image(systemName: "arrow.right")
					}
					.foregroundColor(.white)
					.padding()
					.frame(maxWidth: .infinity)
					.background(Color("buttonColor"))
					.cornerRadius(8)
				}
				Spacer()
				Image("tagNTracLogo")
					.resizable()
					.frame(width: 100, height: 85)
				Spacer()
			}
			.onChange(of: vm.isWorkSpaceValid){
				AppState.shared.companyWorkspace = workspace
				path.router.append(Route.SignIn)
			}
			.padding(.horizontal, 34)
			.alert(isPresented: $vm.shouldShowAlert) {
				Alert(
					title: Text("Workspace not found"),
					message: Text("Try with different workspace."),
					dismissButton: .default(Text("Dismiss")) {
						print("Alert dismissed")
					}
				)
			}
			.navigationDestination(for: Route.self){ route in
				switch(route) {
				case .SignIn:
					SignInScreen()
				case .mainApp:
					MainAppScreen()
				}
			}
		}
	}
}

#Preview {
	SignInWorkSpaceScreen()
		.environmentObject(NavigationRouter())
}
