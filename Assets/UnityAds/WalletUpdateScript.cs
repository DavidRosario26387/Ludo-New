using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.Networking;

public class WalletUpdateScript : MonoBehaviour
{
    // Replace with your server's URL
    [SerializeField] private string serverUrl;
    [SerializeField] private string playerId;

    private void Start()
    {
       
    }

    public void UpdateWallet(int coins)
    {
        StartCoroutine(SendWalletUpdateRequest(playerId, coins));
    }

    IEnumerator SendWalletUpdateRequest(string playerId, int coins)
    {
        // Create a form to send data
        WWWForm form = new WWWForm();
        form.AddField("playerid", playerId);
        form.AddField("coins", coins);

        // Create a UnityWebRequest and send the form data to the backend
        using (UnityWebRequest www = UnityWebRequest.Post(serverUrl, form))
        {
            yield return www.SendWebRequest();

            // Check for errors
            if (www.result != UnityWebRequest.Result.Success)
            {
                Debug.LogError("Wallet update request failed: " + www.error);
            }
            else
            {
                Debug.Log("Wallet updated successfully");
            }
        }
    }
}
