import UIKit

func kisiTanıma1 (ad: String){

    if ad == ("Emirhan") {
        print("Merhaba Emirhan")
    }
    else{
        print("Tanınmayan kişi")
    }
}

kisiTanıma1(ad: "Emirhan")


func kisiTanıma2 (ad: String){

    guard ad == "Emirhan" else {
        print("Tanınmayan Kişi")
        return
    }
    print("MERHABA EMİRHAN")
}

kisiTanıma2(ad: "Emirhan")
