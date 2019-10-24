//
//  WebTools.swift
//  ScrapWeb
//
//  Created by Antonio on 24/10/2019.
//  Copyright © 2019 Antonio. All rights reserved.
//

import Foundation



func obtainListOfStrings(of web:String ) -> [String]? {
    
    let URL_ = URL(string: web );
           
           let p : Int ;
           
    var htmlSource : String = ""
           
           
           // Try downloading it
           do {
            htmlSource = try String(contentsOf: URL_! , encoding: String.Encoding.ascii)
               
               
               
               print(htmlSource);
               //print(withoutAngles(str: htmlSource));
               
               let g : Int;
           }
           catch let error as NSError {
               print("Ooops! Something went wrong: \(error)");
            return nil
           }
           
           let wit = withoutAngles(str: htmlSource)
           
           return wit
    
    
    
    
    
}


func withoutAngles(str :String) -> [String]? {
       
       let arr = Array(str);
       
       let leng : Int = arr.count;
       
       var into : Bool = true; //estamos dentro de los angles
       
       //var arrInto = [Character]();
       
       var arrToRet = [String]()
       
       var arrInto :String = ""
       
       
       for  i in 0..<leng  {
           
           _ = arr[i]
           
           
           
           if (arr[i] == "<") {into = false;
               if ((arrInto.count > 0) && (arrInto != "\n") ){arrToRet += [arrInto];}
               arrInto = "";
               
           }
           
           if ( arr[i] == ">") {into = true; continue ; }
           
           
           if (into) {arrInto.append(String(arr[i]))}
           
           
           
           
           
       }
       
       //if ( arrInto.count == 0) {return nil}
       
       //let strToRet = String(arrInto);
       
       //return strToRet;
       
       return arrToRet
       
       
   }
