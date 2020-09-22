//
//  ViewController.swift
//  hugoCharles
//
//  Created by Hugo on 22/04/2017.
//  Copyright © 2017 Hugo. All rights reserved.
//

/*import UIKit



var notchanged = true
// si la monnaie apparait ou pas

var bitcoinShow = true
var ethereumShow = true
var steemitShow = true
var litecoinShow = true
var arraydesvaleurs = [bitcoinShow, ethereumShow, steemitShow, litecoinShow]
let countValeurs = arraydesvaleurs.count

// si le nombre apparait ou pas
var numberBShow = true
var numberEShow = true
var numberSShow = true
var numberLShow = true

// nombre assigné aux crypto currencies
var bNumber: Double = 1.000
var eNumber: Double = 1.000
var sNumber: Double = 1.000
var lNumber: Double = 1.000

// euro ou dollars
var dollars = true
var euro = false

//
var curren: Int = 0

var bitcoinShowDefault = UserDefaults.standard
var etherShowDefault = UserDefaults.standard
var steemitShowDefault = UserDefaults.standard
var litecoinShowDefault = UserDefaults.standard

var currencyDefault = UserDefaults.standard

var bNumberDefault = UserDefaults.standard
var eNumberDefault = UserDefaults.standard
var sNumberDefault = UserDefaults.standard
var lNumberDefault = UserDefaults.standard

var currencyBitcoinDefault = UserDefaults.standard
var currencyEthDefault = UserDefaults.standard
var currencyLiteDefault = UserDefaults.standard
var currencySteemDefault = UserDefaults.standard

var augmenteB = 0.0
var augmenteE = 0.0
var augmenteS = 0.0
var augmenteL = 0.0

var Buse = 0.0
var Euse = 0.0
var Suse = 0.0
var Luse = 0.0

class Settings: UIViewController {
    @IBAction func GOBACK(_ sender: Any) {
        lucky()
        print ("bNumber Update Settings \(bNumber)" )
        Update_Tout()
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var Button: UIButton!
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Button.layer.cornerRadius = Button.frame.width / 2
        
        currency.isHidden = false
        
        
        bitcoinShow = bitcoinShowDefault.bool(forKey: "BSD")
        if bitcoinShow == true
        {
            bitcoin.isOn = true
        }
        if bitcoinShow == false
        {
            bitcoin.isOn = false
        }
        
        ethereumShow = etherShowDefault.bool(forKey: "ESD")
        if ethereumShow == true
        {
            ethereum.isOn = true
        }
        if ethereumShow == false
        {
            ethereum.isOn = false
        }
        
        steemitShow = steemitShowDefault.bool(forKey: "SSD")
        if steemitShow == true
        {
            steemit.isOn = true
        }
        if steemitShow == false
        {
            steemit.isOn = false
        }
        
        litecoinShow = litecoinShowDefault.bool(forKey: "LSD")
        if litecoinShow == true
        {
            litecoin.isOn = true
        }
        if litecoinShow == false
        {
            litecoin.isOn = false
        }
        
        curren = currencyDefault.integer(forKey: "CS")
        if curren == 1
        {
            currency.selectedSegmentIndex = 1
            dollars = false
            euro = true
        }
        else
        {
            currency.selectedSegmentIndex = curren
            
        }
        
        bNumber = bNumberDefault.double(forKey: "BN")
        if bNumber == 0
        {
            numberB.text = "1.000"
            bNumber = 1
        }
        else
        {
            numberB.text = String(bNumber)
        }
        
        eNumber = eNumberDefault.double(forKey: "EN")
        if eNumber == 0
        {
            numberE.text = "1.000"
            eNumber = 1
        }
        else
        {
            numberE.text = String(eNumber)
        }
        
        sNumber = sNumberDefault.double(forKey: "SN")
        if sNumber == 0
        {
            numberS.text = "1.000"
            sNumber = 1
        }
        else
        {
            numberS.text = String(sNumber)
        }
        
        lNumber = lNumberDefault.double(forKey: "LN")
        if lNumber == 0
        {
            numberL.text = "1.000"
            lNumber = 1
        }
        else
        {
            numberL.text = String(lNumber)
        }
        
        
        
        
        
        
        
        numberB.keyboardType = UIKeyboardType.decimalPad
        numberE.keyboardType = UIKeyboardType.decimalPad
        numberS.keyboardType = UIKeyboardType.decimalPad
        numberL.keyboardType = UIKeyboardType.decimalPad
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(Change_switch), userInfo: nil, repeats: true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func lucky()
    {

        if bitcoin.isOn == true
        {
            bitcoinShow = true
            numberBShow = true
            numberB.isHidden = false
            if numberB.text == nil || Double(numberB.text!) == nil {
                bNumber = 1.000
                numberB.text = nil
            }
            else
            {
                bNumber = Double(numberB.text!)!
            }
            
        }
        else
        {
            bitcoinShow = false
            numberBShow = false
            numberB.isHidden = true
            
        }
        if ethereum.isOn == true
        {
            ethereumShow = true
            numberEShow = true
            numberE.isHidden = false
            if numberE.text == nil || Double(numberE.text!) == nil
            {
                eNumber = 1.000
                numberE.text = nil
            }
            else
            {
                eNumber = Double(numberE.text!)!
            }
            
        }
        else
        {
            ethereumShow = false
            numberEShow = false
            numberE.isHidden = true
        }
        if steemit.isOn == true
        {
            steemitShow = true
            numberSShow = true
            numberS.isHidden = false
            if numberS.text == nil || Double(numberS.text!) == nil
            {
                sNumber = 1.000
                numberS.text = nil
            }
            else
            {
                sNumber = Double(numberS.text!)!
            }
            
        }
        else
        {
            steemitShow = false
            numberSShow = false
            numberS.isHidden = true
        }
        if litecoin.isOn == true
        {
            litecoinShow = true
            numberLShow = true
            numberL.isHidden = false
            if numberL.text == nil || Double(numberL.text!) == nil
            {
                lNumber = 1.000
                numberL.text = nil
            }
            else
            {
                lNumber = Double(numberL.text!)!
            }
            
        }
        else
        {
            litecoinShow = false
            numberLShow = false
            numberL.isHidden = true
        }
        
        switch currency.selectedSegmentIndex
        {
        case 0:
            dollars = true
            euro = false
        case 1:
            dollars = false
            euro = true
        default:
            break;
        }
        
        if currency.selectedSegmentIndex != curren{
            v1.augmente.text = "0.0"
            v2.augmente.text = "0.0"
            v3.augmente.text = "0.0"
            v4.augmente.text = "0.0"
            notchanged = false
        }
        
        arraydesvaleurs = [bitcoinShow, ethereumShow, steemitShow, litecoinShow]
        
        
        curren = currency.selectedSegmentIndex
        
        
        bitcoinShowDefault.set(bitcoinShow, forKey: "BSD")
        bitcoinShowDefault.synchronize()
        etherShowDefault.set(ethereumShow, forKey: "ESD")
        etherShowDefault.synchronize()
        steemitShowDefault.set(steemitShow, forKey: "SSD")
        steemitShowDefault.synchronize()
        litecoinShowDefault.set(litecoinShow, forKey: "LSD")
        litecoinShowDefault.synchronize()
        
        currencyDefault.set(curren, forKey: "CS")
        currencyDefault.synchronize()
        
        bNumberDefault.set(bNumber, forKey: "BN")
        bNumberDefault.synchronize()
        eNumberDefault.set(eNumber, forKey: "EN")
        eNumberDefault.synchronize()
        sNumberDefault.set(sNumber, forKey: "SN")
        sNumberDefault.synchronize()
        lNumberDefault.set(lNumber, forKey: "LN")
        lNumberDefault.synchronize()
        
        /*if dollars == false{
            currencyBitcoinDefault.set(currencyBitcoin / courseuro, forKey: "currencyB")
            currencyBitcoinDefault.synchronize()
            currencyEthDefault.set(currencyEth / courseuro, forKey: "currencyE")
            currencyEthDefault.synchronize()
            currencySteemDefault.set(currencySteem / courseuro, forKey: "currencyS")
            currencySteemDefault.synchronize()
            currencyLiteDefault.set(currencyLite / courseuro, forKey: "currencyL")
            currencyLiteDefault.synchronize()
        }*/
        //else{
        currencyBitcoinDefault.set(currencyBitcoin, forKey: "currencyB")
        currencyBitcoinDefault.synchronize()
        currencyEthDefault.set(currencyEth, forKey: "currencyE")
        currencyEthDefault.synchronize()
        currencySteemDefault.set(currencySteem, forKey: "currencyS")
        currencySteemDefault.synchronize()
        currencyLiteDefault.set(currencyLite, forKey: "currencyL")
        currencyLiteDefault.synchronize()
        print(currencyBitcoin)
       // }
                
        
    }
    
    
    @IBOutlet weak var bitcoin: UISwitch!
    @IBOutlet weak var ethereum: UISwitch!
    @IBOutlet weak var steemit: UISwitch!
    @IBOutlet weak var litecoin: UISwitch!
    @IBOutlet weak var currency: UISegmentedControl!
    @IBOutlet weak var numberB: UITextField!
    @IBOutlet weak var numberE: UITextField!
    @IBOutlet weak var numberS: UITextField!
    @IBOutlet weak var numberL: UITextField!
    
   
    
    func Change_switch() {
        if litecoin.isOn == false && ethereum.isOn == false && steemit.isOn == false
        {
            bitcoin.isOn = true
        }
        
        
    }
    
    
    
    
    
}
 */

