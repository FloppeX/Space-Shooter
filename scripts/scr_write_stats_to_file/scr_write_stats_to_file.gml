stats_file = file_text_open_write(working_directory+"stats.txt");

file_text_write_real(stats_file,global.total_kills);
file_text_writeln(stats_file); 
file_text_write_real(stats_file,global.total_bullets);
file_text_writeln(stats_file); 
file_text_write_real(stats_file,global.total_credits);
file_text_writeln(stats_file); 

file_text_close(stats_file);