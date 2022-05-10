# Windows Subsystem For Linux

# Retrieves the windows username
{
  WINDOWS_USER=$(/mnt/c/Windows/System32/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')
} &> /dev/null

# mount point for the windows user home directory
export WINHOME="/mnt/c/Users/$WINDOWS_USER"
