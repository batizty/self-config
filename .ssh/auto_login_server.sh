#!/usr/bin/expect

set timeout 30
set server_ip [lindex $argv 0]
set passwd [lindex $argv 1]
set remote_server_ip [lindex $argv 2]

spawn ssh -l tuoyu "$server_ip"
expect "password:"
send "$passwd\r"
expect "Enter: "
send "1\r"
expect "server ip or domain name ( 'q' to exit ): "
send "$remote_server_ip\r"
interact
