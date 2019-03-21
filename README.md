# Icefy for Lubuntu 18.04

This is a program to delete all files added by users on Lubuntu similar to deep freeze for windows.

## How to install

Run the file ` install.sh` as superuser. After install by default the program is `enable`  and using `keep-dirs` option. 

## More options settings

After install use the command `icefy --help` to see more options.

```
USAGE:
  icefy [options] [args]

OPTIONS:
  enable           Enable the program on reboot
  disable          Disable the program
  clear            Delete the files now (be careful!)
  home-dirs        Mode of how files are removed from machine.
       ARGUMENTS:
                   keep : Sets up to keep files in home directories.
                          The folders are: Documentos, Downloads,
                          Imagens, Modelos, Músicas, Público and Vídeos
                   rm   : Sets up to remove all files from user folders
  save-confs       Save settings of Browsers on Skel of system
       ARGUMENTS:  
                   firefox : Copy confs of Firefox to Skel
                   chrome  : Copy confs of Chrome to Skel
  help             Read this help and exit
```

#### ATTENTION

Be careful! Use at your own risk!