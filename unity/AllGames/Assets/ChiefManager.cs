using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChiefManager : MonoBehaviour
{
    public void Start() {
        UnityMessageManager.Instance.SendMessageToFlutter("ChiefManagerRunning");
    }

    public void LaunchGame(String message)
    {
        float gameCode = float.Parse(message);
        if (gameCode == 1)
        {
            SceneManager.LoadScene("BlueScene", LoadSceneMode.Single);
        }
        else if (gameCode == 2)
        {
            SceneManager.LoadScene("RedScene", LoadSceneMode.Single);
        }
    }
}
