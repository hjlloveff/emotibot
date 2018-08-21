use emotibot;
DROP EVENT IF EXISTS EVT_ARCHIVE_REQUEST_LOG_PER_DAY ;
CREATE EVENT EVT_ARCHIVE_REQUEST_LOG_PER_DAY
 ON SCHEDULE EVERY 1 DAY STARTS TIMESTAMP '2018-1-1 00:00:10'
 ON COMPLETION PRESERVE
DO  
CALL sp_request_log_archive_last_day();

DROP EVENT IF EXISTS EVT_TRUNCATE_ARCHIVE_PEER_WEEK ;
CREATE EVENT EVT_CHAT_OPT_PEER_WEEK
 ON SCHEDULE EVERY  1 WEEK STARTS TIMESTAMP '2018-1-1 00:10:00'
 ON COMPLETION PRESERVE
DO  
truncate tbl_request_log_archive  ;
truncate tbl_request_exception_archive; 
truncate tbl_request_response_archive ;
truncate ent_request_log_archive  ;

SET GLOBAL event_scheduler = 1;
