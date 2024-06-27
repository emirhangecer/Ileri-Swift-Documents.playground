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

//Hata Ayıklama

// 1. Compile Error : Editör hataları
// 2. Runtime Error : Exception : Çalışma sırasında oluşan hatalar

enum Hatalar : Error {
case SıfıraBolunmeHatasi
}

func bolme (sayi1: Int, sayi2 : Int) throws -> Int {
    
    if sayi2 == 0 {
        throw Hatalar.SıfıraBolunmeHatasi
    }
    return sayi1 / sayi2
}

do {
     let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
} catch Hatalar.SıfıraBolunmeHatasi {
    print("Sayı sıfıra bölünemez")
}

let sonuc1 = try? bolme(sayi1: 10, sayi2: 0) //Eğer hata olursa sonuc nill olur

if let temp = sonuc1 {
    print(temp)
} else {
    print("Sayı Sıfıra Bölünemez")
}
