# Daniel's Dotiles

This is the collection of my dotfiles.

I collected this configurations over the last decade.

## Management

I use [chezmoi](https://www.chezmoi.io/) to manage my dotfiles.

### A few useful chezmoi commands

**clone and apply the dotfiles good for new machines**

```bash
chezmoi init --apply git@github.com:dgo-/dotfiles.git
```

**updates local dotfiles**

```bash
chezmoi update
```

*(git pull --rebase && chezmoi apply.)*

## Manual Tasks

Some of the task to setup a machine are not easily to automate,
because of that here are some manual task that needed to be done.

### MacOS

This tasks need to be performed for an MacOS machine.

### Install Font
Download `MesoLG Nerd Font` from the [NerdFont site](https://www.nerdfonts.com/font-downloads).
Extract the archive and move the content to `~/Library/Fonts/`.

#### iCloud

Go to **System Settings** > **Apple ID**.

Enable the following **Services**:

* iCloud Drive: Disable all **Apss Syncing to iCloud Drive**

Enable **Advanced Data Protection**. As recovery method setup up a
**recovery key**.

Disable **Access iCloud Data on the Web**.

#### Siri Spotlight

Go to **System Settings** > **Siri & Spotlight**

* Disable: Ask Siri
* Unselect all Search results under spotlight.
* Under **Spotlight Privacy** add the *Application* and *Home* folder

#### Enable Night Shift

Go to **System Settings** > **Displays** here you will find **Night Shift**.

Set the *schedule* to `Custom` and From `22:00` to `7:00` and set the
*Colour temperature* to `More Warm`.

#### AirDrop

Navigate to **System Settings** > **General** > **AirDrop & Handoff**.

Disable: *Allow Handoff between this Mac and your iCloud devices*
Airdrop: No One
Disable: Airplay Receiver

