class people::rudymccomb::applications {

  include chrome
  include chrome::canary
  include virtualbox
  include dash
  include evernote
  include googledrive
  include cyberduck
  include firefox
  include skype
  #include docker

  #package 'docker'{
  #  ensure => absent
  #}

  include iterm2::stable
  include iterm2::colors::solarized_dark

}
