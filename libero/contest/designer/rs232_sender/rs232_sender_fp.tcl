new_project \
         -name {rs232_sender} \
         -location {W:\projects\security-contest\libero\contest\designer\rs232_sender\rs232_sender_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2GL025} \
         -name {M2GL025}
enable_device \
         -name {M2GL025} \
         -enable {TRUE}
save_project
close_project
