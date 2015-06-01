# Project-i

## Brief

General (python-mode like) indent-line-function for emacs.

## Installing

  1. Clone the `project-i` repository to some directory:

     ```
     $ git clone https://github.com/vitalya-dev/project-i.git path_to_project-i_dir
     ```

  2. Add to init.el file:

     ```
     (add-to-list 'load-path "path_to_project-i_folder/project-i/")
     (require 'project-i)
     (add-hook 'your-mode-hook
       (lambda ()
         (electric-indent-local-mode -1)
         (setq indent-line-function 'i-indent-line-function)
         (setq-default indent-tabs-mode nil)))
     ```

### Basic usage
     

