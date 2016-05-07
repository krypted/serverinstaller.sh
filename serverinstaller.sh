#!/usr/bin/expect
set timeout 300
spawn server setup
expect "Press Return to view the software license agreement." { send \r }
expect "Do you agree to the terms of the software license agreement? (y/N)" { send "y\r" }
expect "User name:" { send "MYADMINUSERNAME\r" }
expect "Password:" { send "MYPASSWORD\r" }
interact
