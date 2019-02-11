stats_file = file_text_open_read(working_directory+"stats.txt");

global.total_kills = file_text_read_real(stats_file);
file_text_readln(stats_file); 
global.total_bullets = file_text_read_real(stats_file);
file_text_readln(stats_file);  
global.total_credits = file_text_read_real(stats_file);

file_text_close(stats_file);