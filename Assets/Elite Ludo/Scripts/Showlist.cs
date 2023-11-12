using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using AssemblyCSharp;
using UnityEngine.UI;

public class Showlist : MonoBehaviour
{
    public Transform Holder;
    public GameObject Table;
    public Text Title;
    int head = 0;
    private void OnEnable()
    {


        SetTitle();

        int payoutCommision = 100 - (int)PlayerPrefs.GetFloat("Comm");
        for (int p = 0; p < Holder.childCount; p++)
        {
            Destroy(Holder.GetChild(p).gameObject);
        }



        for (int i = 0; i < StaticStrings.bidValues.Length; i++)
        {
        GameObject Tab =     Instantiate(Table,Holder);
            Tab.SetActive(true); int win = 0;
            if (head == 1)
           win = 2 * (payoutCommision * StaticStrings.bidValues[i] / 100); 
            else
                 win = 4 * (payoutCommision * StaticStrings.bidValues[i] / 100); 

            Tab.GetComponent<TableData>().SetData(StaticStrings.bidValues[i],win,head);
        }
    }

    private void SetTitle()
    {

        switch (GameManager.Instance.type)
        {
            case MyGameType.TwoPlayer:
                Title.GetComponent<Text>().text = "Two Players"; head = 1;
                
                break;
            case MyGameType.FourPlayer:
                Title.GetComponent<Text>().text = "Four Players"; head = 2;
                break;
            case MyGameType.Private:
                Title.GetComponent<Text>().text = "Private Room";
                break;
        }
    }

}
