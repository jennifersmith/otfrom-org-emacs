
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#d3d3d3" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo"))))
 '(org-block-background ((t (:background "gray3"))))
 '(org-block-begin-line ((t (:background "gray13" :foreground "#008ED1" :underline "#A7A6AA"))) t)
 '(org-block-end-line ((t (:background "gray12" :foreground "#008ED1" :overline "gray41"))) t)
 '(org-column ((t (:background "#000000" :foreground "gray96"))))
 '(whitespace-indentation ((t (:background "dark slate gray" :foreground "#ff0000"))))
 '(whitespace-space-after-tab ((t (:background "dark blue" :foreground "gray88")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ag-executable "/usr/local/bin/ag")
 '(calendar-holidays
   (quote
    ((holiday-fixed 1 1 "New Year's Day")
     (holiday-easter-etc)
     (holiday-float 3 1 2 "Labour Day (Australia)")
     (holiday-float 1 1 4 "Australia Day")
     (holiday-fixed 12 25 "Christmas")
     (holiday-float 6 0 2 "Queen's birthday")
     (holiday-float 11 2 1 "Melbourne cup day"))))
 '(cider-lein-command "/usr/local/bin/lein")
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
    ("c987721d93f0858a2eec882e58c5c45b67d6492bfadae3e00c115ba2616b7fe0" "90edd91338ebfdfcd52ecd4025f1c7f731aced4c9c49ed28cfbebb3a3654840b" default)))
 '(exec-path
   (quote
    ("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9" "/Applications/Emacs.app/Contents/MacOS/libexec" "/Applications/Emacs.app/Contents/MacOS/bin" "/usr/local/bin")))
 '(gnuplot-program "/usr/local/bin/gnuplot")
 '(helm-mode t)
 '(ispell-program-name "/usr/local/bin/ispell")
 '(jabber-account-list
   (quote
    (("jensmith@fastmail.com"
      (:password . "hdjX29PKG4G")
      (:network-server . "chat.messagingengine.com")))))
 '(jabber-history-muc-enabled t)
 '(jabber-show-offline-contacts nil)
 '(js2-basic-offset 2)
 '(js2-missing-semi-one-line-override t)
 '(js2-strict-missing-semi-warning nil)
 '(org-agenda-bulk-custom-functions (quote ((66 batch-added-at))))
 '(org-agenda-category-icon-alist nil)
 '(org-agenda-custom-commands
   (quote
    (("f" "In the flat"
      ((agenda ""
               ((org-agenda-span 1)))
       (tags-todo "mums_laptop+formum")
       (tags-todo "mumsflat+formum")
       (tags-todo "formum-mumsflat-mums_laptop-hospital-@katy-@mum")
       (tags-todo "housework")
       (tags-todo "selfcare")
       (tags-todo "-formum-selfcare-housework/TODO")
       nil nil)
      nil
      ("~/Dropbox/gtd/exports/flat.html"))
     ("pe" "Priority-effort"
      ((agenda ""
               ((org-agenda-span 1)))
       (tags-todo "PRIORITY={.}"
                  ((org-agenda-prefix-format "%6e ")
                   (org-agenda-sorting-strategy
                    (quote
                     (priority-down effort-up)))))
       nil nil)
      nil
      ("~/Dropbox/gtd/exports/flat.html"))
     ("h" "In the hosp or out and about"
      ((agenda ""
               ((org-agenda-span 1)))
       (tags-todo "@mum+formum")
       (tags-todo "hospital+formum")
       (tags-todo "@katy+formum")
       (tags-todo "formum-mumsflat-mums_laptop-hospital-@katy-@mum")
       nil nil)
      nil
      ("~/Dropbox/gtd/exports/hosp.html"))
     ("c" "External calendars"
      ((agenda ""
               ((org-agenda-files
                 (quote
                  ("~/Dropbox/gtd/external/mumscalendar.org")))
                (org-agenda-span 1)))
       nil nil))
     ("d" "Daily review wat"
      ((agenda ""
               ((org-agenda-files
                 (quote
                  ("~/Dropbox/gtd/journal.org")))
                (org-agenda-span 1)
                (org-agenda-prefix-format " ")
                (org-agenda-sorting-strategy
                 (quote
                  (tag-up)))))))
     ("rs" "Review - someday maybe"
      ((tags "CATEGORY=\"somedaymaybe\"+LEVEL=2"
             ((org-agenda-overriding-header "Categories")))
       (tags "CATEGORY=\"maybesomedaymaybe\"+LEVEL=2"
             ((org-agenda-overriding-header "Inbound")))
       (tags "CATEGORY=\"somedaymaybe\"+LEVEL=3+ADDED_AT<>{.}"
             ((org-agenda-overriding-header "No added date")))
       (tags "CATEGORY=\"somedaymaybe\"+LEVEL=3"
             ((org-agenda-overriding-header "Everything"))))
      nil
      ("~/Dropbox/gtd/exports/someday-maybe.html"))
     ("rh" "Weekly review - Housekeeping"
      ((tags-todo "-{.}/TODO"
                  ((org-agenda-overriding-header "\"TODOs without tags\"")))
       (tags-todo "LAST_REPEAT<>{.}+ADDED_BY_CAPTURE<>{.}+ADDED_AT<>{.}/TODO"
                  ((org-agenda-overriding-header "\"Undated todos\"")))
       (tags "CATEGORY={^ProjectActions}+LEVEL=2+ADDED_AT<>{.}"
             ((org-agenda-overriding-header "\"Undated projects\"")))
       (stuck ""
              ((org-agenda-overriding-header "\"Stuck projects\"")))
       (tags "ADDED_AT<=\"<-2w>\"CATEGORY={^ProjectActions}+LEVEL=2"
             ((org-agenda-overriding-header "Projecst over 2 weeks old")))
       (tags-todo "ADDED_BY_CAPTURE<=\"<-1w>\"+SCHEDULED<>{.}|ADDED_AT<=\"<-1w>\"+SCHEDULED<>{.}/TODO"
                  ((org-agenda-overriding-header "\"TODOs Added over 1 weeks ago\""))))
      nil)
     ("ra" "Weekly review - Actions"
      ((tags-todo "/WAITING"
                  ((org-agenda-overriding-header "Waiting for")))
       (tags-todo "-review+SCHEDULED<\"<+1d>\"/TODO"
                  ((org-agenda-overriding-header "Scheduled todos - excluding review")))
       (tags "DEADLINE={.}-SCHEDULED>\"<now>\"/TODO"
             ((org-agenda-overriding-header "Things with deadlines")))
       (tags-todo "CATEGORY=\"NonProjectActions\"+DEADLINE<>{.}+SCHEDULED<>{.}/TODO"
                  ((org-agenda-overriding-header "Non-project todos")))
       (tags-todo "CATEGORY={^ProjectActions}+DEADLINE<>{.}+SCHEDULED<>{.}/TODO"
                  ((org-agenda-overriding-header "Project todos"))))
      nil
      ("~/Dropbox/gtd/exports/actions.html"))
     ("rp" "Weekly review - Projects"
      ((tags "CATEGORY={^ProjectActions}+LEVEL=2" nil))
      nil)
     ("rc" "weekly review - calendar"
      ((agenda ""
               ((org-agenda-overriding-header "Next two weeks")
                (org-agenda-span 14))))
      nil)
     ("rr" "review stuff"
      ((agenda ""
               ((org-agenda-overriding-header "\"Coming up\"")
                (org-agenda-tag-filter-preset
                 (quote
                  ("-review")))
                (org-agenda-span 2)))
       (stuck ""
              ((org-agenda-overriding-header "\"Stuck projects\"")))
       (tags-todo "ADDED_BY_CAPTURE<=\"<-3d>\"+SCHEDULED<>{.}|ADDED_AT<=\"<-3d>\"+SCHEDULED<>{.}/TODO"
                  ((org-agenda-overriding-header "\"Added over 3 days ago\"")))
       (tags-todo "ADDED_BY_CAPTURE<=\"<-1w>\"+SCHEDULED<>{.}|ADDED_AT<=\"<-1w>\"+SCHEDULED<>{.}/TODO"
                  ((org-agenda-overriding-header "\"Added over 1 weeks ago\"")))
       (tags "/WAITING"
             ((org-agenda-overriding-header "Waiting for")))
       (tags-todo ":frog"
                  ((org-agenda-overriding-header "\"Frogs\"")))
       (tags-todo "ALLTAGS=\":ATTACH:\"|ALLTAGS=\"\"/TODO"
                  ((org-agenda-overriding-header "\"Untagged stuff\"")))
       (tags "ADDED_AT<>{.}+LEVEL>=2+CATEGORY<>\"Journal\"+CATEGORY<>\"reference\""
             ((org-agenda-overriding-header "Needs dates"))))
      nil))))
 '(org-agenda-default-appointment-duration 20)
 '(org-agenda-files
   (quote
    ("~/Dropbox/orgjournal/20151116" "~/Dropbox/gtd/process-pending.org" "~/Dropbox/gtd/refile.org")))
 '(org-agenda-log-mode-add-notes nil)
 '(org-agenda-prefix-format
   (quote
    ((agenda . " %i %-16:c%?-12t% s")
     (timeline . "  % s")
     (todo . " %i %-16:c")
     (tags . " %i %-16:c")
     (search . " %i %-12:c"))))
 '(org-agenda-start-on-weekday nil)
 '(org-agenda-todo-ignore-scheduled (quote future))
 '(org-archive-location "archives/%s_archive::")
 '(org-attach-directory "~/Dropbox/orgattatchdata/")
 '(org-attach-git-annex-cutoff 10000 t)
 '(org-attach-method (quote mv) t)
 '(org-babel-load-languages (quote ((sh . t) (emacs-lisp . t) (ruby . t) (python . t))))
 '(org-babel-python-command "/Users/jensmith/.pyenv/shims/python")
 '(org-capture-templates
   (quote
    (("T" "Todo that can be refiled (no immediate finish)" entry
      (file+headline "~/Dropbox/gtd/refile.org" "Actions to be refiled")
      "* TODO %^{wat} :%^{tagz}:
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
   " :empty-lines-after 1)
     ("p" "New project (with no actions!) - admin only" entry
      (file+olp "~/Dropbox/gtd/process-pending.org" "Personal Projects - admin")
      "* %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:" :immediate-finish t :empty-lines-after 1)
     ("a" "appointment" entry
      (file+olp "~/Dropbox/gtd/calendar.org" "Calendar" "Appointments")
      "* APPT %^{wat}
     SCHEDULED: %^{when}t
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
   " :immediate-finish t :empty-lines-after 1)
     ("t" "tickler" entry
      (file+headline "~/Dropbox/gtd/tickler.org" "Tickler")
      "* %^{wat}
    SCHEDULED: %^{when}t
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
  " :immediate-finish t)
     ("o" "Find out more" entry
      (file+headline "~/Dropbox/gtd/refile.org" "Find out more")
      "* %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:" :prepend t :immediate-finish t)
     ("f" "Things to tidy/clean/fix" entry
      (file+headline "~/Dropbox/gtd/someday-maybe.org" "Cleaning and fixing")
      "* %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:" :prepend t :immediate-finish t)
     ("b" "things to buy" entry
      (file+headline "~/Dropbox/gtd/someday-maybe.org" "Big spending")
      "* %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
  " :immediate-finish t)
     ("n" "normal no project thingy" entry
      (file+headline "~/Dropbox/gtd/process-pending.org" "No project")
      "* TODO %^{wat} :%^{tagz}:
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
  " :immediate-finish t)
     ("N" "no project thingy with date" entry
      (file+headline "~/Dropbox/gtd/process-pending.org" "No project")
      "* TODO %^{wat} :%^{tagz}:
     SCHEDULED: %^{when}t
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
  " :immediate-finish t)
     ("c" "client no project thingy" entry
      (file+headline "~/Dropbox/gtd/process-pending.org" "Client no proj")
      "* TODO %^{wat} :%^{tagz}:client_work:
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
  " :immediate-finish t)
     ("w" "waiting for something" entry
      (file+headline "~/Dropbox/gtd/process-pending.org" "No project")
      "* WAITING %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
  " :immediate-finish t)
     ("s" "Other shopping" entry
      (file+headline "~/Dropbox/gtd/groceries.org" "Other shopping")
      "* %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
 " :immediate-finish t)
     ("g" "Grocery shopping" entry
      (file+headline "~/Dropbox/gtd/groceries.org" "Groceries")
      "* %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
 " :immediate-finish t)
     ("r" "collect for processing in refile" entry
      (file+headline "~/Dropbox/gtd/refile.org" "Refile")
      "* %^{wat}
    :PROPERTIES:
    :ADDED_AT: %U
    :END:
 " :immediate-finish t))) t)
 '(org-columns-default-format
   "%40ITEM %TODO %3PRIORITY %TAGS %17Effort(Estimated Effort){:} %CLOCKSUM")
 '(org-confirm-babel-evaluate nil)
 '(org-deadline-warning-days 5)
 '(org-default-notes-file "~/Dropbox/gtd/refile.org")
 '(org-directory "~/Dropbox/gtd")
 '(org-export-backends (quote (ascii html icalendar latex odt)))
 '(org-export-with-drawers (quote (not)))
 '(org-global-properties
   (quote
    (("Effort_ALL" . "0 0:01 0:10 0:25 0:50 1:25 1:50 2:15 2:40"))))
 '(org-goto-max-level 6)
 '(org-habit-completed-glyph 10004)
 '(org-habit-following-days 3)
 '(org-habit-graph-column 40)
 '(org-habit-preceding-days 28)
 '(org-habit-show-all-today nil)
 '(org-habit-show-done-always-green t)
 '(org-habit-show-habits-only-for-today nil)
 '(org-icalendar-alarm-time 5)
 '(org-icalendar-combined-agenda-file "/Users/jensmith/Dropbox/Public/org.ics")
 '(org-icalendar-exclude-tags (quote ("tickler" "consuming" "habits" "consumed")))
 '(org-icalendar-use-scheduled (quote (event-if-todo)))
 '(org-image-actual-width (quote (200)))
 '(org-journal-dir "~/Dropbox/orgjournal/")
 '(org-lowest-priority 69)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-pomodoro-long-break-sound "/Users/jensmith/Dropbox/gtd/scripts/heavygong.wav")
 '(org-pomodoro-sound-args "-v 0.01")
 '(org-ref-bibliography-entry-format
   (quote
    (("article" . "%a, %t, <i>%j</i>, <b>%v(%n)</b>, %p (%y). <a href=\"%U\">link</a>. <a href=\"http://dx.doi.org/%D\">doi</a>.")
     ("book" . "%a, %S, %t, %u (%y).")
     ("misc" . "%t, %p <a href=\"%U\">link</a>")
     ("techreport" . "%a, %t, %i, %u (%y).")
     ("proceedings" . "%e, %t in %S, %u (%y).")
     ("inproceedings" . "%a, %t, %p, in %b, edited by %e, %u (%y)"))))
 '(org-refile-targets
   (quote
    ((org-agenda-files :maxlevel . 3)
     (nil :maxlevel . 2))))
 '(org-refile-use-outline-path nil)
 '(org-sort-agenda-notime-is-late nil)
 '(org-stuck-projects
   (quote
    ("CATEGORY={^ProjectActions}+LEVEL=2"
     ("TODO" "WAITING" "APPT")
     nil "")))
 '(org-use-tag-inheritance t)
 '(sparql-default-base-url "http://live.dbpedia.org/sparql")
 '(sparql-default-format "application/sparql-results+json")
 '(sparql-prompt-base-url nil)
 '(whitespace-line-column 120))
