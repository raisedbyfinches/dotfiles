[![Made with Doom Emacs](https://img.shields.io/badge/Made_with-Doom_Emacs-blueviolet.svg?style=flat-square&logo=GNU%20Emacs&logoColor=white)](https://github.com/doomemacs)
[![NixOS Unstable](https://img.shields.io/badge/NixOS-24.05-blue.svg?style=flat-square&logo=NixOS&logoColor=white)](https://nixos.org)

# .g

<h1 align="center">
    <a href="#philosophy">Philosophy</a> ･
    <a href="#setup">Setup</a> ･
    <a href="#philosophy">External</a> ･
    <a href="#useful-links">Useful Links</a>
</h1>
<br>

[nixos-discourse]: https://discourse.nixos.org
[doomemacs]: https://github.com/doomemacs/doomemacs
[agenix]: https://github.com/ryantm/agenix



**Hey.** I said **hey**. This is my personal collection of configuration files.

Here are some details about my current setup:

+ **OS**: nixOS
+ **Window Manager / Compositor**: [hyprland](https://hyprland.org)
+ **Widgets**: [Eww](https://github.com/elkowar/eww)
+ **Notifications**: [dunst](https://github.com/dunst-project/dunst)
+ **Shell**: [zsh](https://wiki.archlinux.org/index.php/Zsh)
+ **Terminal**: [kitty](https://github.com/kovidgoyal/kitty)
+ **Editor**: [doom emacs](https://github.com/doomemacs/doomemacs)
+ **Launcher**: [bemenu](https://github.com/Cloudef/bemenu)
+ **Browser**: Firefox

<br>
<br>


> [!IMPORTANT]
> **Disclaimer:** _This is my personal configuration and is being actively tarted up._
> Please do not use it if you aren't willing to get your hands dirty and try to
> fix any issues you might find yourself. I can try to help, but I do not take responsibility
> for your personal setup and I cannot know how *everything* you have is set up.


## Philosophy
This is a highly opinionated configuration that works for me.

### Features

TBC


## Setup

We use `just` because I have not gotten around to writing any `nix` flakes. This is quick
and dirty and should be treated as such for now.


1. **Install dependencies**

   The following packages need to be installed for all desktop functionality to work.

   | Package | Purpose |
   |---------|---------|
   | TBC     | TBC     |


2. **Install dotfiles**

    Backup your own setup first!


    Then clone the repo and install the relevant dotfiles:
    ```sh
    git clone --depth 1 https://github.com/raisedbyfinches/dotfiles
    cd dotfiles
    just install
    ```


## External

I'm currently incorporating `hey` from @hlissner. Here's what he says.

### Hey

And I say, `bin/hey`, [what's going on?](https://youtu.be/ZZ5LpwO-An4).

```
SYNOPSIS:
  hey [-?|-??|-???|-!] [-h|--help] COMMAND [ARGS...]

OPTIONS:
  -!           -- Do a dry run. WARNING: It's up to called scripts to obey!
  -?,-??,-???  -- Enable debug (verbose) mode.
  -h,--help    -- Display the documentation embedded in a target script's
                  header.

COMMANDS:
  - build|b    -- Build nix images or recompile bin/hey
  - exec       -- Dispatch to $DOTFILES_HOME/{,hosts/$HOST,config/$WM}/bin/shim.d $PATH
  - get|set    -- Alias for hey vars {get,set} ...
  - gc         -- Run garbage collection on the user's/system's profile
  - help|h     -- Display documentation for the command
  - hook       -- Trigger scripts associated with an event
  - host       -- Dispatch to $DOTFILES_HOME/hosts/$HOST/bin
  - info       -- Display information about current system (JSON)
  - path       -- Display path to area of my dotfiles
  - profile    -- Manage or analyze a system or user nix profile
  - pull       -- Update flake inputs
  - reload     -- Run reload hooks
  - repl       -- Open a Janet, Nix, or nix-develop REPL
  - swap       -- Swap nix-store symlinks with copies (and back)
  - sync|s     -- Rebuild this flake (using nixos-rebuild)
  - test       -- Run Hey and/or Nix test suites
  - which      -- Print out the script's path (with arguments) w/o executing it
  - wm         -- Dispatch to $DOTFILES_HOME/config/$WM/bin
  - vars       -- Get or set session or persistent state in userspace.
  - @*         -- Dispatch to $DOTFILES_HOME/config/${1#@}/bin
  - .*         -- Tries to be smart. Looks for any executable under host, wm,
                  then $DOTFILES_HOME/bin.
```


### Frequently asked questions

+ **Should I use NixOS?**

  **Short answer:** no.

  **Long answer:** no really. Don't.

  **Long long answer:** I'm not kidding. Don't.

  **Unsigned long long answer:** Alright alright. Here's why not:

  - Its learning curve is steep.
  - You _will_ trial and error your way to enlightenment, if you survive the
    frustration long enough.
  - NixOS is unlike other Linux distros. Your issues will be unique and
    difficult to google. A decent grasp of Linux and your chosen services is a
    must, if only to distinguish Nix(OS) issues from Linux (or upstream) issues
    -- as well as to debug them or report them to the correct authority (and
    coherently).
  - If words like "declarative", "generational", and "immutable" don't put your
    sexuality in jeopardy, you're considering NixOS for the wrong reasons.
  - The overhead of managing a NixOS config will rarely pay for itself with 3
    systems or fewer (perhaps another distro with nix on top would suit you
    better?).
  - Official documentation for Nix(OS) is vast, but shallow. Unofficial
    resources and example configs are sparse and tend toward too simple or too
    complex (and most are outdated). Case in point: this repo.
  - The Nix language is obtuse and its toolchain is not intuitive. Your
    experience will be infinitely worse if functional languages are alien to
    you, however, learning Nix is a must to do even a fraction of what makes
    NixOS worth the trouble.
  - If you need somebody else to tell you whether or not you need NixOS, you
    don't need NixOS.

  If you're not discouraged by this, then you didn't need my advice in the first
  place. Stop procrastinating and try NixOS!

+ **How do you manage secrets?**

  With `agenix`.

+ **Why did you write bin/hey?**

  I envy Guix's CLI and want similar for NixOS, whose toolchain is spread across
  many commands, none of which are as intuitive: `nix`, `nix-collect-garbage`,
  `nixos-rebuild`, `nix-env`, `nix-shell`, etc.

  I don't claim `hey` is the answer, but who doesn't like their own brew?

+ **How 2 flakes?**

  Would it be the NixOS experience if I gave you all the answers in one,
  convenient place?

  No. Suffer my pain:

  - [A three-part tweag article that everyone's read.](https://www.tweag.io/blog/2020-05-25-flakes/)
  - [An overengineered config to scare off beginners.](https://github.com/divnix/devos)
  - [A minimalistic config for scared beginners.](https://github.com/colemickens/nixos-flake-example)
  - [A nixos wiki page that spells out the format of flake.nix.](https://wiki.nixos.org/wiki/Flakes)
  - [Official documentation that nobody reads.](https://nixos.org/learn.html)
  - [Some great videos on general nixOS tooling and hackery.](https://www.youtube.com/channel/UC-cY3DcYladGdFQWIKL90SQ)
  - A couple flake configs that I
    [may](https://github.com/LEXUGE/nixos)
    [have](https://github.com/bqv/nixrc)
    [shamelessly](https://git.sr.ht/~dunklecat/nixos-config/tree)
    [rummaged](https://github.com/utdemir/dotfiles)
    [through](https://github.com/purcell/dotfiles).
  - [Some notes about using Nix](https://github.com/justinwoo/nix-shorts)
  - [What helped me figure out generators (for npm, yarn, python and haskell)](https://myme.no/posts/2020-01-26-nixos-for-development.html)
  - [Learn from someone else's descent into madness; this journals his
    experience digging into the NixOS
    ecosystem](https://www.ianthehenry.com/posts/how-to-learn-nix/introduction/)
  - [What y'all will need when Nix drives you to drink.](https://www.youtube.com/watch?v=Eni9PPPPBpg)

  And if all else fails, ask for help on [the NixOS Discourse](https://discourse.nixos.org).



## Useful links

- [nixos-discourse](https://discourse.nixos.org)
- [doomemacs](https://github.com/doomemacs/doomemacs)
- [agenix](https://github.com/ryantm/agenix)


---

Held together by spit and twigs.
