(defcustom i-indent-offset 2
  "Default indentation for project-i.")

(defun i-previous-line ()
  (if (eq (line-number-at-pos) 1)
      "" ;;if no previous - return empty
    (save-excursion
      (forward-line -1)
      (beginning-of-line)
      (buffer-substring-no-properties
       (line-beginning-position)
       (line-end-position)))))

(defun i-calculate-column (previous-line)
  (if (string-match "[^[:space:]]" previous-line)
      (- (match-end 0) 1)
    0))

(defun i-indent-line-to (column)
  (let ((old-column (current-indentation))
        (old-point (point)))
    (indent-line-to column)
    (when (>= old-point (+ (line-beginning-position) old-column))
      (goto-char (+ old-point (- column old-column))))))

(defun i-indent-line (previous-line)
  (let ((current-column (current-indentation))
	(previous-column (i-calculate-column previous-line)))
    (if (<= current-column  previous-column)
	(i-indent-line-to (+ current-column i-indent-offset))
      (i-indent-line-to 0))))
  
(defun i-indent-line-function ()
  (i-indent-line (i-previous-line)))

(provide 'project-i)











