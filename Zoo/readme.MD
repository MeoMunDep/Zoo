# 🚀 Bot Setup Instructions

Welcome to the bot setup guide! Follow the steps below to install and configure the bot correctly. This guide is designed to be beginner-friendly, with clear explanations for each step.

> [Termux guides if you run on mobile](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux.)

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation Steps](#installation-steps)
3. [Configuration Files](#configuration-files)
   - [`configs.json`](#1-configsjson)
   - [`boost.yaml`](#2-boostyaml)
   - [`animals.csv`](#3-animalscsv)
   - [`datas.txt`](#4-datastxt)
   - [`wallets.txt`](#5-walletstxt)
   - [`proxies.txt`](#6-proxiestxt)
4. [Running the Bot](#running-the-bot)
5. [Contact and Support](#contact-and-support)

---

## Prerequisites

Before running the bot, make sure you have the following installed:

- **Node.js** (Version: `22.11.0`)
- **npm** (Version: `10.9.0`)

Download Node.js and npm here: [Download Link](https://t.me/KeoAirDropFreeNe/257/1462).

-> Double click on setup.bat or setup.sh if you want to run automatically, remember to fill all the necessary data.

---

## Installation Steps

1. **Download and Extract the Bot Files:**

   - Extract the bot package into a folder on your computer.

2. **Install Dependencies:**
   Open your terminal or command prompt, navigate to the folder where the bot files are located, and run:

   ```bash
   npm install user-agents axios colors p-limit https-proxy-agent socks-proxy-agent crypto-js ws uuid xlsx readline-sync
   ```

3. **Prepare Configuration Files:**
   - Ensure all configuration files are set up correctly before running the bot (see [Configuration Files](#configuration-files) section).

---

## Configuration Files

### 1. `configs.json` - 📜 Advanced Bot Settings

This file now includes expanded configuration options for animal management and boost purchases. Here's a detailed example:

```json
{
  "timeZone": "en-US",
  "rotateProxy": false,
  "skipInvalidProxy": false,
  "proxyRotationInterval": 2,
  "delayEachAccount": [1, 81],
  "timeToRestartAllAccounts": 300,
  "howManyAccountsRunInOneTime": 10,
  "doTasks": true,
  "referralCode": "ref6713068747",
  "buyBoosts": {
    "amounts": [1, 2, 3],
    "type": [
      "5_boost_for_24_hours",
      "10_boost_for_24_hours",
      "15_boost_for_24_hours"
    ]
  },
  "buyAnimals": {
    "nameForEachPosition": [
      "turtle",
      "rabbit",
      "squirrel",
      "flamingo",
      "zebra",
      "moose",
      "giraffe",
      "parrot",
      "fox",
      "penguin",
      "crocodile",
      "panda",
      "wolf",
      "bear",
      "dolphin",
      "platypus",
      "capybara",
      "pepe",
      "doge",
      "elephant",
      "rhinoceros",
      "orca",
      "tiger",
      "shark",
      "lion"
    ]
  },
  "upgradeAnimals": {
    "amountOfEachPosition": [
      10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
      10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
    ]
  },
  "feeding": "7 day",
  "riddleCode": "meomundep"
}
```

**Fields Explained:**

- `buyBoosts`: Configure automatic boost purchases, can be more than 3 slots, add more if you want.
- `amounts`: Array of quantities to purchase.
- `type`: Array of boost types to buy (must match boost.yaml options)
- `buyAnimals`: Configure animal purchases.
- `nameForEachPosition`: List of animals to buy in order.
- `upgradeAnimals`: Configure animal upgrades, maximum is 34 slot.
- `amountOfEachPosition`: Number of upgrades to perform for each position, maximum is 34 slot.
- `feeding`: Type of feeding to animals. All type are: "1 day", "2 day", "7 day" or just put it empty it will feed instantly.
- `riddle`: Daily Riddle code.

### 2. `boost.yaml` - 🚀 Boost Configuration

This file defines available boost packages and their properties:

```yaml
- { key: '5_boost_for_24_hours', price: 50, boost: 5, days: 1 }
- { key: '10_boost_for_24_hours', price: 100, boost: 10, days: 1 }
- { key: '15_boost_for_24_hours', price: 250, boost: 15, days: 1 }
- { key: '20_boost_for_24_hours', price: 1000, boost: 20, days: 1 }
- { key: '25_boost_for_24_hours', price: 5000, boost: 25, days: 1 }
- { key: '30_boost_for_24_hours', price: 17000, boost: 30, days: 3 }
- { key: '35_boost_for_3_days', price: 25000, boost: 35, days: 3 }
- { key: '40_boost_for_3_days', price: 40000, boost: 40, days: 3 }
- { key: '45_boost_for_3_days', price: 60000, boost: 45, days: 3 }
- { key: '50_boost_for_3_days', price: 90000, boost: 50, days: 3 }
- { key: '60_boost_for_7_days', price: 225000, boost: 60, days: 7 }
- { key: '70_boost_for_7_days', price: 350000, boost: 70, days: 7 }
- { key: '80_boost_for_7_days', price: 525000, boost: 80, days: 7 }
- { key: '90_boost_for_7_days', price: 800000, boost: 90, days: 7 }
- { key: '100_boost_for_7_days', price: 1200000, boost: 100, days: 7 }
```

**Fields Explained:**

- `key`: Unique identifier for the boost package
- `price`: Cost of the boost package
- `boost`: Boost multiplier
- `days`: Duration of the boost in days

### 3. `animals.csv` - 🦁 Available Animals

The bot supports the following animals:

- Basic: turtle, rabbit, squirrel, flamingo, zebra
- Intermediate: moose, giraffe, parrot, fox, penguin
- Advanced: crocodile, panda, wolf, bear, dolphin
- Premium: platypus, capybara, pepe, doge, elephant
- Legendary: rhinoceros, orca, tiger, shark, lion

Each animal has different characteristics and earning potential. Choose animals based on your strategy and available resources.

[Previous sections remain unchanged...]

### 4. `datas.txt` - 🗂️ User Data

Fill the data for `datas.txt` file, get data from [here](https://t.me/KeoAirDropFreeNe/257/6879). This file contains user data in the following format:

```txt
query_id.../user...
query_id.../user...
query_id.../user...
```

### 5. `wallets.txt` - 💼 Wallet Addresses

- Wallets generator: [Link](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

Add your wallet addresses in the following format:

```txt
abc...xyz
abc...xyz
abc...xyz
```

_Note: Wallet updates are currently not supported._

### 6. `proxies.txt` - 🌐 Proxy List (Optional)

If you are using proxies, add them here. Leave the file blank if you are not using proxies. Supported formats:

```txt
http://user:password@host:port
https://user:password@host:port
socks4://user:password@host:port
socks5://user:password@host:port
```

_Note: each row for each account_

---

## Running the Bot

1. Navigate to the folder containing the bot files:

   ```bash
   cd /path/to/meomundep.js-folder
   ```

2. Run the bot using the following command:
   ```bash
   node meomundep
   ```

---

## Contact and Support

- **Help me with your referral** [Referral Link](t.me/zoo_story_bot/game?startapp=ref6713068747)
- **Buy me a telegram account** [Here](https://t.me/KeoAirDropFreeNe/312/27801) or [Here](https://github.com/MeoMunDep/MeoMunDep)

If you encounter any issues or have questions, feel free to reach out:

- **Contact:** [Contact Me](https://t.me/MeoMunDep)
- **Group:** [Join the Group](https://t.me/KeoAirDropFreeNe)
- **Channel:** [Visit the Channel](https://t.me/KeoAirDropFreeNee)

Your support is greatly appreciated! 🐱

---

Enjoy using the bot! 🚀
