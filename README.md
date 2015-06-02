# Project-i

## About

Indent-line-function for emacs.

## Installing

  1. Clone the `project-i` repository:

     ```
     $ git clone https://github.com/vitalya-dev/project-i.git 
     ```

  2. Add to init.el file:

     ```
     (add-to-list 'load-path "path_to_project-i_dir/")
     (require 'project-i)
     (add-hook 'your-mode-hook
       (lambda ()
         (electric-indent-local-mode -1)
         (setq indent-line-function 'i-indent-line-function)
         (setq-default indent-tabs-mode nil)))
     ```
     Example of ```your-mode-hook```: ```js-mode-hook```, ```web-mode-hook```,
     ..., etc.
  3. Thats all.

## Config
  1. Change indentation size:
  ```(setq i-indent-offset indentation-size)```

## Usage
  1. Signle tab: ![alt tag](https://raw.githubusercontent.com/vitalya-dev/project-i/master/docs/first_tab.png)
  2. Double tab: ![alt tag](https://raw.githubusercontent.com/vitalya-dev/project-i/master/docs/second_tab.png)
  3. Triple tab: ![alt tag](https://raw.githubusercontent.com/vitalya-dev/project-i/master/docs/third_tab.png)

## Contact
* **Email:** vitalya.dev@gmail.com

