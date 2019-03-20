# Icefy for Lubuntu 18.04

This is a program to delete all files added by users on Lubuntu similar to deep freeze for windows.

## How to install

Run the file ` install.sh` as superuser. After install by default the program is `enable`  and using `keep-dirs` option. 

## More options settings

After install use the command `icefy --help` to see more options.

```
Usage:
	icefy [options]

Options:
	enable                Enable the program on reboot
	disable               Disable the program
	clear                 Delete the files now (be careful!)
	keep-dirs             Sets up to keep files in home directories.
	                      The folders are: Documentos, Downloads, Imagens,
	                      Modelos, Músicas, Público and Vídeos
	rm-dirs               Sets up to remove all files from user folders
	help                  Read this help and exit
```

#### ATTENTION

Be careful! Use at your own risk!