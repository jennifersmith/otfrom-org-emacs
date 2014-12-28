;; -*- lexical-binding: t; -*-



;; (list 2 2)
;; (funcall (wtf 4) 3)

;; (lambda (x) (* x x))
(require 'request)

(defun rapmotz-fetch (word succ)
  (request
   "http://localhost:8080/indexplain.php"
   :params (list '("sourcelanguage" . "English") (cons "mytext"  word))
   :parser 'buffer-string
   :success succ))



(defun rapmotz-show-translation (mot)
  (interactive "sMot:")
  (rapmotz-fetch mot (function*
                         (lambda (&key data &allow-other-keys)
                           (message data)))))

(defun rapmotz-insert-translation ()
  "Convert word at point (or selected region) to lower camel case."
  (interactive)
  (let* ((bounds (if (use-region-p)
                     (cons (region-beginning) (region-end))
                   (bounds-of-thing-at-point 'word)))
         (text  (when bounds  (buffer-substring-no-properties (car bounds) (cdr bounds)))))
    (when text
      (delete-region (car bounds) (cdr bounds))
      (rapmotz-fetch text
                     (function*
                      (lambda (&key data &allow-other-keys)
                        (message data)
                        (insert (s-trim data))))))))

(provide 'dutton)
