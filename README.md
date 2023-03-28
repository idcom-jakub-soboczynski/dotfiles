# Hey it's dotfiles! 🖖🏼

> All my dotfiles with configurations. Based on [this article!](https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/)

## Get started 🏁

Clone the project

```bash
  git clone --bare git@github.com:idcom-jakub-soboczynski/dotfiles.git $HOME/.dotfiles
```

Define the alias in the current shell scope

```bash
  alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  dotfiles config --local status.showUntrackedFiles no
  dotfiles checkout -f --ours
  source ~/.zshrc
```

> Note that if you already have some of the files you'll get an error message. You can either (1) delete them or (2) back them up somewhere else. It's up to you.

Awesome! You’re done. 🎊 🥳

## Author 🙎🏼‍

#### [@teziovsky](https://www.github.com/idcom-jakub-soboczynski)

## Contact ☎️

If you have any suggestions, please [email me here](mailto:jakub.soboczynski@idcom.pl)! 🔥

