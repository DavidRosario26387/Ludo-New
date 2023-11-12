using UnityEngine;
using UnityEngine.UI;
using TMPro; // Import the TextMeshPro namespace.
using System.Collections;
using System.Collections.Generic;

public class opt_panel : MonoBehaviour
{
    [SerializeField] private Button button;
    [SerializeField] private GameObject trans_panel;
    [SerializeField] private GameObject rs_3;
    [SerializeField] private GameObject rs_3_used;
    public Progress_Bar pb;
    private timer timerScript;

    private void Start()
    {
        pb = GetComponent<Progress_Bar>();
        timerScript = GetComponent<timer>();
    }

    public void OnButtonClick()
    {
        trans_panel.SetActive(true);
        rs_3_used.SetActive(true);
        rs_3.SetActive(false);
        pb.AnimateBar();
        timerScript.StartCountdown();
    }
}
