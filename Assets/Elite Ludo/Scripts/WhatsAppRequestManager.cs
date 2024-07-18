using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;
using TMPro;

public class WhatsappRequestManager : MonoBehaviour
{
    public string UPI_ID;
    public Sprite QRCodeImage;
    public Text addMoneyText;
    [SerializeField] private TextMeshProUGUI UPI_IDText;
    [SerializeField] private UnityEngine.UI.Image QRCode;
    [SerializeField] private InputField UTRNumber;

    private void Start()
    {
        UPI_IDText.text = UPI_ID;
        QRCode.sprite = QRCodeImage;
    }

    public void SubmitButton()
    {
        string message = $"Hi, I have recently recharged my account with {PlayerPrefs.GetInt("CoinsAmount")} coins. Please verify my purchase using the UTR reference number: {UTRNumber.text}. Name: {PlayerPrefs.GetString("g_name", "Jhon")}, Email: {PlayerPrefs.GetString("g_email", "")}, PlayerID: {PlayerPrefs.GetString("PID")}. Thank you.";
        string url = "https://api.whatsapp.com/send?phone=919091156095&text=" + UnityWebRequest.EscapeURL(message);
        Application.OpenURL(url);
        UTRNumber.text = "";
    }

    public void UPICopyButton() 
    {
        GUIUtility.systemCopyBuffer = UPI_IDText.text;
    }
}
