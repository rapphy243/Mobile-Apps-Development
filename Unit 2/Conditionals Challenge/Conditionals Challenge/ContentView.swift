//
//  ContentView.swift
//  Conditionals Challenge
//
//  Created by Katherine Johnson on 9/15/21.
//

import SwiftUI

struct ContentView: View {
    @State private var clothingItems = [ClothingItem]()
    @State private var firstChoiceCost = 0
    @State private var secondChoiceCost = 0
    @State private var thirdChoiceCost = 0
    @State private var fourthChoiceCost = 0
    @State private var randomMoney = Int()
    @State private var message = ""
    @State private var mvpCheck = ""
    @State private var stretch1Check = ""
    @State private var stretch2Check = ""
    @State private var stretch3Check = ""
    @State private var stretch4Check = ""
    @State private var stretch5Check = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Use the lines on the right to move the items into the order that you would like, then select which challenge you would like to test.")
                    .multilineTextAlignment(.center)
                List {
                    ForEach(clothingItems, id: \.id) { item in
                        HStack {
                            Text(item.description)
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 20, alignment: .center)
                            Text("$\(item.price)")
                        }
                    }
                    .onMove(perform: { indices, newOffset in
                        clothingItems.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                Text(message)
                HStack {
                    Button("MVP") {
                        MVP()
                    }
                    Text(mvpCheck)
                }
                .padding(.bottom)
                HStack {
                    Button("Stretch1") {
                        Stretch1()
                    }
                    Text(stretch1Check)
                }
                .padding(.bottom)
                HStack {
                    Button("Stretch2") {
                        Stretch2()
                    }
                    Text(stretch2Check)
                }
                .padding(.bottom)
                HStack {
                    Button("Stretch3") {
                        Stretch3()
                    }
                    Text(stretch3Check)
                }
                .padding(.bottom)
                HStack {
                    Button("Stretch4") {
                        Stretch4()
                    }
                    Text(stretch4Check)
                }
                .padding(.bottom)
                HStack {
                    Button("Stretch5") {
                        Stretch5()
                    }
                    Text(stretch5Check)
                }
                .padding(.bottom)
            }
            .navigationBarTitle("You have $\(randomMoney)", displayMode: .inline)
            .onAppear() {
                clothingItems.append(ClothingItem(description: "Jacket", price: 80))
                clothingItems.append(ClothingItem(description: "Jeans", price: 60))
                clothingItems.append(ClothingItem(description: "Shirt", price: 40))
                clothingItems.append(ClothingItem(description: "Hat", price: 20))
            }
            .environment(\.editMode, .constant(.active))
        }
    }
    
    func MVP() {
        setInfo()
        var choice = ""
        let totalMoney = randomMoney
        
        /************************************
         * Start of MVP
         *
         * Using the provided variables totalMoney and firstChoiceCost,
         * determine if you can or cannot purchase your first choice.
         *
         * Use both of the choice statements below.
         ************************************/
        if totalMoney >= firstChoiceCost
        {
            choice = "can"
        }
        else
        {
            choice = "cannot"
        }
        /*********************************
         * End of MVP
         ***********************************/
        
        if choice != "" {
            message = "You \(choice) purchase your first choice\n"
            checkMVP(answer: choice)
        }
    }
    
    func Stretch1() {
        setInfo()
        var choice = ""
        let totalMoney = randomMoney
        
        /************************************
         * Start of Stretch 1
         *
         * Using the provided variables totalMoney and firstChoiceCost,
         * determine if you have more than enough, just enough, or not
         * enough money for your first choice.
         *
         * Use all three of the choice statements below
         ************************************/
        if firstChoiceCost < totalMoney
        {
            choice = "have more than enough"
        }
        else if firstChoiceCost == totalMoney
        {
            choice = "have just enough"
        }
        else
        {
            choice = "do not have enough"
        }
        /*********************************
         * End of Stretch 1
         ***********************************/
        
        if choice != "" {
            message = "You \(choice) money for your first choice\n"
            checkStretch1(answer: choice)
        }
    }
    
    func Stretch2() {
        setInfo()
        var totalMoney = randomMoney
        
        /************************************
         * Start of Stretch 2
         *
         * Using the provided variables totalMoney, firstChoiceCost,
         * secondChoiceCost, thirdChoiceCost, and fourthChoiceCost,
         * determine if you have enough money to buy the items in order
         * cumulatively. Once an item is bought, totalMoney goes down.
         *
         * Use all four of the message statements below.
         ************************************/
        if totalMoney >= firstChoiceCost
        {
            message += "You can purchase your first choice\n"
            totalMoney -= firstChoiceCost
        }
        if totalMoney >= secondChoiceCost
        {
            message += "You can purchase your second choice\n"
            totalMoney -= secondChoiceCost
        }
        if totalMoney >= thirdChoiceCost
        {
            message += "You can purchase your third choice\n"
            totalMoney -= thirdChoiceCost
        }
        if totalMoney >= fourthChoiceCost
        {
            message += "You can purchase your fourth choice\n"
            totalMoney -= fourthChoiceCost
        }
        /*********************************
         * End of Stretch 2
         ***********************************/
        
        checkStretch2(answer: message)
    }
    
    func Stretch3() {
        setInfo()
        var totalMoney = randomMoney
        
        /************************************
         * Start of Stretch 3
         *
         * Using the provided variables totalMoney, firstChoiceCost,
         * secondChoiceCost, thirdChoiceCost, and fourthChoiceCost,
         * determine if you have enough money or not to buy the items in
         * order cumulatively. Once an item is bought totalMoney goes down.
         *
         * Use all eight of the message statements below.
         ************************************/
        if totalMoney >= firstChoiceCost
        {
            message += "You can purchase your first choice\n"
            totalMoney -= firstChoiceCost
        }
        else
        {
            message += "You cannot purchase your first choice\n"
        }
        if totalMoney >= secondChoiceCost
        {
            message += "You can purchase your second choice\n"
            totalMoney -= secondChoiceCost
        }
        else
        {
            message += "You cannot purchase your second choice\n"
        }
        if totalMoney >= thirdChoiceCost
        {
            message += "You can purchase your third choice\n"
            totalMoney -= thirdChoiceCost
        }
        else
        {
            message += "You cannot purchase your third choice\n"
        }
        if totalMoney >= fourthChoiceCost
        {
            message += "You can purchase your fourth choice\n"
            totalMoney -= fourthChoiceCost
        }
        else
        {
            message += "You cannot purchase your fourth choice\n"
        }
        /*********************************
         * End of Stretch 3
         ***********************************/
        
        checkStretch3(answer: message)
    }
    
    func Stretch4() {
        setInfo()
        let totalMoney = randomMoney
        let oneItem = firstChoiceCost
        let twoItems = oneItem + secondChoiceCost
        let threeItems = twoItems + thirdChoiceCost
        let fourItems = threeItems + fourthChoiceCost
        
        /************************************
         * Start of Stretch 4
         *
         * Using the provided variables totalMoney, oneItem, twoItems,
         * threeItems, and fourItems, determine how many items on your
         * list you can purchase (in order, cumulatively).
         *
         * Use all five of the message statements below.
         ************************************/
        if totalMoney >= fourItems
        {
            message += "You can purchase all four items\n"
        }
        else if totalMoney >= threeItems
        {
            message += "You can purchase your top three items\n"
        }
        else if totalMoney >= twoItems
        {
            message += "You can purchase your top two items\n"
        }
        else if totalMoney >= oneItem
        {
            message += "You can only purchase your top item\n"
        }
        else
        {
            message += "You cannot purchase any of your items\n"
        }
        /*********************************
         * End of Stretch 4
         ***********************************/
        
        checkStretch4(answer: message)
    }
    
    func Stretch5() {
        setInfo()
        let totalMoney = randomMoney
        let oneItem = firstChoiceCost
        let twoItems = oneItem + secondChoiceCost
        let threeItems = twoItems + thirdChoiceCost
        let fourItems = threeItems + fourthChoiceCost
        
        /************************************
         * Start of Stretch 5
         *
         * Using the provided variables totalMoney, oneItem, twoItems,
         * threeItems, and fourItems, determine how many items on your
         * list you can purchase (in order, cumulatively). Also include how
         * much money you have spent and how much you have left over.
         *
         * Use all ten of the message statements below.
         ************************************/
        if totalMoney >= fourItems
        {
            message += "You can purchase all four items\n"
            message += "You have spent $\(fourItems) and have $\(totalMoney - fourItems) remaining\n"
        }
        else if totalMoney >= threeItems
        {
            message += "You can purchase your top three items\n"
            message += "You have spent $\(threeItems) and have $\(totalMoney - threeItems) remaining\n"
        }
        else if totalMoney >= twoItems
        {
            message += "You can purchase your top two items\n"
            message += "You have spent $\(twoItems) and have $\(totalMoney - twoItems) remaining\n"
        }
        else if totalMoney >= oneItem
        {
            message += "You can only purchase your top item\n"
            message += "You have spent $\(oneItem) and have $\(totalMoney - oneItem) remaining\n"
        }
        else
        {
            message += "You cannot purchase any of your items\n"
            message += "You have spent $0 and have $\(totalMoney) remaining\n"
        }
        /*********************************
         * End of Stretch 5
         ***********************************/
        
        checkStretch5(answer: message)
    }
    
    func setInfo() {
        randomMoney = Int.random(in: 0..<10) * 20 + 20
        message = ""
        firstChoiceCost = clothingItems[0].price
        secondChoiceCost = clothingItems[1].price
        thirdChoiceCost = clothingItems[2].price
        fourthChoiceCost = clothingItems[3].price
    }
    
    func checkMVP(answer: String) {
        let totalMoney = randomMoney
        mvpCheck = "Incorrect"
        if totalMoney >= firstChoiceCost {
            if answer == "can" {
                mvpCheck = "Correct"
            }
        }
        else {
            if answer == "cannot" {
                mvpCheck = "Correct"
            }
        }
    }
    
    func checkStretch1(answer: String) {
        let totalMoney = randomMoney
        stretch1Check = "Incorrect"
        if totalMoney == firstChoiceCost {
            if answer == "have just enough" {
                stretch1Check = "Correct"
            }
        }
        else if totalMoney > firstChoiceCost {
            if answer == "have more than enough" {
                stretch1Check = "Correct"
            }
        }
        else {
            if answer == "do not have enough" {
                stretch1Check = "Correct"
            }
        }
    }
    
    func checkStretch2(answer: String) {
        var totalMoney = randomMoney
        var check = ""
        stretch2Check = "Incorrect"
        if totalMoney >= firstChoiceCost {
            check += "You can purchase your first choice\n"
            totalMoney -= firstChoiceCost
        }
        if totalMoney >= secondChoiceCost {
            check += "You can purchase your second choice\n"
            totalMoney -= secondChoiceCost
        }
        if totalMoney >= thirdChoiceCost {
            check += "You can purchase your third choice\n"
            totalMoney -= thirdChoiceCost
        }
        if totalMoney >= fourthChoiceCost {
            check += "You can purchase your fourth choice\n"
        }
        if check == answer {
            stretch2Check = "Correct"
        }
    }
    
    func checkStretch3(answer: String) {
        var totalMoney = randomMoney
        var check = ""
        stretch3Check = "Incorrect"
        if totalMoney >= firstChoiceCost {
            check += "You can purchase your first choice\n"
            totalMoney -= firstChoiceCost
        }
        else {
            check += "You cannot purchase your first choice\n"
        }
        if totalMoney >= secondChoiceCost {
            check += "You can purchase your second choice\n"
            totalMoney -= secondChoiceCost
        }
        else {
            check += "You cannot purchase your second choice\n"
        }
        if totalMoney >= thirdChoiceCost {
            check += "You can purchase your third choice\n"
            totalMoney -= thirdChoiceCost
        }
        else {
            check += "You cannot purchase your third choice\n"
        }
        if totalMoney >= fourthChoiceCost {
            check += "You can purchase your fourth choice\n"
        }
        else {
            check += "You cannot purchase your fourth choice\n"
        }
        if check == answer {
            stretch3Check = "Correct"
        }
    }

    func checkStretch4(answer: String) {
        let totalMoney = randomMoney
        var check = ""
        stretch4Check = "Incorrect"
        let twoItems = firstChoiceCost + secondChoiceCost
        let threeItems = twoItems + thirdChoiceCost
        let fourItems = threeItems + fourthChoiceCost
        if totalMoney >= fourItems {
            check += "You can purchase all four items\n"
        }
        else if totalMoney >= threeItems {
            check += "You can purchase your top three items\n"
        }
        else if totalMoney >= twoItems {
            check += "You can purchase your top two items\n"
        }
        else if totalMoney >= firstChoiceCost {
            check += "You can only purchase your top item\n"
        }
        else {
            check += "You cannot purchase any of your items\n"
        }
        if check == answer {
            stretch4Check = "Correct"
        }
    }
    
    func checkStretch5(answer: String) {
        let totalMoney = randomMoney
        var check = ""
        stretch5Check = "Incorrect"
        let twoItems = firstChoiceCost + secondChoiceCost
        let threeItems = twoItems + thirdChoiceCost
        let fourItems = threeItems + fourthChoiceCost
        if totalMoney >= fourItems {
            check += "You can purchase all four items\n"
            check += "You have spent $\(fourItems) and have $\(totalMoney - fourItems) remaining\n"
        }
        else if totalMoney >= threeItems {
            check += "You can purchase your top three items\n"
            check += "You have spent $\(threeItems) and have $\(totalMoney - threeItems) remaining\n"
        }
        else if totalMoney >= twoItems {
            check += "You can purchase your top two items\n"
            check += "You have spent $\(twoItems) and have $\(totalMoney - twoItems) remaining\n"
        }
        else if totalMoney >= firstChoiceCost {
            check += "You can only purchase your top item\n"
            check += "You have spent $\(firstChoiceCost) and have $\(totalMoney - firstChoiceCost) remaining\n"
            
        }
        else {
            check += "You cannot purchase any of your items\n"
            check += "You have spent $0 and have $\(totalMoney) remaining\n"
        }
        if check == answer {
            stretch5Check = "Correct"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ClothingItem {
    let id = UUID()
    let description: String
    let price: Int
}
