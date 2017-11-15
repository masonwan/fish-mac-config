function app-update -d 'Update with Homebrew and Nodejs'
  brew update; and brew upgrade --cleanup; and brew cleanup

  if type -q yarn > /dev/null
    yarn global upgrade --latest --caret --slient --no-progress > /dev/null
  end

  if type -q node > /dev/null
    npm -g install npm
    npm -g update
  end

  if type -q fisher > /dev/null
    fisher update
  end
end
