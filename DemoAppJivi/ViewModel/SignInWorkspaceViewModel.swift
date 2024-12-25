//
//  SignInWorkspaceViewModel.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 24/12/24.
//
import SwiftUI

class SignInWorkspaceViewModel: ObservableObject {
	@Published var shouldShowAlert: Bool = false
	@Published var isWorkSpaceValid: Bool = false
	
	func isSupportedWorkspace(workspace: String) {
		sleep(5)
		if workspace == "Dell" {
			isWorkSpaceValid = true
		}
		else {
			shouldShowAlert = true
		}
	}
}
