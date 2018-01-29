function app-update -d 'Update with Homebrew and Nodejs'
  if type -q brew
    log info 'Updating Homebrew modules...'
    brew update
    brew upgrade --cleanup
    brew cleanup
  end

  if type -q yarn > /dev/null
    log info 'Updating yarn modules...'
    yarn global upgrade --latest --caret --slient --no-progress > /dev/null
  end

  if type -q npm > /dev/null
    log info 'Updating NPM modules...'
    npm -g install npm
    npm -g update
  end

  if type -q fisher > /dev/null
    log info 'Updating fisherman modules...'
    fisher update
  end
end
