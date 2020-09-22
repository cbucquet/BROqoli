//
//  ViewController.swift
//  Crypto-Currencies
//
//  Created by bucquet on 4/21/17.
//  Copyright © 2017 bucquet. All rights reserved.
//

import UIKit
import Foundation

var CryptoMarketValuesDol = [String: Double]()
var CryptoMarketValuesEur = [String: Double]()

var Bitcoin = Crypto(name: "bitcoin", numberOfShowing: 0, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Bitcoin")

var Ethereum = Crypto(name: "ethereum", numberOfShowing: 1, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Ethereum")

var Steemit = Crypto(name: "steem", numberOfShowing: 2, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Steemit")

var Litecoin = Crypto(name: "litecoin", numberOfShowing: 3,  show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Litecoin")

var Ripple = Crypto(name: "ripple", numberOfShowing: 4, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Ripple")

var EthereumClassic = Crypto(name: "ethereum-classic", numberOfShowing: 5, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Ethereum Classic")

var Dash = Crypto(name: "dash", numberOfShowing: 6, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Dash")

var Monero = Crypto(name: "monero", numberOfShowing: 7, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Monero")

var Bitshares = Crypto(name: "bitshares", numberOfShowing: 8, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Bitshares")

var NEM = Crypto(name: "nem", numberOfShowing: 9, show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "NEM")

var Stratis = Crypto(name: "stratis", numberOfShowing: 10,  show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Stratis")

var BitcoinCash = Crypto(name: "bitcoin-cash", numberOfShowing: 11,  show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "Bitcoin Cash")

var NEO = Crypto(name: "neo", numberOfShowing: 12,  show: true, userMoney: 1.000, marketValue: 1.000, augmente: 0.0, previous : 1.0, marketValueEuro: 1.0, realname: "NEO")

var allthecryptos = [Crypto]()

var LastAllTheCryptos = [Crypto]()

struct page {
    var marketvalue = UILabel()
    var augmente = UILabel()
    var currency = UILabel()
    var wallet = UILabel()
}
var notchanged = true
var dollars = true
let dollarsdefaults = UserDefaults.standard


var ArrayNames = ["Bitcoin", "Ethereum", "Steemit", "Litecoin", "Ripple", "Ethereum Classic", "Dash", "Monero", "Bitshares", "NEM", "Stratis", "Bitcoin Cash", "NEO"]

var curren: Int = 0

var NotFirstTime = false
var NotFirstDol = false
var currencyDefault = UserDefaults.standard

var Buse = 0.0
var Euse = 0.0
var Suse = 0.0
var Luse = 0.0

var Muse = 0.0
var Ruse = 0.0
var Duse = 0.0
var Stratuse = 0.0



let vsettings : RealSettings = RealSettings(nibName: "RealSettings", bundle: nil)
//var vsettings = NewSettings()

let vBitcoin : bitcoinViewController = bitcoinViewController(nibName: "bitcoinViewController", bundle: nil)
let vEthereum : ethereum = ethereum(nibName: "ethereum", bundle: nil)
let vSteemit : ViewSteemit = ViewSteemit(nibName: "ViewSteemit", bundle: nil)
let vLitecoin : ViewLitecoin = ViewLitecoin(nibName: "ViewLitecoin", bundle: nil)
let vRipple : ViewRipple = ViewRipple(nibName: "ViewRipple", bundle: nil)
let vEthereumClassic : ethereumclassic = ethereumclassic(nibName: "ethereumclassic", bundle: nil)
let vDash : ViewDash = ViewDash(nibName: "ViewDash", bundle: nil)
let vMonero : ViewMonero = ViewMonero(nibName: "ViewMonero", bundle: nil)
let vBitshares : ViewBitShares = ViewBitShares(nibName: "ViewBitShares", bundle: nil)
let vNEM : nem = nem(nibName: "nem", bundle: nil)
let vStratis : ViewStratis = ViewStratis(nibName: "ViewStratis", bundle: nil)
let vBitcoinCash : ViewBitcoinCash = ViewBitcoinCash(nibName: "ViewBitcoinCash", bundle: nil)
let vNEO : ViewNeo = ViewNeo(nibName: "ViewNeo", bundle: nil)




var arrayV : [UIViewController] = [vBitcoin, vEthereum, vSteemit, vLitecoin, vRipple, vEthereumClassic, vDash, vMonero, vBitshares, vNEM, vStratis, vBitcoinCash, vNEO]
var arrayFrame = [vBitcoinFrame, vEthereumFrame, vSteemitFrame, vLitecoinFrame, vRippleFrame, vEthereumClassicFrame, vDashFrame, vMoneroFrame, vBitsharesFrame, vNEMFrame, vStratisFrame, vBitcoinCashFrame, vNEOFrame]

var arraymarketvalues = [vBitcoin.marketvalue, vEthereum.marketvalue, vSteemit.marketvalue, vLitecoin.marketvalue, vRipple.marketvalue, vEthereumClassic.marketvalue, vDash.marketvalue, vMonero.marketvalue, vBitshares.marketvalue, vNEM.marketvalue, vStratis.marketvalue, vBitcoinCash.marketvalue, vNEO.marketvalue]
var arrayaugmente = [vBitcoin.augmente, vEthereum.augmente, vSteemit.augmente, vLitecoin.augmente, vRipple.augmente, vEthereumClassic.augmente, vDash.augmente, vMonero.augmente, vBitshares.augmente, vNEM.augmente, vStratis.augmente, vBitcoinCash.augmente, vNEO.augmente]
var arraycurrency = [vBitcoin.currency, vEthereum.currency, vSteemit.currency, vLitecoin.currency, vRipple.currency, vEthereumClassic.currency, vDash.currency, vMonero.currency, vBitshares.currency, vNEM.currency, vStratis.currency, vBitcoinCash.currency, vNEO.currency]
var arrayWallet = [vBitcoin.wallet, vEthereum.wallet, vSteemit.wallet, vLitecoin.wallet, vRipple.wallet, vEthereumClassic.wallet, vDash.wallet, vMonero.wallet, vBitshares.wallet, vNEM.wallet, vStratis.wallet, vBitcoinCash.wallet, vNEO.wallet]

//var filterdItemsArray = [String]()
var filterdItemsArray = ["Bitcoin", "Ethereum", "Steemit"]


var vBitcoinFrame : CGRect = CGRect()
var vEthereumFrame : CGRect = CGRect()
var vSteemitFrame : CGRect = CGRect()
var vLitecoinFrame : CGRect = CGRect()
var vRippleFrame : CGRect = CGRect()
var vEthereumClassicFrame : CGRect = CGRect()
var vDashFrame : CGRect = CGRect()
var vMoneroFrame : CGRect = CGRect()
var vBitsharesFrame : CGRect = CGRect()
var vNEMFrame : CGRect = CGRect()
var vStratisFrame : CGRect = CGRect()
var vBitcoinCashFrame : CGRect = CGRect()
var vNEOFrame : CGRect = CGRect()
var vSettingsFrame : CGRect = CGRect()

var BoolCours = true


var courseuro = 1.093

var margins = UILayoutGuide()

class ViewController: UIViewController, UIViewControllerTransitioningDelegate, UIGestureRecognizerDelegate, UIScrollViewDelegate, UITextFieldDelegate {

    //patrick test
    
    //@IBOutlet weak var scrollView: UIScrollView!
    
    
    var price = 0.0
    //var arraySwitches = [vsettings.bitcoin, vsettings.ethereum, vsettings.steemit, vsettings.litecoin, vsettings.ripple, vsettings.EthereumClassic, vsettings.Dash, vsettings.Monero, vsettings.BitShares, vsettings.NEM, vsettings.Stratis]
    //var arrayTextfields = [vsettings.numberB, vsettings.numberE, vsettings.numberS, vsettings.numberL, vsettings.numberR, vsettings.numberEC, vsettings.numberD, vsettings.numberM, vsettings.numberBS, vsettings.numberNEM, vsettings.numberSt]
    
    
    func Update_pages(){
       
        var s = 1
        
        for qwe in 0 ..< allthecryptos.count
        {
            if (allthecryptos[qwe].show == true)
            {
                s = s+1
            }
            
        }
        
        
        
        for v in arrayV {
            
            self.addChildViewController(v)
            
            self.scroll.addSubview(v.view)
            
            
            v.didMove(toParentViewController: self)
        }
        
        for view in arrayV{
            view.view.sizeToFit()
        }
        
        
        
        var nbofthearray = 0
        for _ in arrayFrame{
            arrayFrame[nbofthearray] = arrayV[nbofthearray].view.frame
            arrayFrame[nbofthearray].origin.x = self.view.frame.width * CGFloat((allthecryptos[nbofthearray].numberOfShowing + 1))
            arrayV[nbofthearray].view.frame = arrayFrame[nbofthearray]
            nbofthearray += 1
        }

        
        
        
        var x = 0
        
        for t in 0...allthecryptos.count - 1
        {
            if allthecryptos[t].show == false
            {
                arrayV[t].willMove(toParentViewController: nil)
                //arrayV[t].view.removeFromSuperview()
                //arrayV[t].removeFromParentViewController()
                
                if t + 1 <= allthecryptos.count - 1
                {
                    for a in t+1...allthecryptos.count-1
                    {
                        arrayFrame[a-1] = arrayV[a].view.frame
                        arrayFrame[a-1].origin.x = self.view.frame.width * CGFloat((a-x))
                        arrayV[a].view.frame = arrayFrame[a-1]
                        arrayV[a].view.sizeToFit()
                    }
                }
                
                x = x+1
            }
        }
        
        
        self.scroll.contentSize = CGSize(width: self.view.frame.width * CGFloat(s), height: self.view.frame.height)
        
        
        
        
        
    }
    
    @IBOutlet weak var scroll: UIScrollView!
    
    func callSettings(){
        SettingsUpdate()
    }
    
    var time = Timer()
    

    
    //pour reconnaitre le swipe
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return true
    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                GetMarketValues()
                Update_Cours()
                SettingsUpdate()
                //Thread.sleep(forTimeInterval: 0.05000)
                Update_Valeur()
                Update_pages()
                SaveMyCryptos()
            case UISwipeGestureRecognizerDirection.left:
                GetMarketValues()
                Update_Cours()
                SettingsUpdate()
                //Thread.sleep(forTimeInterval: 0.05000)
                Update_Valeur()
                Update_pages()
                SaveMyCryptos()
            default:
                break
            }
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
       
        //allthecryptos = [Bitcoin, Ethereum, Steemit, Litecoin, Ripple, EthereumClassic, Dash, Monero, Bitshares, NEM, Stratis]
        //LastAllTheCryptos = [Bitcoin, Ethereum, Steemit, Litecoin, Ripple, EthereumClassic, Dash, Monero, Bitshares, NEM, Stratis]
        
        margins = self.view.layoutMarginsGuide
        
        
        //vsettings = (NewSettings as UIStoryboard);.instantiateViewControllerWithIdentifier("NewSettings") as! NewSettings

        self.addChildViewController(vsettings)
        self.scroll.addSubview(vsettings.view)
        vsettings.didMove(toParentViewController: self)
        vsettings.view.frame.size.width = scroll.frame.size.width
        vsettings.view.frame.size.height = scroll.frame.size.height
        //vSettingsFrame = vsettings.view.frame
        //vSettingsFrame.origin.x = 0
        
        for views in arrayV {
            self.addChildViewController(views)
            self.scroll.addSubview((views as AnyObject).view)
            (views as AnyObject).didMove(toParentViewController: self)
            //views.marketvalue.backgroundColor = UIColor.white

        }
        
        var nblol = 0
        for _ in arrayFrame{
            arrayFrame[nblol] = (arrayV[nblol] as AnyObject).view.frame
            arrayFrame[nblol].origin.x = self.view.frame.width * CGFloat((allthecryptos[nblol].numberOfShowing + 1))
            (arrayV[nblol] as AnyObject).view.frame = arrayFrame[nblol]
            nblol += 1
        }

        self.scroll.contentSize = CGSize(width: self.view.frame.width * 12, height: self.view.frame.height)

        scroll.contentOffset.x = arrayFrame[0].origin.x

        arraymarketvalues = [vBitcoin.marketvalue, vEthereum.marketvalue, vSteemit.marketvalue, vLitecoin.marketvalue, vRipple.marketvalue, vEthereumClassic.marketvalue, vDash.marketvalue, vMonero.marketvalue, vBitshares.marketvalue, vNEM.marketvalue, vStratis.marketvalue, vBitcoinCash.marketvalue, vNEO.marketvalue]
        

        

        //pour reconnaitre quand l'utilisateur fait un swipe
        
        Update_Cours()
        Update_Valeur()
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        swipeRight.delegate = self
        swipeLeft.delegate = self
        
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeLeft)
        
        
       

        
        if NotFirstDol == true{
            dollars = dollarsdefaults.bool(forKey: "dollars")
            if dollars == false{
                vsettings.currency.selectedSegmentIndex = 1
            }
        }
        else{
            vsettings.currency.selectedSegmentIndex = 0
        }
        
        
        Update_Cours()
        Update_Valeur()
        Update_pages()
        vsettings.currency.isHidden = false
        
        _ = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(Update), userInfo: nil, repeats: false)
        _ = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(Update), userInfo: nil, repeats: false)
        for index in 0...vsettings.textfields.count - 1{
            vsettings.textfields[index].delegate = self
        }
        vsettings.Search.delegate = self

                
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for text in vsettings.textfields{
            text.resignFirstResponder()
        }
        vsettings.Search.resignFirstResponder()
        vsettings.view.endEditing(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Update_pages()
        //Update()
        if Reachability.isConnectedToNetwork() == true
        {
        }
        else
        {
            let alert = UIAlertController(title: "Error", message: "It looks like you don't have an internet connection, you can still use the app but the data won't get updated.", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { action in
                self.scroll.isHidden = false
                //alert.dismiss(animated: true, completion: nil)
            }
            ))
            
            // show the alert
            
            //scroll.isHidden = true
            self.present(alert, animated: true, completion: nil)

        }

    }
    
    func Update(){
        Update_Tout()
        
    }
    
    func error(){
       
        

    }

    
    
    func SettingsUpdate(){
        
        

        var nbupdate = 0
            
            
        for _ in 1...3{
            if vsettings.switches[nbupdate].isHidden == false {
                if vsettings.switches[nbupdate].isOn == true {

                
                    if let i = allthecryptos.index(where: { $0.realname.replacingOccurrences(of: "-", with: " ") == vsettings.labels[nbupdate].text! }) {
                        allthecryptos[i].show = true

                    }
                   
                        //vsettings.usermoneyText[nbupdate].isHidden = false
                
                    if  vsettings.textfields[nbupdate].text == nil || Double(vsettings.textfields[nbupdate].text!) == nil && Int(vsettings.textfields[nbupdate].text!) == nil || Double(vsettings.textfields[nbupdate].text!) == 0.0 || Double(vsettings.textfields[nbupdate].text!) == 1.000 || vsettings.textfields[nbupdate].text == "1.0"{
                        if let i = allthecryptos.index(where: { $0.realname.replacingOccurrences(of: "-", with: " ") == vsettings.labels[nbupdate].text }) {
                            allthecryptos[i].userMoney = 1.0
                          
                        }
                    
                    
                        vsettings.textfields[nbupdate].text = nil
                    
                    }
                    else{
                        if let i = allthecryptos.index(where: { $0.realname.replacingOccurrences(of: "-", with: " ") == vsettings.labels[nbupdate].text }) {
                            allthecryptos[i].userMoney = Double(vsettings.textfields[nbupdate].text!)!
                        }
                    }
                }
                else{
                    //vsettings.usermoneyText[nbupdate].isHidden = true
                    //allthecryptos[nbupdate].show = false
                    
                    if let i = allthecryptos.index(where: { $0.realname.replacingOccurrences(of: "-", with: " ") == vsettings.labels[nbupdate].text }) {
                        allthecryptos[i].show = false
                        

                    }
                }
            }
            nbupdate += 1
        }
        
        
        
        switch vsettings.currency.selectedSegmentIndex
        {
        case 0:
            dollars = true
        case 1:
            dollars = false
        default:
            break;
        }
        
        if vsettings.currency.selectedSegmentIndex != curren{
            for label in arrayaugmente{
                label?.text = "0.0"
            }
            
            //vBitcoin.augmente.text = "0.0"
            
            notchanged = false
        }
        
      
        
        curren = vsettings.currency.selectedSegmentIndex
        
        
        //Update_pages()
    }
    

    func filterContentForSearchText(searchText: String) {
        
        filterdItemsArray = ArrayNames.filter { item in
            return item.lowercased().contains(searchText.lowercased())
        }
        
        
        
        
        
        var nbfilter = 0
        if filterdItemsArray.count >= 3{
            
            nbfilter = 0
            for _ in 1...3{
                vsettings.textfields[nbfilter].isHidden = false
                vsettings.switches[nbfilter].isHidden = false
                vsettings.labels[nbfilter].isHidden = false
                nbfilter += 1
            }
            
            
            nbfilter = 0
            for _ in 1...3 {
                
                    vsettings.labels[nbfilter].text = filterdItemsArray[nbfilter]
                    for show in allthecryptos {
                        if show.realname.lowercased() == filterdItemsArray[nbfilter].lowercased(){
                            vsettings.switches[nbfilter].isOn = show.show
                            vsettings.textfields[nbfilter].text = String(show.userMoney)
                        }
                    }
                nbfilter += 1
            }
            
            
            
        }
            
            
            
            
        else if filterdItemsArray.count == 2{
            for _ in 1...2{
                vsettings.textfields[nbfilter].isHidden = false
                vsettings.switches[nbfilter].isHidden = false
                vsettings.labels[nbfilter].isHidden = false
                nbfilter += 1
            }
            vsettings.textfields[2].isHidden = true
            vsettings.switches[2].isHidden = true
            vsettings.labels[2].isHidden = true
            

            nbfilter = 0
            for _ in 1...3 {
                
                vsettings.labels[nbfilter].text = filterdItemsArray[nbfilter]
                for show in allthecryptos {
                    if show.realname.lowercased() == filterdItemsArray[nbfilter].lowercased(){
                        vsettings.switches[nbfilter].isOn = show.show
                        vsettings.textfields[nbfilter].text = String(show.userMoney)
                    }
                }
                nbfilter += 1
            }
            nbfilter = 0

            
        }
            
            
            
            
        
        else if filterdItemsArray.count == 1{
            nbfilter = 1
            for _ in 1...2{
                vsettings.textfields[nbfilter].isHidden = true
                vsettings.switches[nbfilter].isHidden = true
                vsettings.labels[nbfilter].isHidden = true
                nbfilter += 1
            }
            vsettings.textfields[0].isHidden = false
            vsettings.switches[0].isHidden = false
            vsettings.labels[0].isHidden = false
            

            nbfilter = 0
            
            for _ in 1...1{
                vsettings.labels[nbfilter].text = filterdItemsArray[nbfilter]
                for show in allthecryptos {
                    if show.realname.lowercased() == filterdItemsArray[nbfilter].lowercased(){
                        vsettings.switches[nbfilter].isOn = show.show
                        let value = show.userMoney.description
                        vsettings.textfields[nbfilter].text! = value
                        //print(show.userMoney.description)
                        //print(value)
                        //print(vsettings.textfields[nbfilter].text!)
                    }
                }
                nbfilter += 1
            }
            
        
            
            
        }
        else{
            vsettings.labels[0].text = "Bitcoin"
            vsettings.switches[nbfilter].isOn = allthecryptos[0].show
            vsettings.textfields[nbfilter].text = String(allthecryptos[0].userMoney)
            
            vsettings.labels[1].text = "No result"

            
            nbfilter = 0
            for _ in 1...1{
                vsettings.textfields[nbfilter].isHidden = false
                vsettings.switches[nbfilter].isHidden = false
                vsettings.labels[nbfilter].isHidden = false
                nbfilter += 1
            }
            vsettings.textfields[1].isHidden = true
            vsettings.switches[1].isHidden = true
            vsettings.labels[1].isHidden = false

            vsettings.textfields[2].isHidden = true
            vsettings.switches[2].isHidden = true
            vsettings.labels[2].isHidden = true
        }

        for index in 0...vsettings.textfields.count - 1{
            if vsettings.textfields[index].text == "1.0"{
                vsettings.textfields[index].text = nil
            }
        }
        SettingsUpdate()
    }
    var settingsPage = false
    

    
    
    
}


func Update_Tout_First() {
    GetMarketValues()
    Update_Cours()
    Update_Valeur()
    SaveMyCryptos()
}

func Update_Tout() {
    GetMarketValues()
    Update_Cours()
    Update_Valeur()
    SaveMyCryptos()
    showNicely()
}

func showNicely() {
    var nbshowNice = 0
    for _ in arraymarketvalues{
        if (arraymarketvalues[nbshowNice]?.text?.characters.count)! > 7{
            let margins2 = arrayV[nbshowNice].view.layoutMarginsGuide
            // Pin the leading edge of myView to the margin's leading edge
            arraymarketvalues[nbshowNice]?.leadingAnchor.constraint(equalTo: margins2.leadingAnchor).isActive = true
            
            // Pin the trailing edge of myView to the margin's trailing edge
            arraymarketvalues[nbshowNice]?.trailingAnchor.constraint(equalTo: margins2.trailingAnchor).isActive = true
            
            arraymarketvalues[nbshowNice]?.layer.masksToBounds = true
            arraymarketvalues[nbshowNice]?.layer.cornerRadius = 10
            
        }
        else{
            arraymarketvalues[nbshowNice]?.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = false
            
            arraymarketvalues[nbshowNice]?.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = false
            arraymarketvalues[nbshowNice]?.layer.masksToBounds = true
            arraymarketvalues[nbshowNice]?.layer.cornerRadius = 10
            

        }
        nbshowNice += 1
    }
}


func Update_Valeur() {
    
    //met a jour les donnees des ecrans par cryptocurrencies : nb de crypto et variation depuis derniere consultation
    
    
    
    arraymarketvalues = [vBitcoin.marketvalue, vEthereum.marketvalue, vSteemit.marketvalue, vLitecoin.marketvalue, vRipple.marketvalue, vEthereumClassic.marketvalue, vDash.marketvalue, vMonero.marketvalue, vBitshares.marketvalue, vNEM.marketvalue, vStratis.marketvalue, vBitcoinCash.marketvalue, vNEO.marketvalue]
    arrayaugmente = [vBitcoin.augmente, vEthereum.augmente, vSteemit.augmente, vLitecoin.augmente, vRipple.augmente, vEthereumClassic.augmente, vDash.augmente, vMonero.augmente, vBitshares.augmente, vNEM.augmente, vStratis.augmente, vBitcoinCash.augmente, vNEO.augmente]
    arraycurrency = [vBitcoin.currency, vEthereum.currency, vSteemit.currency, vLitecoin.currency, vRipple.currency, vEthereumClassic.currency, vDash.currency, vMonero.currency, vBitshares.currency, vNEM.currency, vStratis.currency, vBitcoinCash.currency, vNEO.currency]
    arrayWallet = [vBitcoin.wallet, vEthereum.wallet, vSteemit.wallet, vLitecoin.wallet, vRipple.wallet, vEthereumClassic.wallet, vDash.wallet, vMonero.wallet, vBitshares.wallet, vNEM.wallet, vStratis.wallet, vBitcoinCash.wallet, vNEO.wallet]
    

    
    var usermonnb = 0
    
    for vvv in arrayWallet{
        vvv?.text = String(allthecryptos[usermonnb].userMoney)
        usermonnb += 1
    }
    
    if dollars == true{
        for v in arraycurrency{
            v?.text = "$"
        }
    }
    else {
        for v in arraycurrency{
            v?.text = "€"
        }
    }
    
    var nbvalue = 0
    
    for v in arraymarketvalues{
        
        if dollars == false{
            v?.text = String(round(allthecryptos[nbvalue].marketValueEuro * allthecryptos[nbvalue].userMoney * 100)/100)
        }
        else{
            v?.text = String(round(allthecryptos[nbvalue].marketValue * allthecryptos[nbvalue].userMoney * 100)/100)
        }
        nbvalue += 1
        
    }
    
    var augmentenb = 0
    for v in arrayaugmente{
        //if notchanged == true{
            if dollars == false{
                if round((allthecryptos[augmentenb].marketValueEuro - LastAllTheCryptos[augmentenb].marketValueEuro) * 100) / 100 > 0{
                    let aa = "+ "
                    let bb = String(round(((allthecryptos[augmentenb].marketValueEuro - LastAllTheCryptos[augmentenb].marketValueEuro) * allthecryptos[augmentenb].userMoney) * 100) / 100)
                    let cc = aa + bb
                    v?.text = cc
                }
                else if round((allthecryptos[augmentenb].marketValueEuro - LastAllTheCryptos[augmentenb].marketValueEuro) * 100) / 100 < 0{
                    let aa = ""
                    let bb = String(round(((allthecryptos[augmentenb].marketValueEuro - LastAllTheCryptos[augmentenb].marketValueEuro) * allthecryptos[augmentenb].userMoney) * 100) / 100)
                    let cc = aa + bb
                    v?.text = cc
                }
                else{
                    v?.text = "0.0"
                }
            }
            
            else{
                if round((allthecryptos[augmentenb].marketValue - LastAllTheCryptos[augmentenb].marketValue) * 100) / 100 > 0{
                    let aa = "+ "
                    let bb = String(round(((allthecryptos[augmentenb].marketValue - LastAllTheCryptos[augmentenb].marketValue) * allthecryptos[augmentenb].userMoney) * 100) / 100)
                    let cc = aa + bb
                    v?.text = cc
                }
                else if round((allthecryptos[augmentenb].marketValue - LastAllTheCryptos[augmentenb].marketValue) * 100) / 100 < 0{
                    let aa = ""
                    let bb = String(round(((allthecryptos[augmentenb].marketValue - LastAllTheCryptos[augmentenb].marketValue) * allthecryptos[augmentenb].userMoney) * 100) / 100)
                    let cc = aa + bb
                    v?.text = cc
                }
                else{
                    v?.text = "0.0"
                }

            }
        //}
        
        augmentenb += 1
    }
    
    showNicely()
    
}


func Update_Cours(){
    
    
    /*
    
    let url = URL(string: "https://api.coinmarketcap.com/v1/ticker/?convert=EUR&limit=30")
    let task = URLSession.shared.dataTask(with: url!) {  (data, response, error) in
        if error != nil{
            //ViewController().error()

        }
        else{
            if let content = data {
                do{
                    let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)
                    if let jsondata = myJson as? Array<Any>{
                        
                        var currencynb = 0
                        for _ in arrayV{
                            var firstArray: NSDictionary = jsondata[0] as! NSDictionary
                            var firstArrayreal: NSDictionary = jsondata[0] as! NSDictionary
                            var nbof = 0
                            
                            for _ in jsondata{
                                firstArray = jsondata[nbof] as! NSDictionary
                                if (firstArray["id"] as! NSString) as String == allthecryptos[currencynb].name{
                                    firstArrayreal = jsondata[nbof] as! NSDictionary
                                    
                                }
                                nbof += 1
                            }
                            /*
                            if dollars == false{
                                allthecryptos[currencynb].marketValue = round(((round((firstArrayreal["price_usd"] as! NSString).doubleValue * 100) / 100) / courseuro) * 100) / 100
                            }
                            else{
                                allthecryptos[currencynb].marketValue = round((firstArrayreal["price_usd"] as! NSString).doubleValue * 100) / 100
                            }
                            */
                            allthecryptos[currencynb].marketValue = round((firstArrayreal["price_usd"] as! NSString).doubleValue * 100) / 100
                            allthecryptos[currencynb].marketValueEuro = round((firstArrayreal["price_eur"] as! NSString).doubleValue * 100) / 100
                            
                            
                            currencynb += 1
                        }
                        
                        BoolCours = false
                    }
                    else{
                        //ViewController().error()
                    }
                }
                catch{
                    //ViewController().error()
                }
            }
            else{
                //ViewController().error()
            }
        }
    }
    task.resume()
 
    */
    
    // Test Patrick
    
    if CryptoMarketValuesDol.isEmpty {
    }
    else{
    
        var currencynb = 0
    
        for _ in arrayV{
        
        
            allthecryptos[currencynb].marketValue = CryptoMarketValuesDol[allthecryptos[currencynb].name]!
        
            allthecryptos[currencynb].marketValueEuro = CryptoMarketValuesEur[allthecryptos[currencynb].name]!
        
        
            currencynb += 1
        }
    }

    // fin test Patrick
    
    //Update_Valeur()
    
}

func GetMarketValues(){
    
    //var nbof : Int?

    let url = URL(string: "https://api.coinmarketcap.com/v1/ticker/?convert=EUR&limit=70")
    
        let task = URLSession.shared.dataTask(with: url!) {  (data, response, error) in
            
         DispatchQueue.main.async {
            
            if error != nil{
                //ViewController().error()
            }
            else{
                if let content = data {
                    do{
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)
                        if let jsondata = myJson as? Array<Any>{
                        
                            var firstArray: NSDictionary = jsondata[0] as! NSDictionary
                        
                            var nbof = 0
                            
                            for _ in jsondata{
                                firstArray = jsondata[nbof] as! NSDictionary
                                
                                CryptoMarketValuesDol[(firstArray["id"] as! NSString) as String] = round((firstArray["price_usd"] as! NSString).doubleValue * 100) / 100
                                
                                CryptoMarketValuesEur[(firstArray["id"] as! NSString) as String] = round((firstArray["price_eur"] as! NSString).doubleValue * 100) / 100
                                nbof += 1
                            }
                        }
                        else{
                            //ViewController().error()
                        }
                }
                catch{
                    //ViewController().error()
                }
            }
            else{
                //ViewController().error()
            }
                
            }
                
            }
    }
    
    task.resume()
    
    
    
    

        
}


func SaveMyCryptos() {
    
    let SavedData = NSKeyedArchiver.archivedData(withRootObject: allthecryptos)
    
    
    dollarsdefaults.set(dollars, forKey: "dollars")
    
    let defaults = UserDefaults.standard
    
    defaults.set(SavedData, forKey: "mesCryptos")
    
}

