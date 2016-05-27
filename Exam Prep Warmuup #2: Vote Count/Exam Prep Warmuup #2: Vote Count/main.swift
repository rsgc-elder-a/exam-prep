//
//  main.swift
//  Exam Prep Warmuup #2: Vote Count
//
//  Created by Andrew Elder on 2016-05-27.
//  Copyright © 2016 Andrew Elder. All rights reserved.
//

import Foundation

var vote = 0
var goodVote = false

repeat{
print("How many votes?", terminator:"")
if let input = (readLine(stripNewline: true)){
    if let inputAsInt = Int(input){
        vote = inputAsInt
        goodVote = true
    }
}

}while goodVote == false



var AB = ""
if let input = readLine(stripNewline: true){
    AB = input
}





let voteN = vote
let inputS = AB

var Acount = 0
var Bcount = 0
var countV = 0
var error = true
for charicter in inputS.characters{
    countV += 1
    if("A" == charicter){
        Acount += 1
    } else if("B" == charicter){
        Bcount += 1
    } else{
        print("Error")
        error = false
        break
    }
}
if(error){
    if(voteN != countV){
        print("Error")
        
    } else {
        if(Acount == Bcount){
            print("Tie")
        } else if (Acount > Bcount){
            print("A")
        } else {
            print("B")
        }
    }
}