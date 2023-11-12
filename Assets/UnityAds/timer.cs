using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class timer : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI timerText;
    [SerializeField] float remainingTime;
    [SerializeField] private GameObject rs_3;
    [SerializeField] private GameObject rs_3_used;
    private opt_panel optPanelScript;
    [SerializeField] private GameObject button;

    public void StartCountdown()
    {
        remainingTime = 10800;
        StartCoroutine(CountdownCoroutine());
        optPanelScript = GetComponent<opt_panel>();
    }
   
    private IEnumerator CountdownCoroutine()
    {
        while (remainingTime > 0)
        {
           
        remainingTime -= Time.deltaTime;
        int hours = Mathf.FloorToInt(remainingTime / 3600);
        int minutes = Mathf.FloorToInt((remainingTime % 3600) / 60);
        int seconds = Mathf.FloorToInt(remainingTime % 60);
        timerText.text = string.Format("Time Left:\n{0:00}:{1:00}:{2:00}", hours, minutes, seconds);
            yield return null;
        }
        if (remainingTime <= 0)
        {
            timerText.color = Color.green;
            rs_3_used.SetActive(false);
            rs_3.SetActive(true);
            button.SetActive(true);
  
        }
    }
}


    // Update is called once per frame
//     void Update()
//     {
//         if (remainingTime > 0)
//         {
//             remainingTime -= Time.deltaTime;
//         }
//         else if (remainingTime < 0){
//         remainingTime = 0;
//         timerText.color = Color.green;
//         rs_3_used.SetActive(false);
//         rs_3.SetActive(true);

//         }
//         int minutes = Mathf.FloorToInt(remainingTime / 60);
//         int seconds = Mathf.FloorToInt(remainingTime % 60);
//         timerText.text = string.Format("Time Left:\n{0:00}:{1:00}", minutes, seconds);
// }