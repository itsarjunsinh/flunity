using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChiefManager : MonoBehaviour
{
    public enum Games
    {
        ChiefScene,
        BlueScene,
        RedScene,
        GreenScene,
        PurpleScene,
        BlackScene,
        OrangeScene
    }
    public void Start()
    {
        /*if (Games.ChiefScene == (int)GetCurrentGame())
        UnityMessageManager.Instance.SendMessageToFlutter(
            ((int)GetCurrentGame()).ToString());*/

    }

    public Games GetCurrentGame()
    {
        Scene scene = SceneManager.GetActiveScene();
        Games currentGame = 0;
        try
        {
            switch (Enum.Parse(typeof(Games), scene.name))
            {
                case Games.BlueScene:
                    currentGame = Games.BlueScene;
                    break;
                case Games.RedScene:
                    currentGame = Games.RedScene;
                    break;
                case Games.GreenScene:
                    currentGame = Games.GreenScene;
                    break;
                case Games.PurpleScene:
                    currentGame = Games.PurpleScene;
                    break;
                case Games.BlackScene:
                    currentGame = Games.BlackScene;
                    break;
                case Games.OrangeScene:
                    currentGame = Games.OrangeScene;
                    break;
            }
        }
        catch (Exception) { };
        return currentGame;
    }

    public void LaunchGame(String message)
    {
        int gameCode = int.Parse(message);
        switch (gameCode)
        {
            case (int)Games.BlueScene:
                SceneManager.LoadScene(Games.BlueScene.ToString(), LoadSceneMode.Single);
                break;
            case (int)Games.RedScene:
                SceneManager.LoadScene(Games.RedScene.ToString(), LoadSceneMode.Single);
                break;
            case (int)Games.GreenScene:
                SceneManager.LoadScene(Games.GreenScene.ToString(), LoadSceneMode.Single);
                break;
            case (int)Games.PurpleScene:
                SceneManager.LoadScene(Games.PurpleScene.ToString(), LoadSceneMode.Single);
                break;
            case (int)Games.BlackScene:
                SceneManager.LoadScene(Games.BlackScene.ToString(), LoadSceneMode.Single);
                break;
            case (int)Games.OrangeScene:
                SceneManager.LoadScene(Games.OrangeScene.ToString(), LoadSceneMode.Single);
                break;
            default:
                SceneManager.LoadScene(Games.ChiefScene.ToString(), LoadSceneMode.Single);
                break;

        }
    }

    public void RequestCurrentGameMode(String empty)
    {
        UnityMessageManager.Instance.SendMessageToFlutter(((int)GetCurrentGame()).ToString());

    }
}
