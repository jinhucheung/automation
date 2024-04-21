# Automation

Automation Script To Wake Remote System Using WOL (WakeOnLAN) and more

## Usage

1. Clone the repository:

  ```bash
  git clone git://github.com/jinhucheung/automation.git
  ```

2. Navigate to the project directory:

  ```bash
  cd automation
  ```

3. Install the required dependencies:

  ```bash
  bundle install
  ```

4. Run the script:

  ```bash
  ./power_on.rb -m MAC_ADDRESS -a IP_OR_DOMAIN -p PORT
  ```

  This will wake the remote system using Wake-on-LAN (WOL) and perform additional automation tasks.
