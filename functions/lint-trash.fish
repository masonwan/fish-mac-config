function lint-trash -d "Remove items older than 30 days in Trash"
  set list (find ~/.Trash -maxdepth 1 -mtime +30)
  set file_count (count $list)

  if [ $file_count -eq 0 ]
    log info 'Nothing to remove'
  else
    log info 'Removing '$file_count' files'
    ls -AFlhdtr $list
    rm -rf $list
  end
end