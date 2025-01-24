using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using System;
//using Garlic.Plugins.Webview;
//using Garlic.Plugins.Webview.Utils;
using UnityEngine.Networking;

using System.Text;
//using paytm;
using AssemblyCSharp;


public class BuyItemControl : MonoBehaviour
{


    public string amt = "";

    public Text AmountShow,CoinCount;

    private GameObject requestWindow;
    public void SetBuyData(string amount)
    {
        amt = amount;
        CoinCount.text = amt;
        AmountShow.text = " ₹ " + amt ;
    }


    public void buyItem()
    {
        PlayerPrefs.SetInt("CoinsAmount", int.Parse(amt));
        WhatsappRequestManager WhatsApp = FindAnyObjectByType<WhatsappRequestManager>();
        WhatsApp.addMoneyText.text = $"Add {amt} Coins to Your Account";
        WhatsApp.transform.GetChild(0).gameObject.SetActive(true);
    //FindObjectOfType<WebView>().    OnOpenWebView(amt);
    }
 

}
