# Zprofile setup
This sets the environment for interactive shells. It's typically a place where you "set it and forget it" type of parameters like $PATH , $PROMPT , aliases, and functions you would like to have in both login and interactive shells.

## Install .zprofile
Run this command in your terminal:
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/homcenco/macos-setup/main/zprofile/setup.sh)"
```

### Alias
| Command    | Description                                  |
|------------|----------------------------------------------|
| `a`        | Automator change appearance dark/light       |
| `as [FILE]` | Alias bash FILE as symlink to sources folder |

### Brew
| Command         | Description                    |
|-----------------|--------------------------------|
| `bc`            | Brew Cleanup                   |
| `bd`            | Brew Doctor                    |
| `bi [PACKAGE]`  | Brew Install package name      |
| `bic [PACKAGE]` | Brew Install Cask package name |
| `bs [SERVICE]`  | Brew Services start service    |
| `bsr [SERVICE]` | Brew Services Restart service  |
| `bss [SERVICE]` | Brew Services Stop service     | 
| `bsl`           | Brew Services List             |

### Finder
| Command      | Description                                                                        |
|--------------|------------------------------------------------------------------------------------|
| `fff [NAME]` | Finder Find a File with a name                                                     |
| `frd`        | Finder Remove all .DS_Store starting from current directory and its subdirectories |
| `fsa`        | Finder Show All hidden files and folders                                           |
| `fha`        | Finder Hide All hidden files and folders                                           |
| `fsi`        | Finder Spotlight Index turn on                                                     |

### Git
| Command | Description                                           |
|---------|-------------------------------------------------------|
| `gcc`   | Git Clean and reset Cpabox project                    |
| `gd`    | Git Diff show all changed files staged and not staged |
| `gp`    | Git Pull --all                                        |
| `g`     | Open chrome with disable-web-security                 |

### Update
| Command | Description                                                                   |
|---------|-------------------------------------------------------------------------------|
| `u`     | Update all global (Applications, Brew, Composer, Npm, Dock)                   |
| `ub`    | Update Brew                                                                   |
| `uc`    | Update Composer                                                               |
| `un`    | Update Npm                                                                    |
| `ud`    | Update Dock (Used to restore all dock applications if cask update removed it) |
| `uz`    | Update .Zprofile file                                                         |
| `ug`    | Update Git project                                                            |

### Other
| Command           | Description                             |
|-------------------|-----------------------------------------|
| `save`            | Save changes to .zprofile or it sources |
| `zsudo [COMMAND]` | Sudo passwordless a command             |
