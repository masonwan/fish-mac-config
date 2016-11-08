function app-update -d 'Update with Homebrew and Nodejs'
  brew update; and brew upgrade --cleanup; and brew cleanup
  npm -g update
end
