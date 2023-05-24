//
//  Onboarding_View.swift
//  SwiftThing_course
//
//  Created by Apple1 on 10/10/2022.
//

import SwiftUI

struct Onboarding_View: View {
//    Onborading Status
    let transition:AnyTransition = .asymmetric(
        insertion:.move(edge: .trailing),
        removal: .move(edge: .leading))
    @State var OnboardingState:Int = 0
    let arrayname:[String]=["Male","Female","Non_Binary"]
    
//     OnboardingInput
    @State var name:String = ""
    @State var gender:String = ""
    @State var age:Double = 50
//    For The Alert
    @State var alertTitle:String = ""
    @State  var showAlert:Bool = false
    
//     App Storage
    @AppStorage("name") var currentUserName:String?
    @AppStorage("name") var currentUserGender:String?
    @AppStorage("age") var currentUserAge:Int?
    @AppStorage("Signe_in") var currentUserAcount:Bool = false
    
    var body: some View {
        ZStack{
           
            ZStack{
                
                switch OnboardingState {
                case 0:
                    Welcomessection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            
            VStack{
                Spacer()
                bottomButton
                
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
   
}

struct Onboarding_View_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_View()
            .background(.purple)
    }
}
// MARK: COMPONENT

extension Onboarding_View {
    private var bottomButton: some View {
        Text(
            OnboardingState == 0 ? "SINGE UP":
                OnboardingState == 3 ? "FINISH" :
                "NEXT"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame( height:55)
            .frame(maxWidth:.infinity)
            .background(.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonPressed ()
            }
    }
    
    
    private var Welcomessection: some View {
        
        VStack(spacing:30) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("find your match.".uppercased())
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .overlay(
                Capsule()
                    .frame(height:3)
                    .offset(y:5)
                    .foregroundColor(.white)
                ,alignment: .bottom
                )
    }
        .padding(30)
}
    
    private var  addNameSection : some View {
        
        VStack(spacing:30) {
            Spacer()
            Text("What's is your name".uppercased())
                .font(.system(size: 25))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .fontWeight(.semibold)
            TextField("Enter name here ...", text: $name)
                .frame( height:55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(20)
            Spacer()
    }
        .padding(30)
        
    }
    
    
    private var  addAgeSection : some View {
        
        VStack(spacing:30) {
            Spacer()
            
            Text("What's is your age".uppercased())
                .font(.system(size: 25))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .fontWeight(.semibold)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value:$age , in: 18...100, step: 1)
            Spacer()
    }
        .padding(30)
        
    }
    
    
    
    private var  addGenderSection : some View {
        
        VStack(spacing:30) {
            Spacer()
            
            Text("What's is  your gender".uppercased())
                .font(.system(size: 25))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .fontWeight(.semibold)
            
            
            Picker(selection: $gender ,
                   label:
                    Text(gender.count > 1 ? gender : "select a gender")
                       .font(.headline)
                   ,
                   content:{
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non_Binary").tag("Non_Binary")
            })
            .frame(width: 300, height: 55 )
            .foregroundColor(.purple)
            .background(Color.white)
            .cornerRadius(10)
            .pickerStyle(MenuPickerStyle())
                      Spacer()
                     Spacer()
            
    }
        .padding(30)
        
    }
}


// MARK: Funtion Button

extension Onboarding_View{
    
    func handleNextButtonPressed (){
        
        switch OnboardingState {
        case 1 :
            guard name.count >= 3 else {
                showAlert(title: "Your must be at least 3 character long! 😜")
            return
            }
        case 3 :
            guard gender.count >= 1 else {
                showAlert(title: "Please select a gender before moving forward 😜")
            return
            }
        default:
            break
        }
//
        
        
        if OnboardingState == 4 {
           singeIn()
        }
        else
        {
            withAnimation(.spring()){
                OnboardingState += 1
            }
        }
    }
    func singeIn(){
        currentUserName=name
        currentUserAge=Int(age)
        currentUserGender=gender
        withAnimation(.spring()){
            currentUserAcount = true
        }
    }
    func showAlert(title:String){
        alertTitle=title
        showAlert.toggle()
    }
}
