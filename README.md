# ox_inventory

A complete inventory system for FiveM, implementing items, weapons, shops, and more without any strict framework dependency.

![](https://img.shields.io/github/downloads/communityox/ox_inventory/total?logo=github)
![](https://img.shields.io/github/downloads/communityox/ox_inventory/latest/total?logo=github)
![](https://img.shields.io/github/contributors/communityox/ox_inventory?logo=github)
![](https://img.shields.io/github/v/release/communityox/ox_inventory?logo=github)

> [!WARNING]
> This is currently a **beta release** of our redesign. While all features are functional and have been tested as much as possible, we encourage server owners and developers to test thoroughly and report any issues. Your feedback is essential to help us polish the final release!

## 📚 Documentation

https://coxdocs.dev/ox_inventory

## 💾 Download

https://github.com/communityox/ox_inventory/releases/latest/download/ox_inventory.zip

## Supported frameworks

We do not guarantee compatibility or support for third-party resources.

- [ox_core](https://github.com/communityox/ox_core)
- [esx](https://github.com/esx-framework/esx_core)
- [qbox](https://github.com/Qbox-project/qbx_core)
- [nd_core](https://github.com/ND-Framework/ND_Core)

## ✨ Features

- Server-side security ensures interactions with items, shops, and stashes are all validated.
- Logging for important events, such as purchases, item movement, and item creation or removal.
- Supports player-owned vehicles, licenses, and group systems implemented by frameworks.
- Fully synchronised, allowing multiple players to [access the same inventory](https://user-images.githubusercontent.com/65407488/230926091-c0033732-d293-48c9-9d62-6f6ae0a8a488.mp4).

### Items

- Inventory items are stored per-slot, with customisable metadata to support item uniqueness.
- Overrides default weapon-system with weapons as items.
- Weapon attachments and ammo system, including special ammo types.
- Durability, allowing items to be depleted or removed overtime.
- Internal item system provides secure and easy handling for item use effects.
- Compatibility with 3rd party framework item registration.

### Shops

- Restricted access based on groups and licenses.
- Support different currency for items (black money, poker chips, etc).
- **NEW:** Cart-based shop system - add items to a cart before purchasing, with quantity controls and a sleek checkout panel.
- **NEW:** Click-only shop interaction - shop items cannot be dragged, preventing unintended transfers.
- **NEW:** Payment method selector - toggle between Cash and Bank payments directly from the shop UI.

### Stashes

- Personal stashes, linking a stash with a specific identifier or creating per-player instances.
- Restricted access based on groups.
- Registration of new stashes from any resource.
- Containers allow access to stashes when using an item, like a paperbag or backpack.
- Access gloveboxes and trunks for any vehicle.
- Random item generation inside dumpsters and unowned vehicles.

---

## 🎨 Onyx UI Redesign

This fork features a completely redesigned inventory UI built with **Mantine**, delivering a premium dark-themed experience.

### Redesigned Interface

- **Dark aesthetic** - translucent panels with subtle blur effects and smooth borders.
- **3D perspective tilt** - inventory panels have a subtle 3D perspective rotation effect, toggleable via `onyx.lua`.
- **Item rarity system** - color-coded slot borders and glow effects based on item rarity (Common, Rare, Epic, Mythic, Legendary), fully customizable via `onyx.lua`.
- **Improved item slots** - centered item images, sleek count badges, vertical durability bars, and rarity-tinted label badges.
- **Hover animations** - slots scale up smoothly on hover for clear visual feedback.
- **Redesigned hotbar** - matching dark aesthetic with rarity borders, durability bars, and slot number indicators.
- **Sleek item tooltips** - redesigned tooltip cards with rarity labels, ingredient lists for crafting items, structured metadata rows, and markdown description support.
- **Configurable UI blur** - toggle screen blur on/off when the inventory is open via `onyx.lua`.

### Search Bar

- **Built-in item search** - filter items in real-time by typing in the search bar above each inventory panel.
- **Toggleable** - enable or disable the search bar globally via `onyx.lua`.
- **Smart filtering** - searches across item names and labels, with a clear button to reset.

### Drag-to-Craft System

- **Drag any two items together** to craft a result based on configurable recipes in `onyx.lua`.
- **Per-recipe progress bars** - each recipe can have its own crafting duration and label.
- **Per-recipe animations** - configure custom player animations for each recipe (dict, clip, flags, duration).
- **Crafting chance** - optional success/failure chance per recipe.
- **Single or dual material recipes** - supports recipes with one item type (e.g. 2x scrapmetal) or two different item types.
- Server-validated crafting with proper item consumption and result creation.

### Dumpster Search

- **Animated search UI** - sleek loading dots animation with localized "Searching" text when clicking hidden dumpster slots.
- **Progressive reveal** - items are hidden until searched.
- **Configurable search cooldown** - set how long it takes to search a slot via `SearchCooldown` in `onyx.lua` (default: 1500ms).
- **Spam protection** - players cannot spam-click slots while a search is already in progress.

### Item Mechanics

- **Item Cooldown System** - add `cooldown = '20s'` to any item in `data/items.lua` to throttle its use.
    - **Visual Overlay** - a "cooldown" overlay with a live countdown timer appears on the item slot during the cooldown period.
    - **Client Throttling** - prevents item use and plays a notification if the player tries to use an item still on cooldown.
- **Item Replacement System** - add `replace = 'item_name'` to an item in `data/items.lua` to substitute it upon consumption.
    - **Automatic Substitution** - when an item (like `water`) is consumed (count reaches 0 or durability is depleted), it is automatically replaced by the specified item (like `empty_bottle`).
    - **Inventory Capacity Check** - if the player cannot carry the replacement item, they will be notified via a warning.


### Item Renaming

- **Global rename toggle** - enable renaming for all items globally, or restrict it to specific items with `rename = true` in `data/items.lua`.
- **Rename dialog** - clean modal dialog for entering new item names through the right-click context menu.

### Notifications

- **Redesigned item notifications** - compact notification cards with color-coded headers (green for added, red for removed).
- **Weapon equip/holster** - proper "Equipped" and "Holstered" notifications without count bugs.

### Quality of Life

- **Hotbar keybinds** - press 1-5 to quickly equip items to hotbar slots directly from the inventory.
- **Missing image fallback** - items without images display a subtle transparent placeholder instead of broken image icons.
- **Context menu** - right-click items for quick actions (Use, Give, Drop, Remove Ammo, Copy Serial, Rename, Remove Attachments).
- **Drop prop system** - configurable item drop models via `onyx.lua`.

### Full Localization

All UI text is fully localized through `locales/en.json` for now.

---

## ⚙️ Configuration (`onyx.lua`)

All new features are configured through a single `onyx.lua` file in ox_inventory folder.

---

## Copyright

Copyright © 2024 Overextended <https://github.com/overextended>

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
