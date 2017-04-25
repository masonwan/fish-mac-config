function lint-trash -d "Remove items older than 30 days in Trash"
  if [ (count $argv) -ge 1 ]
    set count $argv[1]
  else
    set count 30 # Default to 30 days
  end

  set list (find ~/.Trash -maxdepth 1 -mtime +$count)
  set file_count (count $list)

  if [ $file_count -eq 0 ]
    log info "Did not find trash older than $count days"
  else
    log info "Removing $file_count files older than $count days"
    ls -AFlhdtr $list
    rm -rf $list
  end
end