using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;

public class CoinBalanceUpdater : MonoBehaviour
{
    [SerializeField] public string phpEndpointURL = "https://yourwebsite.com/update_coin_balance.php";
    [SerializeField] int userID;
    [SerializeField] int rewardAmount;

    [System.Serializable]
    public class CoinUpdateData
    {
        public int userID;
        public int rewardAmount;
    }

    public void UpdateCoinBalance(int userID, int rewardAmount)
    {
        StartCoroutine(SendRequest(userID, rewardAmount));
    }

    private IEnumerator SendRequest(int userID, int rewardAmount)
    {
        CoinUpdateData coinUpdateData = new CoinUpdateData
        {
            userID = userID,
            rewardAmount = rewardAmount
        };

        // Convert the data to JSON
        string jsonData = JsonUtility.ToJson(coinUpdateData);

        // Create a UnityWebRequest to send the data to the PHP endpoint
        UnityWebRequest www = UnityWebRequest.PostWwwForm(phpEndpointURL, "POST");
        www.SetRequestHeader("Content-Type", "application/json");
        www.uploadHandler = new UploadHandlerRaw(System.Text.Encoding.UTF8.GetBytes(jsonData));
        www.downloadHandler = new DownloadHandlerBuffer();

        // Send the request and wait for the response
        yield return www.SendWebRequest();

        if (www.isNetworkError || www.isHttpError)
        {
            Debug.LogError("Error: " + www.error);
        }
        else
        {
            // Request was successful, handle the response here (e.g., show a success message)
            Debug.Log("Response: " + www.downloadHandler.text);
        }
    }
}
