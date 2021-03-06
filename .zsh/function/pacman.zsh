# Pacman (yay) & system function
add() {
  yay -Slq | fzf -m  --reverse --preview 'yay -Si {1}' | xargs -ro yay -S
}

remove() {
  yay -Qqe | fzf -m  --reverse --preview 'yay -Si {1}' | xargs -ro yay -Rsn
}

# add() {
#   pikaur -Sslq | fzf -m  --reverse --preview 'pikaur -Si {1}' | xargs -ro pikaur -S
# }

# remove() {
#   pikaur -Qqe | fzf -m  --reverse --preview 'pikaur -Si {1}' | xargs -ro pikaur -R 
# }

clean() {
  sudo pacman -Rsn $(pacman -Qdtq)
  yay -Scc
} 
