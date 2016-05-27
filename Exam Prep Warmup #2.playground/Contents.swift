//: Playground - noun: a place where people can play

import Cocoa

let voteN = 8
let inputS = "ABAABABB"

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