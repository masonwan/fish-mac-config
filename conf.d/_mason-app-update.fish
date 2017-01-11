function app-update -d 'Update with Homebrew and Nodejs'
  brew update; and brew upgrade --cleanup; and brew cleanup
  if type -q yarn > /dev/null
    yarn global upgrade
  else
    log warn 'Could not find yarn, upgrade modules with npm instead.'
    npm -g update
  end
end
