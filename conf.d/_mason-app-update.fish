function app-update -d 'Update with Homebrew and Nodejs'
  brew update; and brew upgrade --cleanup; and brew cleanup
  yarn global upgrade
end
