//
//  AppState.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 25/12/24.
//
import SwiftUI

class AppState {
	static let shared = AppState()
	private init() {} // Private initializer to enforce singleton

	var companyWorkspace: String = ""
	var emailId: String = ""
}
