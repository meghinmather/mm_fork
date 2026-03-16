
# Installing R and RStudio on macOS Using Homebrew

## 1. Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Add Homebrew to PATH if prompted:
```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## 2. Install R
```
brew install r
```

## 3. Install RStudio
```
brew install --cask rstudio
```

## 4. Verify Installation
```
R
open -a RStudio
```

# Homebrew Maintenance Script

Create file:
```
nano ~/brew_maintenance.sh
```

Add content:
```
#!/bin/bash

echo "Running Homebrew Maintenance."
brew update #updates Homebrew
brew upgrade #updates packages installed via Homebrew
brew cleanup #removes unnecessary files
brew doctor #checks that everything is working, identifies potential errors
echo "Done!"
```

Make executable:
```
chmod +x ~/brew_maintenance.sh
```

# Optional: Schedule with cron
```
crontab -e
```
Add line (runs Mon 9am):
```
0 9 * * 1 /Users/$USER/brew_maintenance.sh >> /Users/$USER/brew_maintenance.log 2>&1
```
