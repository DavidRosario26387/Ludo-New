using UnityEngine;
using UnityEngine.Networking;
using System.Collections;

public class CoinUpdater : MonoBehaviour
{
    private const string apiUrl = "https://your-api-endpoint.com/updatecoin"; // Replace with your API endpoint

    public void UpdateUserCoins(string userId)
    {
        StartCoroutine(SendCoinUpdateRequest(userId));
    }

    private IEnumerator SendCoinUpdateRequest(string userId)
    {
        // Create a JSON object with the data to be sent to the server
        CoinUpdateData updateData = new CoinUpdateData
        {
            UserId = userId,
            CoinChange = 15
        };

        string jsonRequestBody = JsonUtility.ToJson(updateData);

        // Create a UnityWebRequest to send the POST request
        UnityWebRequest request = new UnityWebRequest(apiUrl, "POST");
        byte[] bodyRaw = System.Text.Encoding.UTF8.GetBytes(jsonRequestBody);
        request.uploadHandler = new UploadHandlerRaw(bodyRaw);
        request.downloadHandler = new DownloadHandlerBuffer();
        request.SetRequestHeader("Content-Type", "application/json");

        // Send the request and wait for the response
        yield return request.SendWebRequest();

        if (request.isNetworkError || request.isHttpError)
        {
            Debug.LogError("API request error: " + request.error);
        }
        else
        {
            // Request successful
            Debug.Log("Coin update successful");
        }
    }

    [System.Serializable]
    private class CoinUpdateData
    {
        public string UserId;
        public int CoinChange;
    }
}
