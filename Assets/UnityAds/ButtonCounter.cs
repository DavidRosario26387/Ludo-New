using UnityEngine;
using UnityEngine.UI;
using TMPro; // Import the TextMeshPro namespace.

public class ButtonCounter : MonoBehaviour
{
    [SerializeField] private Button button;
    [SerializeField] private GameObject panel;
    [SerializeField] private GameObject rewardpanel;
    [SerializeField] private TextMeshProUGUI countText; // Serialize a reference to the TextMeshProUGUI component.
    private CoinBalanceUpdater coinUpdater;
    public int buttonPressCount = 0;
    public int userID;

    private void Start()
    {
        // Ensure the button is interactable initially.
        button.interactable = true;
        UpdateCountText();
         coinUpdater = GetComponent<CoinBalanceUpdater>();
  
    }

    public void OnButtonClick()
    {
        if (buttonPressCount < 1) 
        {
            buttonPressCount++;
        }
        else
        {
            buttonPressCount = 0;
            button.interactable = false;
            panel.SetActive(false);
             Debug.Log("Reward panel should be activated here.");
            rewardpanel.SetActive(true);
            coinUpdater.UpdateCoinBalance(userID,3);
            Debug.Log("3 coins updated");
        }
        UpdateCountText();
    }
    

    private void UpdateCountText()
    {
        if (countText != null)
        {
            countText.text = (2-buttonPressCount).ToString();
        }
    }
}
