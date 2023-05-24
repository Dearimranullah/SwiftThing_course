//
//  Picker_in_swift.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//
//
//  ContentView.swift
//  WeSplit
//
//  Created by Apple1 on 14/09/2022.
//

import SwiftUI

struct Picker_in_swift: View {
    let student = ["Imran","Owaise","Zeeshan","Osama","Feroz"]
    @State private var selectedstudent="Imran"
    @State private var tapcount = 0
    @State private var name = ""
    @State private var checkamount:Double = 0.0
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    let tipPercentages = [10, 15, 20, 25, 0]
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Enter amout",value: $checkamount,format: .currency(code: Locale.current.currencyCode ??
                        "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                .foregroundColor(Color.purple)
                Section{
                    Picker("Number of people",selection: $numberOfPeople){
                        ForEach(0..<100){
                            Text("\($0) people")
                        }
                    }
                }
                Section{
                    Picker("tip percentage",selection: $tipPercentage){
                        ForEach(tipPercentages,id:\.self){
                            Text($0,format: .percent)
                        }
                    }
                  .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                Section{
                    Text(checkamount,format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
                .foregroundColor(Color.green)
                Section{
                    Button("Tap Count : \(tapcount)"){
                        tapcount += 1
                    }
                }
                .foregroundColor(Color.red)
                Section{
                    TextField( "Enter Your name :",text:$name)
                        .foregroundColor(Color.green)
                    Text("Your name is :  \(name)")
                }
                .foregroundColor(Color.black)
                Picker("Select Your Student", selection: $selectedstudent){
                    ForEach(student,id: \.self){
                    Text($0)
                    
                }
                }.pickerStyle(.segmented)
                .foregroundColor(Color.orange)
                
            }
            .navigationTitle("Swift UI")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
        
    }
}
struct Picker_in_swift_Previews: PreviewProvider {
    static var previews: some View {
        Picker_in_swift()
    }
}
