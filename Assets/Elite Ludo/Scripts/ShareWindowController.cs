﻿using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using AssemblyCSharp;
using UnityEngine;
using UnityEngine.UI;

public class ShareWindowController : MonoBehaviour
{

    public GameObject inviteCodeText;
    public Text Subject;
    string subject = "Hey I am playing this awesome new game called Ludo Joker, download and start earning cash by simply playing the game. Join using this code : ";
    string body = "Abb khelo ludo ghar baithe kamawo Paytm cash..Join now with my invite code and get 10Rs bonus cash. Download link :-";
    


    public void OnAndroidTextSharingClick()
    {
        //FindObjectOfType<AudioManager>().Play("Enter");
        StartCoroutine(ShareAndroidText());
    }

    IEnumerator ShareAndroidText()
    {

        body = "Join the Ultimate Ludo King Pro Challenge & Win Unlimited Money Daily!\n🎉 Play now with my exclusive invite code " + PlayerPrefs.GetInt("ReferCode") + " and get a special referral bonus! 💰\nDon't miss out – download the game now: https://spludo.online/\nInvite your friends and let the games begin! 🏆";
        yield return new WaitForEndOfFrame();
        //execute the below lines if being run on a Android device
        //Reference of AndroidJavaClass class for intent
        AndroidJavaClass intentClass = new AndroidJavaClass("android.content.Intent");
        //Reference of AndroidJavaObject class for intent
        AndroidJavaObject intentObject = new AndroidJavaObject("android.content.Intent");
        //call setAction method of the Intent object created
        intentObject.Call<AndroidJavaObject>("setAction", intentClass.GetStatic<string>("ACTION_SEND"));
        //set the type of sharing that is happening
        intentObject.Call<AndroidJavaObject>("setType", "text/plain");
        //add data to be passed to the other activity i.e., the data to be sent
        // intentObject.Call<AndroidJavaObject>("putExtra", intentClass.GetStatic<string>("EXTRA_SUBJECT"), subject);
        intentObject.Call<AndroidJavaObject>("putExtra", intentClass.GetStatic<string>("EXTRA_TITLE"), "Invite Your Friends");
        intentObject.Call<AndroidJavaObject>("putExtra", intentClass.GetStatic<string>("EXTRA_TEXT"), subject+PlayerPrefs.GetString("referral_code"));
        intentObject.Call<AndroidJavaObject>("putExtra", intentClass.GetStatic<string>("EXTRA_TEXT"), body);
        //get the current activity
        AndroidJavaClass unity = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
        AndroidJavaObject currentActivity = unity.GetStatic<AndroidJavaObject>("currentActivity");
        //start the activity by sending the intent data
        AndroidJavaObject jChooser = intentClass.CallStatic<AndroidJavaObject>("createChooser", intentObject, "Share Via");
        currentActivity.Call("startActivity",jChooser);
    }

    // Use this for initialization
    void Start()
    {
        int reff = PlayerPrefs.GetInt("ReferCode");

        int SignupBonus = PlayerPrefs.GetInt("SignupBonus");

        string des = "Invite your friends to download and play SP Ludo and earn bonus coins when they sign up using your invite code. The more friends you invite, the more bonus coins you earn!";
        inviteCodeText.GetComponent<Text>().text = reff.ToString();

       Debug.Log("Here Is full deasc -------"+ des);
        Subject.text = des;
    }

    void Update(){

    }


}
