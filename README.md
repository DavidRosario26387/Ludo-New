## Overview

The latest update includes a new feature to reward coins to players through an API call.

## Recent Changes

### Backend (Laravel)

- **New API Endpoint:** Added `/player/addRewardCoins` to reward coins to players.
- **Controller Update:** Added `AddRewardCoins` method in `PlayerController.php` to handle rewarding coins to players.

### Frontend (Unity)

- **New Coroutine:** Implemented a coroutine in Unity to call the new `AddRewardCoins` API.
- **API Call Integration:** Updated Unity script to handle the API response and update the player's coin balance in the game.
