Overview
This README document outlines the changes and integrations made in the Ludo game project. The modifications include fixing a bug related to spin wheel button, editing text in the spin wheel panel, integrating Unity Ads, implementing a daily ads reward system.

Changes and Fixes
1. Spin Wheel Button Fix
Issue: The LocalNotification.SendNotification() function was causing errors, resulting in the spin wheel button not functioning.
Solution: Disabling the function resolved the issue, allowing the spin wheel button to work correctly.
2. Spin Wheel Panel Text Update
Change: The text inside the spin wheel panel was updated from 24 hours countdown to spin wheel daily for rewards and spin extra with coins to better reflect the functionality and provide clear instructions to the user.
Unity Ads Integration
1. Advertisement Package
Action: Integrated Unity Ads by installing the latest version of the Advertisement Legacy package.
Implementation: Utilized AdsInitializer and RewardedAds scripts for managing advertisements within the game.
2. Ads Button
Feature: Added a button on the main screen to play ads.
Condition: Ads will load if the player has not watched 10 ads today.
Daily Ads Reward System
1. Reward Mechanism
System: Integrated a daily ads reward system where players can watch up to 10 ads to receive one coin.
Progress Tracking: After watching an ad, a progress panel displays the number of ads left to watch to earn the reward.
2. Data Persistence
Date Tracking: Saved the date in PlayerPrefs.GetString("AdsToday"). Checked in the Start function if the saved date matches today's date. If not, reset the watched ads count to zero.
Ad Count: Saved the number of ads watched today in PlayerPrefs.GetInt("adCount").
API Integration Needed:
1. UpdateUserData API
Function Call: We should use the UpdateUserData(Dictionary<string, string> data) API function call from MyPlayerData.cs to update the coins earned from watching ads.
2. RewardCoins Function
Usage: Utilized the RewardCoins(int awardCoins) function in FortuneWheelManager.cs to reward players with coins after watching ads.
API Call: The UpdateUserData(Dictionary<string, string> data) function call from MyPlayerData.cs is included within the RewardCoins(int awardCoins) function to update the player's coins using the API but this code was already commented out for some reason.
