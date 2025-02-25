﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using SimpleJSON;
using UnityEngine.Networking;
using AssemblyCSharp;

public class GameFinishWindowController : MonoBehaviour
{

    public GameObject Window;
    public GameObject[] AvatarsMain;
    public GameObject[] AvatarsImage;
    public GameObject[] Names;
    public GameObject[] Backgrounds;
    public GameObject[] PrizeMainObjects;
    public GameObject[] prizeText;
    public GameObject[] placeIndicators;
    // Use this for initialization
    void Start()
    {
        for (int i = 0; i < AvatarsMain.Length; i++)
        {
            AvatarsMain[i].SetActive(false);
        }

    }

    public void showWindow(List<PlayerObject> playersFinished, List<PlayerObject> otherPlayers, int firstPlacePrize, int secondPlacePrize, List<PlayerObject> playerObjects)
    {
        if (secondPlacePrize == 0)
        {
            PrizeMainObjects[1].SetActive(false);
        }

        prizeText[0].GetComponent<Text>().text = firstPlacePrize.ToString();
        prizeText[1].GetComponent<Text>().text = secondPlacePrize.ToString();

        Window.SetActive(true);
        for (int i = 0; i < playersFinished.Count; i++)
        {
            AvatarsMain[i].SetActive(true);
            AvatarsImage[i].GetComponent<Image>().sprite = playersFinished[i].avatar;
            Names[i].GetComponent<Text>().text = playersFinished[i].name;
            if (playersFinished[i].id.Equals(PhotonNetwork.player.NickName.Split('|')[1]))
            {
                Backgrounds[i].SetActive(true);
            }
        }

        int counter = 0;
        for (int i = playersFinished.Count; i < playersFinished.Count + otherPlayers.Count; i++)
        {
            if (i == 1)
            {
                PrizeMainObjects[1].SetActive(false);
            }
            AvatarsMain[i].SetActive(true);
            AvatarsImage[i].GetComponent<Image>().sprite = otherPlayers[counter].avatar;
            Names[i].GetComponent<Text>().text = otherPlayers[counter].name;
            if (otherPlayers[counter].id.Equals(PhotonNetwork.player.NickName.Split('|')[1]))
            {
                Backgrounds[i].SetActive(true);
            }
            if (otherPlayers.Count > 1)
                placeIndicators[i].SetActive(false);
            counter++;
        }
        status = "win";
        if (Names[0].GetComponent<Text>().text != GameManager.Instance.nameMy)
        {
            PlayerPrefs.SetInt("WINAMT",0); status = "loss";
        }
        if(!GameManager.Instance.Historycalled)
        StartCoroutine(History());

        //InitMenuScript.inst.AddWinCoins(PlayerPrefs.GetInt("WINAMT") - PlayerPrefs.GetInt("EN"));
    }
    string status = "";
    public IEnumerator History()
    {

        Debug.Log("$$$$$$$$$$$$$$$ this is history $$$$$$$$$$$$$$$$$$$$$$$$$$");
        GameManager.Instance.Historycalled = true;
        string seat = "";
        if (GameManager.Instance.type == MyGameType.TwoPlayer)
            seat = "2";
        if (GameManager.Instance.type == MyGameType.FourPlayer)
            seat = "4";
        WWWForm form = new WWWForm();
        form.AddField("playerid", PlayerPrefs.GetString("PID", ""));
        form.AddField("status", status);
        form.AddField("bid_amount", PlayerPrefs.GetInt("EN"));
        form.AddField("Win_amount", PlayerPrefs.GetInt("WINAMT") );
        form.AddField("loss_amount", PlayerPrefs.GetInt("EN"));
        form.AddField("seat_limit", seat);

        form.AddField("oppo1", GameManager.Instance.opponentsNames[0].ToString());
        if(GameManager.Instance.opponentsNames[1] != null)
        form.AddField("oppo2", GameManager.Instance.opponentsNames[1].ToString());
        if (GameManager.Instance.opponentsNames[2] != null)
            form.AddField("oppo3", GameManager.Instance.opponentsNames[2].ToString());
       

        string url = StaticStrings.baseURL + "api/player/playerhistory";  // ye api hai

        using (UnityWebRequest handshake = UnityWebRequest.Post(url, form))
        {
            yield return handshake.SendWebRequest();


            if (handshake.isHttpError || handshake.isNetworkError || handshake.isNetworkError)
            {
                Debug.Log(handshake.error.ToString());
            }

            else
            {

            }
        }
    }
}
