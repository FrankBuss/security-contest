open_project -project {W:\projects\security-contest\libero\contest\designer\top\top_fp\top.pro}
enable_device -name {M2GL025} -enable 1
set_programming_file -name {M2GL025} -file {W:\projects\security-contest\libero\contest\designer\top\top.ppd}
set_programming_action -action {PROGRAM} -name {M2GL025} 
run_selected_actions
set_programming_file -name {M2GL025} -no_file
save_project
close_project
