echo "Welcome to the DebDE Installer. This script will install a desktop environment on your Debian installtion."
echo "Please select a mode for installation. You can always install other software later."
echo "1. Full Desktop (Installs apps for daily use along with desktop environment)"
echo "2. Gaming Desktop (Installs some gaming apps and a browser with desktop environment)"
echo "3. Minimal Desktop (Installs a web browser with desktop environment)"
read installation_mode
sudo apt update
if [[ "$installation_mode" == "1" ]]; then
    sudo apt install kde-plasma-desktop -y
    sudo apt install apt-transport-https curl software-properties-common wget -y
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt update
    sudo apt install brave-browser libreoffice htop gimp vlc code virtualbox clamav clamav-daemon simplescreenrecorder pitivi geary caffeine ulauncher neofetch -y
if [[ "$installation_mode" == "2" ]]; then
    sudo apt install kde-plasma-desktop -y
    sudo apt install apt-transport-https curl software-properties-common wget -y
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install brave-browser clamav clamav-daemon simplescreenrecorder pitivi steam lutris wine-y
if [[ "$installation_mode" == "3" ]]; then
    sudo apt install kde-plasma-desktop -y
    sudo apt install apt-transport-https curl software-properties-common wget -y
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install brave-browser -y
else
    echo "Please put an option from the list:"
    echo "1. Full Desktop (Installs apps for daily use along with desktop environment)"
    echo "2. Gaming Desktop (Installs some gaming apps and a browser with desktop environment)"
    echo "3. Minimal Desktop (Installs a web browser with desktop environment)"
    read installation_mode
fi
echo "Your desktop has been installed. Please restart your computer to see the changes."
echo "Thank you for using DebDE Installer."
exit 1
