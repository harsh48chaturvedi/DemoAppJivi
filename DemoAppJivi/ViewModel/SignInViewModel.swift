//
//  SignInViewModel.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 25/12/24.
//

import SwiftUI

class SignInViewModel: ObservableObject {
	
	func isCredentialValid(userName: String, password: String) -> Bool {
		sleep(5)
		if Int.random(in: 0...1) == 0 {
			return true
		}
		else {
			return false
		}
	}

	
	func forgotPassword(){
		
	}
}
