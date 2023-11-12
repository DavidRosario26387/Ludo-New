using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DentedPixel;

public class Progress_Bar : MonoBehaviour
{
    public GameObject bar;
    public int time;
    // Start is called before the first frame update
    void Start()
    {
        time=10800;
        
    }
    void Update()
    {
        
    }
    public void AnimateBar(){
        bar.transform.localScale = new Vector3(0f, 1f, 1f);
         bar.transform.localScale = new Vector3(0f, 1f, 1f);
        LeanTween.scaleX(bar,1,time);
    }
}
