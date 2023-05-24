//
//  datepicker.swift
//  SwiftThing_course
//
//  Created by Apple1 on 08/10/2022.
//

import SwiftUI

struct datepicker: View {
    @State var selectdate:Date=Date()
//    *** The code is for the range of date *****
    let startingDate:Date = Calendar.current.date(from:
    DateComponents(year:2018)) ?? Date()
    let endingdate = Date.now
    
//      The code is for the formate of date which we used in  Text
    var  dateformater:DateFormatter {
        let formater = DateFormatter()
//        formater.dateStyle = .long
//        formater.dateStyle = .short
        formater.dateStyle = .medium
        return formater
    }
    
    var body: some View {
        
        VStack{
            Text("Your Selected Date :")
//            Text(selectdate.description)
            Text(dateformater.string(from: selectdate))
//        DatePicker("Select the date", selection: $selectdate
//                   ,displayedComponents:[.date, .hourAndMinute]
//        )
        DatePicker("Select the date ", selection: $selectdate, in: startingDate...endingdate)
            .accentColor(Color.orange)
            .foregroundColor(.orange)
            .datePickerStyle(
                CompactDatePickerStyle()
//                GraphicalDatePickerStyle()
//                WheelDatePickerStyle()
            )
        }
        
    }
}

struct datepicker_Previews: PreviewProvider {
    static var previews: some View {
        datepicker()
    }
}
