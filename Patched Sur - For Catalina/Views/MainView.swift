//
//  MainView.swift
//  Patched Sur - For Catalina
//
//  Created by Benjamin Sova on 9/23/20.
//

import VeliaUI

struct MainView : View {
    @Binding var hovered: String?
    @Binding var p: Int
    @Binding var c: Bool
    
    var body: some View {
        VStack() {
            Text("Welcome to Patched Sur!").bold()
            Text("This patcher is made to provide you with the simplest upgrade to macOS Big Sur on your unsupported Mac. It prepares everything to be perfect by the end of the installation, and makes sure that nothing will go wrong with your installation. By the end, Patched Sur will try to make your Mac run just like a supported one.")
                .multilineTextAlignment(.center)
                .padding()
            VIButton(id: "START", h: $hovered) {
                Text("Get Started")
                Image("ArrowRightCircle")
            } onClick: {
                withAnimation {
                    p += 1
                    c = true
                }
            }.inPad()
        }
    }
}
