;;; doom-themes-common.el -*- lexical-binding: t; -*-

(defun doom-themes-common-faces ()
  "TODO"
  '(;; --- custom faces -----------------------
    (doom-modeline-error
     :background (doom-darken red 0.25)
     :foreground base0
     :distant-foreground base0)

    ;; --- base faces -------------------------
    (bold        :weight 'bold :foreground (unless bold base8))
    (italic      :slant  'italic)
    (bold-italic :inherit '(bold italic))

    (default :background bg :foreground fg)
    (fringe :inherit 'default :foreground base4)
    (region               :background region     :foreground nil   :distant-foreground (doom-darken fg 0.2))
    (highlight            :background highlight  :foreground base0 :distant-foreground base8)
    (cursor               :background highlight)
    (shadow               :foreground base5)
    (minibuffer-prompt    :foreground highlight)
    (tooltip              :background base3 :foreground fg)
    (secondary-selection  :background grey)
    (lazy-highlight       :background dark-blue  :foreground base8 :distant-foreground base0 :weight 'bold)
    (match                :foreground green      :background base0 :weight 'bold)
    (trailing-whitespace  :background red)
    (nobreak-space        :inherit 'default :underline nil)
    (vertical-border      :background vertical-bar :foreground vertical-bar)
    (link                 :foreground highlight :underline t :weight 'bold)

    (error   :foreground error)
    (warning :foreground warning)
    (success :foreground success)

    (font-lock-builtin-face              :foreground builtin :slant 'italic :weight 'light)
    (font-lock-comment-face              :foreground comments)
    (font-lock-comment-delimiter-face    :inherit 'font-lock-comment-face)
    (font-lock-doc-face                  :inherit 'font-lock-comment-face :foreground doc-comments)
    (font-lock-constant-face             :foreground constants)
    (font-lock-function-name-face        :foreground functions :weight 'semi-bold)
    (font-lock-keyword-face              :foreground keywords :weight 'semi-bold)
    (font-lock-string-face               :foreground strings :weight 'semi-bold)
    (font-lock-type-face                 :foreground type :slant 'italic)
    (font-lock-variable-name-face        :foreground variables)
    (font-lock-warning-face              :inherit 'warning)
    (font-lock-negation-char-face        :inherit 'bold :foreground operators)
    (font-lock-preprocessor-face         :inherit 'bold :foreground operators)
    (font-lock-preprocessor-char-face    :inherit 'bold :foreground operators)
    (font-lock-regexp-grouping-backslash :inherit 'bold :foreground operators)
    (font-lock-regexp-grouping-construct :inherit 'bold :foreground operators)

    ;; mode-line / header-line
    (mode-line           :background bg     :foreground fg     :distant-foreground bg)
    (mode-line-inactive  :background bg-alt :foreground fg-alt :distant-foreground bg-alt)
    (mode-line-emphasis  :foreground highlight :distant-foreground bg)
    (mode-line-highlight :inherit 'highlight :distant-foreground bg)
    (mode-line-buffer-id :weight 'bold)
    (header-line :inherit 'mode-line :distant-foreground bg)

    ;; 1. Line number faces must explicitly disable its text style attributes
    ;;    because nearby faces may "bleed" into the line numbers otherwise.
    ;; 2. All other line number plugin faces should &inherit from these.
    (line-number
     :inherit 'default
     :foreground base5 :distant-foreground nil
     :weight 'normal :italic nil :underline nil :strike-through nil)
    (line-number-current-line
     :inherit '(hl-line default)
     :foreground fg :distant-foreground nil
     :weight 'normal :italic nil :underline nil :strike-through nil)


    ;; --- built-in plugin faces --------------
    ;; cperl
    (cperl-array-face          :weight 'bold :inherit 'font-lock-variable-name-face)
    (cperl-hash-face           :weight 'bold :slant 'italic :inherit 'font-lock-variable-name-face)
    (cperl-nonoverridable-face :inherit 'font-lock-builtin-face)


    ;; custom
    (custom-button                  :foreground blue   :background bg     :box '(:line-width 1 :style none))
    (custom-button-unraised         :foreground violet :background bg     :box '(:line-width 1 :style none))
    (custom-button-pressed-unraised :foreground bg     :background violet :box '(:line-width 1 :style none))
    (custom-button-pressed          :foreground bg     :background blue   :box '(:line-width 1 :style none))
    (custom-button-mouse            :foreground bg     :background blue   :box '(:line-width 1 :style none))

    (custom-variable-button   :foreground green :underline t)
    (custom-saved             :foreground green :background (doom-blend green bg 0.2) :weight 'bold)
    (custom-comment           :foreground fg :background region)
    (custom-comment-tag       :foreground grey)
    (custom-modified          :foreground blue :background (doom-blend blue bg 0.2))
    (custom-variable-tag      :foreground magenta)
    (custom-visibility        :foreground blue :underline nil)
    (custom-group-subtitle    :foreground red)
    (custom-group-tag         :foreground violet)
    (custom-group-tag-1       :foreground blue)
    (custom-set               :foreground yellow :background bg)
    (custom-themed            :foreground yellow :background bg)
    (custom-invalid           :foreground red :background (doom-blend red bg 0.2))
    (custom-variable-obsolete :foreground grey :background bg)
    (custom-state             :foreground green :background (doom-blend green bg 0.2))
    (custom-changed           :foreground blue :background bg)

    ;; dired
    (dired-directory :foreground builtin)
    (dired-ignored   :foreground comments)
    (dired-flagged    :foreground red)
    (dired-header     :foreground blue :weight 'bold)
    (dired-mark       :foreground orange :weight 'bold)
    (dired-marked     :foreground magenta :weight 'bold)
    (dired-perm-write :foreground fg :underline t)
    (dired-symlink    :foreground cyan :weight 'bold)
    (dired-warning    :foreground warning)


    ;; ediff
    (ediff-fine-diff-A    :background (doom-blend selection bg 0.7) :weight 'bold)
    (ediff-fine-diff-B    :inherit 'ediff-fine-diff-A)
    (ediff-fine-diff-C    :inherit 'ediff-fine-diff-A)
    (ediff-current-diff-A :background (doom-blend selection bg 0.3))
    (ediff-current-diff-B :inherit 'ediff-current-diff-A)
    (ediff-current-diff-C :inherit 'ediff-current-diff-A)
    (ediff-even-diff-A    :inherit 'hl-line)
    (ediff-even-diff-B    :inherit 'ediff-even-diff-A)
    (ediff-even-diff-C    :inherit 'ediff-even-diff-A)
    (ediff-odd-diff-A     :inherit 'ediff-even-diff-A)
    (ediff-odd-diff-B     :inherit 'ediff-odd-diff-A)
    (ediff-odd-diff-C     :inherit 'ediff-odd-diff-A)

    ;; elfeed
    (elfeed-log-debug-level-face :foreground comments)
    (elfeed-log-error-level-face :inherit 'error)
    (elfeed-log-info-level-face  :inherit 'success)
    (elfeed-log-warn-level-face  :inherit 'warning)
    (elfeed-search-date-face     :foreground violet)
    (elfeed-search-feed-face     :foreground blue :font "Iosevka" :weight 'extralight)
    (elfeed-search-tag-face      :foreground comments :font "Iosevka" :weight 'extralight)
    (elfeed-search-title-face    :foreground base6 :font "SF UI Display")
    (elfeed-search-filter-face   :foreground violet)
    (elfeed-search-unread-count-face :foreground yellow)
    (elfeed-search-unread-title-face :foreground fg :font "SF UI Display" :weight 'bold)

    ;; eshell
    (eshell-prompt        :foreground base7)
    (eshell-ls-archive    :foreground magenta)
    (eshell-ls-backup     :foreground yellow)
    (eshell-ls-clutter    :foreground red)
    (eshell-ls-directory  :foreground blue)
    (eshell-ls-executable :foreground green)
    (eshell-ls-missing    :foreground red)
    (eshell-ls-product    :foreground orange)
    (eshell-ls-readonly   :foreground orange)
    (eshell-ls-special    :foreground violet)
    (eshell-ls-symlink    :foreground cyan)
    (eshell-ls-unreadable :foreground base5)

    ;; flx-ido
    (flx-highlight-face :weight 'bold :foreground yellow :underline nil)

    ;; hl-line
    (hl-line :background bg-alt :distant-foreground fg-alt)

    ;; ido
    (ido-first-match :foreground orange)
    (ido-indicator   :foreground red :background bg)
    (ido-only-match  :foreground green)
    (ido-subdir      :foreground violet)
    (ido-virtual     :foreground comments)

    ;; isearch
    (isearch :background highlight :foreground base0 :weight 'bold)

    ;; linum
    ((linum &inherit line-number))

    ;; message
    (message-header-subject :foreground base8)
    (message-header-name :foreground green)
    (message-header-to :foreground comments)
    (message-header-other :foreground comments)

    ;; term
    (term               :foreground fg :background bg)
    (term-bold          :weight 'bold)
    (term-color-black   :background bg   :foreground base0)
    (term-color-red     :background red     :foreground red)
    (term-color-green   :background green   :foreground green)
    (term-color-yellow  :background yellow  :foreground yellow)
    (term-color-blue    :background blue    :foreground blue)
    (term-color-magenta :background magenta :foreground magenta)
    (term-color-cyan    :background cyan    :foreground cyan)
    (term-color-white   :background base8   :foreground base8)

    ;; window-divider
    (window-divider :inherit 'vertical-border)
    (window-divider-first-pixel :inherit 'window-divider)
    (window-divider-last-pixel  :inherit 'window-divider)

    (internal-border :foreground (doom-darken bg-alt 0.1) :background (doom-darken bg-alt 0.1))
    (border :foreground fg :background fg)

    ;; --- plugin faces -----------------------
    ;; all-the-icons
    (all-the-icons-red      :foreground red)
    (all-the-icons-lred     :foreground (doom-lighten red 0.3))
    (all-the-icons-dred     :foreground (doom-darken red 0.3))
    (all-the-icons-green    :foreground green)
    (all-the-icons-lgreen   :foreground (doom-lighten green 0.3))
    (all-the-icons-dgreen   :foreground (doom-darken green 0.3))
    (all-the-icons-yellow   :foreground yellow)
    (all-the-icons-lyellow  :foreground (doom-lighten yellow 0.3))
    (all-the-icons-dyellow  :foreground (doom-darken yellow 0.3))
    (all-the-icons-blue     :foreground blue)
    (all-the-icons-blue-alt :foreground teal)
    (all-the-icons-lblue    :foreground (doom-lighten blue 0.3))
    (all-the-icons-dblue    :foreground dark-blue)
    (all-the-icons-maroon   :foreground magenta)
    (all-the-icons-lmaroon  :foreground (doom-lighten magenta 0.3))
    (all-the-icons-dmaroon  :foreground (doom-darken magenta 0.3))
    (all-the-icons-purple   :foreground violet)
    (all-the-icons-lpurple  :foreground (doom-lighten violet 0.3))
    (all-the-icons-dpurple  :foreground (doom-darken violet 0.3))
    (all-the-icons-cyan     :foreground cyan)
    (all-the-icons-cyan-alt :foreground cyan)
    (all-the-icons-lcyan    :foreground (doom-lighten cyan 0.3))
    (all-the-icons-dcyan    :foreground dark-cyan)
    (all-the-icons-pink     :foreground (doom-lighten red 0.35))
    (all-the-icons-lpink    :foreground (doom-lighten red 0.55))
    (all-the-icons-dpink    :foreground red)
    (all-the-icons-silver   :foreground grey)
    (all-the-icons-lsilver  :foreground (doom-lighten grey 0.3))
    (all-the-icons-dsilver  :foreground (doom-darken grey 0.3))

    ;; twitter
    (twitter-divider :underline `(:color ,(doom-blend vertical-bar bg 0.8)))
    ;; wordsmith
    (wordsmith-noun-face :underline `(:color ,blue))
    (wordsmith-verb-face :underline `(:color ,green))
    (wordsmith-default-face :underline `(:color ,fg))
    ;; avy
    (avy-background-face :foreground comments)
    (avy-lead-face :background highlight :foreground bg :distant-foreground fg :weight 'bold)
    (avy-lead-face-0
     (&all   :inherit 'avy-lead-face)
     (&dark  :background (doom-lighten highlight 0.3))
     (&light :background (doom-darken highlight 0.3)))
    (avy-lead-face-1
     (&all   :inherit 'avy-lead-face)
     (&dark  :background (doom-lighten highlight 0.6))
     (&light :background (doom-darken highlight 0.6)))
    (avy-lead-face-2
     (&all   :inherit 'avy-lead-face)
     (&dark  :background (doom-lighten highlight 0.9))
     (&light :background (doom-darken highlight 0.9)))

    ;; bookmark+
    (bmkp-*-mark                     :foreground bg     :background yellow)
    (bmkp->-mark                     :foreground yellow)
    (bmkp-D-mark                     :foreground bg     :background red)
    (bmkp-X-mark                     :foreground red)
    (bmkp-a-mark                                        :background red)
    (bmkp-bad-bookmark               :foreground bg     :background yellow)
    (bmkp-bookmark-file              :foreground violet :background bg-alt)
    (bmkp-bookmark-list                                 :background bg-alt)
    (bmkp-buffer                     :foreground blue)
    (bmkp-desktop                    :foreground bg     :background violet)
    (bmkp-file-handler                                  :background red)
    (bmkp-function                   :foreground green)
    (bmkp-gnus                       :foreground orange)
    (bmkp-heading                    :foreground yellow)
    (bmkp-info                       :foreground cyan)
    (bmkp-light-autonamed            :foreground bg-alt :background cyan)
    (bmkp-light-autonamed-region     :foreground bg-alt :background red)
    (bmkp-light-fringe-autonamed     :foreground bg-alt :background violet)
    (bmkp-light-fringe-non-autonamed :foreground bg-alt :background green)
    (bmkp-light-mark                 :foreground bg     :background cyan)
    (bmkp-light-non-autonamed        :foreground bg     :background violet)
    (bmkp-light-non-autonamed-region :foreground bg     :background red)
    (bmkp-local-directory            :foreground bg     :background violet)
    (bmkp-local-file-with-region     :foreground yellow)
    (bmkp-local-file-without-region  :foreground comments)
    (bmkp-man                        :foreground violet)
    (bmkp-no-jump                    :foreground comments)
    (bmkp-no-local                   :foreground yellow)
    (bmkp-non-file                   :foreground green)
    (bmkp-remote-file                :foreground orange)
    (bmkp-sequence                   :foreground blue)
    (bmkp-su-or-sudo                 :foreground red)
    (bmkp-t-mark                     :foreground violet)
    (bmkp-url                        :foreground blue :underline t)
    (bmkp-variable-list              :foreground green)

    ;; calfw
    (cfw:face-title               :foreground blue                    :weight 'bold :height 2.0 :inherit 'variable-pitch)
    (cfw:face-header              :foreground (doom-blend blue bg 0.8) :weight 'bold)
    (cfw:face-sunday              :foreground (doom-blend red bg 0.8) :weight 'bold)
    (cfw:face-saturday            :foreground (doom-blend red bg 0.8) :weight 'bold)
    (cfw:face-holiday            :foreground nil :background bg-alt   :weight 'bold)
    (cfw:face-grid                :foreground vertical-bar)
    (cfw:face-periods             :foreground yellow)
    (cfw:face-toolbar             :foreground nil :background nil)
    (cfw:face-toolbar-button-off  :foreground base6                   :weight 'bold :inherit 'variable-pitch)
    (cfw:face-toolbar-button-on   :foreground blue                    :weight 'bold :inherit 'variable-pitch)
    (cfw:face-default-content     :foreground fg)
    (cfw:face-day-title           :foreground fg :weight 'bold)
    (cfw:face-today-title         :foreground bg  :background blue    :weight 'bold)
    (cfw:face-default-day                                             :weight 'bold)
    (cfw:face-today               :foreground nil :background nil     :weight 'bold)
    (cfw:face-annotation          :foreground violet)
    (cfw:face-disable             :foreground grey)
    (cfw:face-select              :background region)

    ;; company
    (company-tooltip            :inherit 'tooltip)
    (company-tooltip-common                           :foreground highlight :distant-foreground base0 :weight 'bold)
    (company-tooltip-search     :background highlight :foreground bg :distant-foreground fg :weight 'bold)
    (company-tooltip-search-selection :background (doom-darken selection 0.25))
    (company-tooltip-selection  :background region :weight 'bold)
    (company-tooltip-mouse      :background magenta   :foreground bg :distant-foreground fg)
    (company-tooltip-annotation                       :foreground violet)
    (company-scrollbar-bg       :inherit 'tooltip)
    (company-scrollbar-fg       :background highlight)
    (company-preview                              :foreground comments :background bg :weight 'extralight)
    (company-preview-common     :background base3 :foreground comments :background bg :weight 'extralight)
    (company-preview-search     :inherit 'company-tooltip-search)
    (company-template-field     :inherit 'match)
    (company-box-scrollbar :foreground highlight :background base3)
    (company-box-background :background (doom-darken bg-alt 0.1))
    (company-box-selection :inherit 'company-tooltip-selection)
    (company-box-annotation :inherit 'company-tooltip-annotation)
    (company-box-candidate :foreground fg)

    ;; circe
    (circe-fool :foreground doc-comments)
    (circe-highlight-nick-face :weight 'bold :foreground constants)
    (circe-prompt-face :weight 'bold :foreground highlight)
    (circe-server-face :foreground comments)
    (circe-my-message-face :weight 'bold)

    ;; diff-hl
    (diff-hl-change :foreground vc-modified)
    (diff-hl-delete :foreground vc-deleted)
    (diff-hl-insert :foreground vc-added)

    ;; diff-mode
    (diff-added   :inherit 'hl-line :foreground green)
    (diff-changed :foreground violet)
    (diff-context
     (&dark  :foreground (doom-darken fg 0.12))
     (&light :foreground (doom-lighten fg 0.12)))
    (diff-removed :foreground red :background base3)
    (diff-header  :foreground cyan :background nil)
    (diff-file-header :foreground blue :background nil)
    (diff-hunk-header :foreground violet)
    (diff-refine-added   :inherit 'diff-added :inverse-video t)
    (diff-refine-changed :inherit 'diff-changed :inverse-video t)
    (diff-refine-removed :inherit 'diff-removed :inverse-video t)

    ;; dired+
    (diredp-file-name              :foreground base8)
    (diredp-dir-name               :foreground base8 :weight 'bold)
    (diredp-ignored-file-name      :foreground base5)
    (diredp-compressed-file-suffix :foreground base5)
    (diredp-symlink                :foreground violet)
    (diredp-dir-heading            :foreground blue  :weight 'bold)
    (diredp-file-suffix            :foreground violet)
    (diredp-read-priv              :foreground magenta)
    (diredp-write-priv             :foreground green)
    (diredp-exec-priv              :foreground yellow)
    (diredp-rare-priv              :foreground red   :weight 'bold)
    (diredp-dir-priv               :foreground blue  :weight 'bold)
    (diredp-no-priv                :foreground base5)
    (diredp-number                 :foreground magenta)
    (diredp-date-time              :foreground blue)

    ;; dired-k
    (dired-k-directory :foreground blue)

    ;; dired-subtree
    (dired-subtree-depth-1-face :background (doom-darken bg-alt 0.02))
    (dired-subtree-depth-2-face :background (doom-darken bg-alt 0.04))
    (dired-subtree-depth-3-face :background (doom-darken bg-alt 0.06))
    (dired-subtree-depth-4-face :background (doom-darken bg-alt 0.08))
    (dired-subtree-depth-5-face :background (doom-darken bg-alt 0.10))
    (dired-subtree-depth-6-face :background (doom-darken bg-alt 0.12))


    (diredfl-autofile-name          :foreground base4)
    (diredfl-compressed-file-name   :foreground yellow)
    (diredfl-compressed-file-suffix :foreground (doom-blend orange bg-alt 0.6))
    (diredfl-date-time              :foreground cyan :weight 'light)
    (diredfl-deletion               :foreground red :background (doom-blend red bg-alt 0.2) :weight 'bold)
    (diredfl-deletion-file-name     :foreground red :background (doom-blend red bg-alt 0.2))
    (diredfl-dir-heading            :foreground blue :weight 'bold)
    (diredfl-dir-name               :foreground blue)
    (diredfl-dir-priv               :foreground blue)
    (diredfl-exec-priv              :foreground green)
    (diredfl-executable-tag         :foreground green)
    (diredfl-file-name              :foreground fg)
    (diredfl-file-suffix            :foreground (doom-blend fg bg-alt 0.6))
    (diredfl-flag-mark              :foreground yellow :background (doom-blend yellow bg-alt 0.2) :weight 'bold)
    (diredfl-flag-mark-line         :background (doom-blend yellow bg-alt 0.1))
    (diredfl-ignored-file-name      :foreground comments)
    (diredfl-link-priv              :foreground violet)
    (diredfl-no-priv                :foreground fg)
    (diredfl-number                 :foreground orange)
    (diredfl-other-priv             :foreground magenta)
    (diredfl-rare-priv              :foreground fg)
    (diredfl-read-priv              :foreground yellow)
    (diredfl-symlink                :foreground violet)
    (diredfl-tagged-autofile-name   :foreground base5)
    (diredfl-write-priv             :foreground red)

    ;; ein
    (ein:notification-tab-normal   :background base2)
    (ein:notification-tab-selected :background base2)
    (ein:cell-output-stderr        :background (doom-blend bg red 0.7))
    (ein:cell-heading-1            :inherit 'outline-1)
    (ein:cell-heading-2            :inherit 'outline-2)
    (ein:cell-heading-3            :inherit 'outline-3)
    (ein:cell-heading-4            :inherit 'outline-4)
    (ein:cell-heading-5            :inherit 'outline-5)
    (ein:cell-heading-6            :inherit 'outline-6)
    (ein:cell-input-area           :background (doom-blend base4 bg 0.15))
    (ein:cell-input-prompt         :background (doom-blend base6 bg 0.25) :weight 'light)
    (ein:cell-output-prompt        :inherit 'ein:cell-input-prompt)

    ;; elscreen
    (elscreen-tab-background-face     :background bg)
    (elscreen-tab-control-face        :background bg     :foreground bg)
    (elscreen-tab-current-screen-face :background bg-alt :foreground fg)
    (elscreen-tab-other-screen-face   :background bg     :foreground fg-alt)

    ;; evil
    (evil-ex-info                   :foreground error :slant 'italic)
    (evil-ex-substitute-matches     :background base0 :foreground red   :strike-through t :weight 'bold)
    (evil-ex-substitute-replacement :background base0 :foreground green :weight 'bold)
    (evil-search-highlight-persist-highlight-face :inherit 'lazy-highlight)

    ;; evil-mc
    (evil-mc-cursor-default-face :background magenta :foreground base0 :inverse-video nil)
    (evil-mc-region-face :inherit 'region)
    (evil-mc-cursor-bar-face :height 1 :background magenta :foreground base0)
    (evil-mc-cursor-hbar-face :underline `(:color ,highlight))

    ;; evil-snipe
    (evil-snipe-first-match-face :foreground highlight :background dark-blue :weight 'bold)
    (evil-snipe-matches-face     :foreground highlight :underline t :weight 'bold)

    ;; evil-googles
    (evil-goggles-default-face               :inherit nil :background region)
    (evil-goggles-commentary-face            :inherit nil :background region)
    (evil-goggles-shift-face                 :inherit nil :background (doom-blend blue   bg 0.5))
    (evil-goggles-join-face                  :inherit nil :background (doom-blend green  bg 0.5))
    (evil-goggles-delete-face                :inherit nil :background (doom-blend red    bg 0.5))
    (evil-goggles-undo-redo-add-face         :inherit nil :background (doom-blend green  bg 0.5))
    (evil-goggles-yank-face                  :inherit nil :background (doom-blend yellow bg 0.5))
    (evil-goggles-surround-face              :inherit nil :background (doom-blend blue   bg 0.5))
    (evil-goggles-fill-and-move-face         :inherit nil :background (doom-blend blue   bg 0.5))
    (evil-goggles-indent-face                :inherit nil :background (doom-blend blue   bg 0.5))
    (evil-goggles-set-marker-face            :inherit nil :background (doom-blend violet bg 0.5))
    (evil-goggles-undo-redo-change-face      :inherit nil :background (doom-blend orange bg 0.5))
    (evil-goggles-undo-redo-remove-face      :inherit nil :background (doom-blend red    bg 0.5))
    (evil-goggles-paste-face                 :inherit nil :background (doom-blend green  bg 0.5))
    (evil-goggles-replace-with-register-face :inherit nil :background (doom-blend orange bg 0.5))


    ;; keycast
    (keycast-key              :foreground blue :weight 'bold)
    (keycast-command          :foreground teal :weight 'bold)

    ;; flycheck
    (flycheck-error     :underline `(:style wave :color ,red))
    (flycheck-warning   :underline `(:style wave :color ,yellow))
    (flycheck-info      :underline `(:style wave :color ,green))
    (flycheck-posframe-face :inherit nil :fg fg :bg bg-alt :font "SF Compact Display")
    (flycheck-posframe-info-face :inherit 'flycheck-posframe-face)
    (flycheck-posframe-warning-face :inherit 'flycheck-posframe-face :foreground warning)
    (flycheck-posframe-error-face :inherit 'flycheck-posframe-face :foreground error)

    ;; flymake
    (flymake-warnline :background bg :underline `(:style wave :color ,orange))
    (flymake-errline  :background bg :underline `(:style wave :color ,red))

    ;; flyspell
    (flyspell-incorrect :underline `(:style wave :color ,error) :inherit 'unspecified)
    ;; langtools
    (langtool-correction-face :foreground green :background (doom-blend green bg 0.3) :slant 'italic :weight 'bold)
    (langtool-errline :foreground green :background (doom-blend green bg 0.3) :slant 'italic)
    ;; git-commit
    (git-commit-summary :foreground strings)
    (git-commit-overlong-summary :inherit 'error :background base0 :slant 'italic :weight 'bold)
    (git-commit-nonempty-second-line :inherit 'git-commit-overlong-summary)
    (git-commit-note :foreground cyan :slant 'italic)
    (git-commit-pseudo-header :foreground doc-comments :slant 'italic)
    (git-commit-known-pseudo-header :foreground doc-comments :weight 'bold :slant 'italic)
    (git-commit-comment-branch-local :foreground magenta)
    (git-commit-comment-branch-remote :foreground green)
    (git-commit-comment-detached :foreground orange)
    (git-commit-comment-heading :foreground keywords)
    (git-commit-comment-file :foreground violet)
    (git-commit-comment-action)

    ;; git-gutter
    (git-gutter:modified :foreground vc-modified)
    (git-gutter:added    :foreground vc-added)
    (git-gutter:deleted  :foreground vc-deleted)

    ;; git-gutter+
    (git-gutter+-modified :foreground vc-modified :background nil)
    (git-gutter+-added    :foreground vc-added :background nil)
    (git-gutter+-deleted  :foreground vc-deleted :background nil)

    ;; git-gutter-fringe
    ((git-gutter-fr:modified &inherit git-gutter:modified))
    ((git-gutter-fr:added    &inherit git-gutter:added))
    ((git-gutter-fr:deleted  &inherit git-gutter:deleted))

    ;; gnus
    (gnus-group-mail-1           :weight 'bold :foreground fg)
    (gnus-group-mail-2           :inherit 'gnus-group-mail-1)
    (gnus-group-mail-3           :inherit 'gnus-group-mail-1)
    (gnus-group-mail-1-empty     :foreground base5)
    (gnus-group-mail-2-empty     :inherit 'gnus-group-mail-1-empty)
    (gnus-group-mail-3-empty     :inherit 'gnus-group-mail-1-empty)
    (gnus-group-news-1           :inherit 'gnus-group-mail-1)
    (gnus-group-news-2           :inherit 'gnus-group-news-1)
    (gnus-group-news-3           :inherit 'gnus-group-news-1)
    (gnus-group-news-4           :inherit 'gnus-group-news-1)
    (gnus-group-news-5           :inherit 'gnus-group-news-1)
    (gnus-group-news-6           :inherit 'gnus-group-news-1)
    (gnus-group-news-1-empty     :inherit 'gnus-group-mail-1-empty)
    (gnus-group-news-2-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-3-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-4-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-5-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-news-6-empty     :inherit 'gnus-groupnews-1-empty)
    (gnus-group-mail-low         :inherit 'gnus-group-mail-1 :weight 'normal)
    (gnus-group-mail-low-empty   :inherit 'gnus-group-mail-1-empty)
    (gnus-group-news-low         :inherit 'gnus-group-mail-1 :foreground base5)
    (gnus-group-news-low-empty   :inherit 'gnus-group-news-low :weight 'normal)
    (gnus-header-content         :inherit 'message-header-other)
    (gnus-header-from            :inherit 'message-header-other)
    (gnus-header-name            :inherit 'message-header-name)
    (gnus-header-newsgroups      :inherit 'message-header-other)
    (gnus-header-subject         :inherit 'message-header-subject)
    (gnus-summary-cancelled      :foreground red :strike-through t)
    (gnus-summary-high-ancient   :foreground (doom-lighten base5 0.2) :inherit 'italic)
    (gnus-summary-high-read      :foreground (doom-lighten fg 0.2))
    (gnus-summary-high-ticked    :foreground (doom-lighten magenta 0.2))
    (gnus-summary-high-unread    :foreground (doom-lighten green 0.2))
    (gnus-summary-low-ancient    :foreground (doom-darken base5 0.2) :inherit 'italic)
    (gnus-summary-low-read       :foreground (doom-darken fg 0.2))
    (gnus-summary-low-ticked     :foreground (doom-darken magenta 0.2))
    (gnus-summary-low-unread     :foreground (doom-darken green 0.2))
    (gnus-summary-normal-ancient :foreground base5 :inherit 'italic)
    (gnus-summary-normal-read    :foreground fg)
    (gnus-summary-normal-ticked  :foreground magenta)
    (gnus-summary-normal-unread  :foreground green :inherit 'bold)
    (gnus-summary-selected       :foreground blue :weight 'bold)
    (gnus-cite-1                 :foreground violet)
    (gnus-cite-2                 :foreground violet)
    (gnus-cite-3                 :foreground violet)
    (gnus-cite-4                 :foreground green)
    (gnus-cite-5                 :foreground green)
    (gnus-cite-6                 :foreground green)
    (gnus-cite-7                 :foreground magenta)
    (gnus-cite-8                 :foreground magenta)
    (gnus-cite-9                 :foreground magenta)
    (gnus-cite-10                :foreground yellow)
    (gnus-cite-11                :foreground yellow)
    (gnus-signature              :foreground yellow)
    (gnus-x-face                 :background base5 :foreground fg)

    ;; helm
    (helm-selection
     (&all :inherit 'bold :background selection)
     (&dark  :distant-foreground highlight)
     (&light :distant-foreground base0))
    (helm-match :foreground highlight :distant-foreground base8 :underline t)
    (helm-source-header          :background base2 :foreground base5)
    (helm-swoop-target-line-face :foreground highlight :inverse-video t)
    (helm-visible-mark           :inherit '(bold highlight))
    (helm-ff-file                :foreground fg)
    (helm-ff-prefix              :foreground keywords)
    (helm-ff-dotted-directory    :foreground grey)
    (helm-ff-directory           :foreground variables)
    (helm-ff-executable          :foreground base8 :inherit 'italic)
    (helm-grep-match             :foreground highlight :distant-foreground red)
    (helm-grep-file              :foreground methods)
    (helm-grep-lineno            :foreground base5)
    (helm-grep-finish            :foreground green)
    (helm-swoop-target-line-face       :foreground highlight :inverse-video t)
    (helm-swoop-target-line-block-face :foreground yellow)
    (helm-swoop-target-word-face       :foreground green :inherit 'bold)
    (helm-swoop-target-number-face     :foreground base5)

    ;; helpful
    (helpful-heading :inherit 'outline-3)

    ;; highlight-indentation-mode
    (highlight-indentation-face                :inherit 'hl-line)
    (highlight-indentation-current-column-face :background base1)
    (highlight-indentation-guides-odd-face     :inherit 'highlight-indentation-face)
    (highlight-indentation-guides-even-face    :inherit 'highlight-indentation-face)

    ;; highlight-quoted-mode
    (highlight-quoted-symbol :foreground type)
    (highlight-quoted-quote  :foreground operators)

    ;; highlight-numbers-mode
    (highlight-numbers-number :inherit 'bold :foreground numbers)

    ;; hi
    (hi-yellow :foreground yellow :background (doom-blend yellow bg 0.3))
    (hi-blue :foreground blue :background (doom-blend blue bg 0.3))
    (hi-pink :foreground red :background (doom-blend red bg 0.3))
    (hi-green :foreground green :background (doom-blend green bg 0.3))

    ;; hlinum
    (linum-highlight-face :foreground fg :distant-foreground nil :weight 'normal)

    ;; hl-todo
    (hl-todo :foreground red :weight 'bold)

    ;; hydra
    (hydra-face-red      :foreground red     :weight 'bold)
    (hydra-face-blue     :foreground blue    :weight 'bold)
    (hydra-face-amaranth :foreground magenta :weight 'bold)
    (hydra-face-pink     :foreground violet  :weight 'bold)
    (hydra-face-teal     :foreground teal    :weight 'bold)

    ;; iedit
    (iedit-occurrence :foreground magenta :weight 'bold :inverse-video t)
    (iedit-read-only-occurrence :inherit 'region)

    ;; imenu-list
    ;; (imenu-list-entry-face)
    (imenu-list-entry-face-0 :foreground highlight)
    (imenu-list-entry-subalist-face-0 :inherit 'imenu-list-entry-face-0 :weight 'bold)
    (imenu-list-entry-face-1 :foreground green)
    (imenu-list-entry-subalist-face-1 :inherit 'imenu-list-entry-face-1 :weight 'bold)
    (imenu-list-entry-face-2 :foreground yellow)
    (imenu-list-entry-subalist-face-2 :inherit 'imenu-list-entry-face-2 :weight 'bold)

    ;; indent-guide
    ((indent-guide-face &inherit highlight-indentation-face))

    ;; ivy
    (ivy-current-match :background region :distant-foreground nil)
    (ivy-minibuffer-match-face-1 :background nil :foreground (doom-lighten grey 0.4) :weight 'light)
    (ivy-minibuffer-match-face-2 :inherit 'ivy-minibuffer-match-face-1 :foreground magenta :background (doom-blend magenta base3 0.1) :weight 'semi-bold)
    (ivy-minibuffer-match-face-3 :inherit 'ivy-minibuffer-match-face-1 :foreground green :background (doom-blend green base3 0.1) :weight 'semi-bold)
    (ivy-minibuffer-match-face-4 :inherit 'ivy-minibuffer-match-face-1 :foreground yellow :background (doom-blend yellow base3 0.1) :weight 'semi-bold)

    (ivy-minibuffer-match-highlight :foreground violet)
    (ivy-highlight-face :foreground violet)
    (ivy-confirm-face :foreground success)
    (ivy-match-required-face :foreground error)
    (ivy-virtual :inherit 'italic :foreground doc-comments)
    (ivy-modified-buffer :inherit 'bold :foreground vc-modified)

    (prodigy-green-face :foreground green)
    (prodigy-red-face :foreground red)
    (prodigy-yellow-face :foreground yellow)

    ;; ivy-posframe
    (ivy-posframe :background (doom-darken bg-alt 0.1))
    (ivy-posframe-cursor :background highlight)
    ;; ovp
    (ovp-face :height 1.0 :font "Iosevka")
    ;; jabber
    (jabber-activity-face          :foreground red   :weight 'bold)
    (jabber-activity-personal-face :foreground blue  :weight 'bold)
    (jabber-chat-error             :foreground red   :weight 'bold)
    (jabber-chat-prompt-foreign    :foreground red   :weight 'bold)
    (jabber-chat-prompt-local      :foreground blue  :weight 'bold)
    (jabber-chat-prompt-system     :foreground green :weight 'bold)
    (jabber-chat-text-foreign      :foreground fg)
    (jabber-chat-text-local        :foreground fg)
    (jabber-rare-time-face         :foreground green)
    (jabber-roster-user-away       :foreground yellow)
    (jabber-roster-user-chatty     :foreground green :weight 'bold)
    (jabber-roster-user-dnd        :foreground red)
    (jabber-roster-user-error      :foreground red)
    (jabber-roster-user-offline    :foreground fg)
    (jabber-roster-user-online     :foreground green :weight 'bold)
    (jabber-roster-user-xa         :foreground cyan)

    ;; linum-relative
    ((linum-relative-current-face &inherit line-number-current-line))

    ;; lui
    (lui-time-stamp-face :foreground violet)
    (lui-highlight-face :foreground highlight)
    (lui-button-face :foreground builtin :underline t)

    ;; multiple cursors
    (mc/cursor-face :inherit 'cursor)

    ;; nav-flash
    (nav-flash-face :background selection :foreground base8 :weight 'bold)

    ;; neotree
    (neo-root-dir-face   :foreground strings :background bg-alt :box `(:line-width 4 :color ,bg-alt))
    (neo-file-link-face  :foreground fg)
    (neo-dir-link-face   :foreground highlight)
    (neo-expand-btn-face :foreground highlight)
    (neo-vc-edited-face  :foreground yellow)
    (neo-vc-added-face   :foreground green)
    (neo-vc-removed-face :foreground red :strike-through t)
    (neo-vc-conflict-face :foreground magenta :weight 'bold)
    (neo-vc-ignored-face  :foreground comments)
    (doom-neotree-dir-face :foreground highlight)
    (doom-neotree-file-face :foreground base8)
    (doom-neotree-hidden-file-face :foreground comments)
    (doom-neotree-text-file-face :foreground fg)
    (doom-neotree-data-file-face :foreground violet)
    (doom-neotree-media-file-face :inherit 'doom-neotree-hidden-file-face)

    ;; treemacs
    (treemacs-root-face                :foreground blue :background (doom-blend blue bg 0.3) :weight 'extralight :height 1.4)
    (treemacs-directory-collapsed-face :weight 'light)
    (treemacs-directory-face           :foreground blue :weight 'bold)
    (treemacs-file-face                :foreground fg)
    (treemacs-git-added-face           :foreground green)
    (treemacs-git-conflict-face        :foreground red)
    (treemacs-git-ignored-face         :foreground base4)
    (treemacs-git-modified-face        :foreground orange)
    (treemacs-git-renamed-face         :foreground yellow)
    (treemacs-git-unmodified-face      :foreground fg)
    (treemacs-git-untracked-face       :foreground base6)
    (treemacs-help-column-face         :foreground fg)
    (treemacs-help-title-face          :foreground fg)
    (treemacs-on-failure-pulse-face    :background (doom-blend red bg 0.5))
    (treemacs-on-success-pulse-face    :background (doom-blend green bg 0.5))
    (treemacs-tags-face                :foreground green :weight 'light)
    (treemacs-term-node-face           :foreground blue :weight 'bold)

    ;; nlinum
    ((nlinum-current-line &inherit line-number-current-line))

    ;; nlinum-hl
    ((nlinum-hl-face &inherit line-number-current-line))

    ;; nlinum-relative
    ((nlinum-relative-current-face &inherit line-number-current-line))

    ;; lsp
    ;; TODO Add light versions
    (lsp-face-highlight-textual :background dark-blue :foreground base8 :distant-foreground base0 :weight 'bold)
    (lsp-face-highlight-read    :background dark-blue :foreground base8 :distant-foreground base0 :weight 'bold)
    (lsp-face-highlight-write   :background dark-blue :foreground base8 :distant-foreground base0 :weight 'bold)
    (lsp-ui-peek-filename :inherit 'doom-modeline-buffer-file)
    (lsp-ui-peek-header :foreground fg :background (doom-blend blue bg 0.5) :bold bold)
    (lsp-ui-peek-selection :foreground bg :background blue :bold bold)
    (lsp-ui-peek-list :background bg-alt)
    (lsp-ui-peek-peek :background bg-alt)
    (lsp-ui-peek-highlight :inherit 'lsp-ui-peek-header :background region :foreground bg :box t)
    (lsp-ui-peek-line-number :foreground success)
    (lsp-ui-peek-footer :inherit 'lsp-ui-peek-header)

    (lsp-ui-doc-url                 :inherit 'link)
    (lsp-ui-doc-header              :background blue)
    (lsp-ui-doc-background          :background bg-alt)
    (lsp-ui-sideline-current-symbol :foreground bg :background highlight)
    (lsp-ui-sideline-symbol         :background region)

    ;; magit
    (magit-bisect-bad        :foreground red)
    (magit-bisect-good       :foreground green)
    (magit-bisect-skip       :foreground orange)
    (magit-blame-date        :foreground red)
    (magit-blame-heading     :foreground orange :background base3)
    (magit-branch-current    :foreground blue)
    (magit-branch-local      :foreground cyan)
    (magit-branch-remote     :foreground green)
    (magit-cherry-equivalent :foreground violet)
    (magit-cherry-unmatched  :foreground cyan)
    (magit-diff-added             :foreground (doom-darken green 0.2)  :background (doom-blend green bg 0.1))
    (magit-diff-added-highlight   :foreground green                    :background (doom-blend green bg 0.2) :weight 'bold)
    (magit-diff-base              :foreground (doom-darken orange 0.2) :background (doom-blend orange bg 0.1))
    (magit-diff-base-highlight    :foreground orange                   :background (doom-blend orange bg 0.2) :weight 'bold)
    (magit-diff-context           :foreground (doom-darken fg 0.4) :background bg)
    (magit-diff-context-highlight :foreground fg                   :background bg-alt)
    (magit-diff-file-heading           :foreground fg :weight 'bold)
    (magit-diff-file-heading-selection :foreground magenta               :background dark-blue :weight 'bold)
    (magit-diff-hunk-heading           :foreground bg                    :background (doom-blend violet bg 0.3))
    (magit-diff-hunk-heading-highlight :foreground bg                    :background violet :weight 'bold)
    (magit-diff-removed                :foreground (doom-darken red 0.2) :background (doom-blend red base3 0.1))
    (magit-diff-removed-highlight      :foreground red                   :background (doom-blend red base3 0.2) :weight 'bold)
    (magit-diff-lines-heading          :foreground yellow     :background red)
    (magit-diffstat-added              :foreground green)
    (magit-diffstat-removed            :foreground red)
    (magit-dimmed :foreground comments)
    (magit-hash :foreground comments)
    (magit-header-line :background dark-blue :foreground base8 :weight 'bold
                       :box `(:line-width 3 :color ,dark-blue))
    (magit-log-author :foreground orange)
    (magit-log-date :foreground blue)
    (magit-log-graph :foreground comments)
    (magit-process-ng :inherit 'error)
    (magit-process-ok :inherit 'success)
    (magit-reflog-amend :foreground magenta)
    (magit-reflog-checkout :foreground blue)
    (magit-reflog-cherry-pick :foreground green)
    (magit-reflog-commit :foreground green)
    (magit-reflog-merge :foreground green)
    (magit-reflog-other :foreground cyan)
    (magit-reflog-rebase :foreground magenta)
    (magit-reflog-remote :foreground cyan)
    (magit-reflog-reset :inherit 'error)
    (magit-refname :foreground comments)
    (magit-section-heading           :foreground blue :weight 'bold)
    (magit-section-heading-selection :foreground orange :weight 'bold)
    (magit-section-highlight :inherit 'hl-line)
    (magit-sequence-drop :foreground red)
    (magit-sequence-head :foreground blue)
    (magit-sequence-part :foreground orange)
    (magit-sequence-stop :foreground green)
    (magit-signature-bad :inherit 'error)
    (magit-signature-error :inherit 'error)
    (magit-signature-expired :foreground orange)
    (magit-signature-good :inherit 'success)
    (magit-signature-revoked :foreground magenta)
    (magit-signature-untrusted :foreground yellow)
    (magit-tag :foreground yellow)
    (magit-filename :foreground violet)
    (magit-section-secondary-heading :foreground violet :weight 'bold)

    ;; mic-paren
    (paren-face-match    :foreground red   :background base0 :weight 'ultra-bold)
    (paren-face-mismatch :foreground base0 :background red   :weight 'ultra-bold)
    (paren-face-no-match :inherit 'paren-face-mismatch :weight 'ultra-bold)

    ;; parenface
    (paren-face :foreground comments)

    ;; perspective
    (persp-selected-face :foreground blue :weight 'bold)

    ;; popup
    (popup-face :inherit 'tooltip)
    (popup-tip-face :inherit 'popup-face :foreground violet :background base0)
    (popup-selection-face :background selection)

    ;; rainbow-delimiters
    (rainbow-delimiters-depth-1-face :foreground blue)
    (rainbow-delimiters-depth-2-face :foreground magenta)
    (rainbow-delimiters-depth-3-face :foreground green)
    (rainbow-delimiters-depth-4-face :foreground orange)
    (rainbow-delimiters-depth-5-face :foreground violet)
    (rainbow-delimiters-depth-6-face :foreground yellow)
    (rainbow-delimiters-depth-7-face :foreground teal)
    (rainbow-delimiters-unmatched-face  :foreground red :weight 'bold :inverse-video t)
    (rainbow-delimiters-mismatched-face :inherit 'rainbow-delimiters-unmatched-face)

    ;; re-builder
    (reb-match-0 :foreground orange  :inverse-video t)
    (reb-match-1 :foreground magenta :inverse-video t)
    (reb-match-2 :foreground green   :inverse-video t)
    (reb-match-3 :foreground yellow  :inverse-video t)

    ;; show-paren
    ((show-paren-match &inherit paren-face-match))
    ((show-paren-mismatch &inherit paren-face-mismatch))

    ;; smartparens
    (sp-pair-overlay-face :background region)

    ;; smartparens
    ((sp-show-pair-match-face    &inherit show-paren-match))
    ((sp-show-pair-mismatch-face &inherit show-paren-mismatch))

    ;; solaire-mode
    (solaire-default-face  :inherit 'default :background bg-alt)
    (solaire-hl-line-face  :inherit 'hl-line :background bg)
    (solaire-org-hide-face :foreground bg-alt)

    ;; stripe-buffer
    (stripe-highlight
     (&light :background base5)
     (&dark  :background base3))

    ;; swiper
    (swiper-line-face    :background blue :foreground bg)
    (swiper-match-face-1 :inherit 'unspecified :weight 'bold)
    (swiper-match-face-2 :inherit 'unspecified :background magenta  :foreground base0 :weight 'bold)
    (swiper-match-face-3 :inherit 'unspecified :background green :foreground base0 :weight 'bold)
    (swiper-match-face-4 :inherit 'unspecified :background yellow   :foreground base0 :weight 'bold)

    ;; tabbar
    (tabbar-default             :foreground bg :background bg :height 1.0)
    (tabbar-highlight           :foreground fg :background selection :distant-foreground bg)
    (tabbar-button              :foreground fg :background bg)
    (tabbar-button-highlight    :inherit 'tabbar-button :inverse-video t)
    (tabbar-modified            :inherit 'tabbar-default :foreground red :weight 'bold)
    (tabbar-unselected          :inherit 'tabbar-default :foreground base5)
    (tabbar-unselected-modified :inherit 'tabbar-modified)
    (tabbar-selected
     :inherit 'tabbar-default :weight 'bold
     :foreground fg :background bg-alt)
    (tabbar-selected-modified :inherit 'tabbar-selected :foreground green)

    ;; undo-tree
    (undo-tree-visualizer-default-face :foreground base5)
    (undo-tree-visualizer-current-face :foreground green :weight 'bold)
    (undo-tree-visualizer-unmodified-face :foreground base5)
    (undo-tree-visualizer-active-branch-face :foreground blue)
    (undo-tree-visualizer-register-face :foreground yellow)

    ;; vimish-fold
    (vimish-fold-overlay :inherit 'font-lock-comment-face :background base0 :weight 'light)
    (vimish-fold-fringe  :foreground magenta)
    (+doom-folded-face :foreground base6 :background base4 :weight 'light)

    ;; volatile-highlights
    (vhl/default-face :background grey)

    ;; wgrep
    (wgrep-face :weight 'bold :foreground green :background base5)
    (wgrep-delete-face :foreground base3 :background red)
    (wgrep-done-face   :foreground blue)
    (wgrep-file-face   :foreground comments)
    (wgrep-reject-face :foreground red :weight 'bold)

    ;; which-func
    (which-func :foreground blue)

    ;; which-key
    (which-key-key-face                   :foreground green)
    (which-key-group-description-face     :foreground violet)
    (which-key-command-description-face   :foreground blue)
    (which-key-local-map-description-face :foreground magenta)

    ;; whitespace
    (whitespace-empty    :background base3)
    (whitespace-space    :foreground base4)
    (whitespace-tab      :foreground base4 :background (unless indent-tabs-mode base3))
    (whitespace-newline  :foreground base4)
    (whitespace-indentation :foreground red :background yellow)
    (whitespace-trailing :inherit 'trailing-whitespace)
    (whitespace-line     :background base0 :foreground red :weight 'bold)

    ;; workgroups2
    (wg-current-workgroup-face :foreground base0 :background highlight)
    (wg-other-workgroup-face   :foreground base5)
    (wg-divider-face           :foreground grey)
    (wg-brace-face             :foreground highlight)

    ;; yasnippet
    (yas-field-highlight-face :inherit 'match)


    ;; --- major-mode faces -------------------
    ;; auctex (latex-mode)
    (font-latex-bold-face         :inherit 'bold)
    (font-latex-italic-face       :inherit 'italic)
    (font-latex-math-face         :foreground blue)
    (font-latex-sectioning-0-face :inherit 'outline-1)
    (font-latex-sectioning-1-face :inherit 'outline-2)
    (font-latex-sectioning-2-face :inherit 'outline-3)
    (font-latex-sectioning-3-face :inherit 'outline-4)
    (font-latex-sectioning-4-face :inherit 'outline-5)
    (font-latex-sectioning-5-face :inherit 'outline-6)
    (font-latex-sectioning-6-face :inherit 'outline-7)
    (font-latex-sectioning-7-face :inherit 'outline-8)
    (font-latex-script-char-face  :foreground dark-blue)
    (font-latex-string-face       :inherit 'font-lock-string-face)
    (font-latex-warning-face      :inherit 'font-lock-warning-face)

    ;; elixir-mode
    (elixir-atom-face (&light :foreground dark-blue)
                      (&dark  :foreground cyan))
    (elixir-attribute-face :foreground violet)

    ;; enh-ruby-mode
    (enh-ruby-op-face :foreground operators)
    (enh-ruby-string-delimiter-face  :inherit 'font-lock-string-face)
    (enh-ruby-heredoc-delimiter-face :inherit 'font-lock-string-face)
    (enh-ruby-regexp-face :foreground constants)
    (enh-ruby-regexp-delimiter-face  :inherit 'enh-ruby-regexp-face)
    (erm-syn-errline  :underline `(:style wave :color ,error))
    (erm-syn-warnline :underline `(:style wave :color ,warning))

    ;; jdee-mode
    (jdee-font-lock-number-face :foreground numbers)
    (jdee-font-lock-operator-face :foreground operators)
    (jdee-font-lock-constant-face :inherit 'font-lock-constant-face)
    (jdee-font-lock-constructor-face :foreground methods)
    (jdee-font-lock-public-face :inherit 'font-lock-keyword-face)
    (jdee-font-lock-protected-face :inherit 'font-lock-keyword-face)
    (jdee-font-lock-private-face :inherit 'font-lock-keyword-face)
    (jdee-font-lock-modifier-face :inherit 'font-lock-type-face)
    (jdee-font-lock-doc-tag-face :foreground violet)
    (jdee-font-lock-italic-face :inherit 'italic)
    (jdee-font-lock-bold-face :inherit 'bold)
    (jdee-font-lock-link-face :foreground blue :italic nil :underline t)

    ;; js2-mode
    (js2-function-param  :foreground variables)
    (js2-function-call   :foreground functions)
    (js2-object-property :foreground violet)
    (js2-jsdoc-tag       :foreground comments)

    ;; ledger-mode
    (ledger-font-posting-date-face :foreground blue)
    (ledger-font-posting-amount-face :foreground yellow)
    (ledger-font-posting-account-face :foreground base8)
    (ledger-font-payee-cleared-face :foreground violet :weight 'bold :height 1.2)
    (ledger-font-payee-uncleared-face :foreground base5 :weight 'bold :height 1.2)
    (ledger-font-xact-highlight-face :background base0)

    ;; makefile-*-mode
    (makefile-targets :foreground blue)

    ;; markdown-mode
    (markdown-header-face           :inherit 'bold :foreground highlight)
    (markdown-header-delimiter-face :inherit 'markdown-header-face)
    (markdown-metadata-key-face     :foreground red)
    (markdown-list-face             :foreground red)
    (markdown-link-face             :inherit 'bold :foreground blue)
    (markdown-url-face              :foreground magenta :bold nil)
    (markdown-header-face-1         :inherit 'org-level-1)
    (markdown-header-face-2         :inherit 'org-level-2)
    (markdown-header-face-3         :inherit 'org-level-3)
    (markdown-header-face-4         :inherit 'org-level-4)
    (markdown-header-face-5         :inherit 'org-level-5)
    (markdown-header-face-6         :inherit 'org-level-6)
    (markdown-header-face-7         :inherit 'org-level-7)
    (markdown-header-face-8         :inherit 'org-level-8)
    (markdown-italic-face           :inherit 'italic :foreground violet)
    (markdown-bold-face             :inherit 'bold   :foreground orange)
    (markdown-markup-face           :foreground operators)
    (markdown-blockquote-face       :inherit 'italic :foreground doc-comments)
    (markdown-pre-face              :foreground strings)
    (markdown-code-face :background base3)
    (markdown-inline-code-face :inherit '(markdown-code-face markdown-pre-face))

    ;; notmuch
    ;; (notmuch-crypto-decryption               :foreground blue-l)
    ;; (notmuch-crypto-part-header              :foreground yellow-l)
    ;; (notmuch-crypto-signature-bad            :foreground red-l)
    ;; (notmuch-crypto-signature-good           :foreground base1)
    ;; (notmuch-crypto-signature-good-key       :foreground aqua-l)
    ;; (notmuch-crypto-signature-unknown        :foreground yellow)
    ;; (notmuch-hello-logo-background           :foreground fg)
    (notmuch-message-summary-face            :weight 'extralight :font "Iosevka")
    (notmuch-search-count                    :foreground comments)
    (notmuch-search-date                     :foreground numbers :weight 'bold)
    (notmuch-search-flagged-face             :foreground (doom-blend red base4 0.5))
    (notmuch-search-matching-authors         :foreground blue :weight 'bold)
    (notmuch-search-non-matching-authors     :foreground blue)
    (notmuch-search-subject                  :foreground fg)
    (notmuch-search-unread-face              :foreground base8)
    (notmuch-tag-added                       :foreground green :weight 'normal)
    (notmuch-tag-deleted                     :foreground red :weight 'normal)
    (notmuch-tag-face                        :foreground yellow :weight 'normal)
    (notmuch-tag-flagged                     :foreground yellow :weight 'normal)
    (notmuch-tag-unread                      :foreground yellow :weight 'normal)
    (notmuch-tree-match-author-face          :foreground blue :weight 'bold)
    (notmuch-tree-match-date-face            :foreground numbers :weight 'bold)
    (notmuch-tree-match-face                 :foreground fg)
    (notmuch-tree-match-subject-face         :foreground fg)
    (notmuch-tree-match-tag-face             :foreground yellow)
    (notmuch-tree-match-tree-face            :foreground violet)
    (notmuch-tree-no-match-author-face       :foreground blue)
    (notmuch-tree-no-match-date-face         :foreground numbers)
    (notmuch-tree-no-match-face              :foreground base5)
    (notmuch-tree-no-match-subject-face      :foreground base5)
    (notmuch-tree-no-match-tag-face          :foreground yellow)
    (notmuch-tree-no-match-tree-face         :foreground violet)
    (notmuch-wash-cited-text                 :foreground base4)
    (notmuch-wash-toggle-button              :foreground fg)




    ;; org-agenda
    (org-agenda-done      :inherit 'org-done)
    (org-agenda-dimmed-todo-face :foreground comments)

    (org-agenda-date         :font "SF Compact Display" :foreground (doom-blend yellow bg 0.8) :weight 'bold  :height 1.6)
    (org-agenda-date-today   :font "SF Compact Display" :foreground (doom-blend blue bg 0.8)   :weight 'bold  :height 1.6)
    (org-agenda-date-weekend :font "SF Compact Display" :foreground (doom-blend green bg 0.8)  :weight 'bold  :height 1.6)
    (org-agenda-structure    :font "SF Compact Display" :foreground (doom-blend violet bg 0.8) :weight 'bold  :height 1.4)
    (org-agenda-clocking      :background (doom-blend blue bg 0.2))
    (org-upcoming-deadline    :foreground (doom-blend yellow bg 0.8) :weight 'bold)
    (org-scheduled            :foreground fg)
    (org-scheduled-today      :foreground base7)
    (org-scheduled-previously :foreground base8)
    (org-warning              :foreground warning               :weight 'bold)
    (org-time-grid            :foreground comments)
    (org-sexp-date            :foreground fg)

    (org-todo-keyword-todo :weight 'bold :foreground (doom-blend blue bg 0.8)    :background (doom-blend blue bg 0.2) :font "SF Mono" :height 1.0)
    (org-todo-keyword-habt :weight 'bold :foreground (doom-blend yellow bg 0.8)  :background (doom-blend yellow bg 0.2) :font "SF Mono" :height 1.0)
    (org-todo-keyword-done :weight 'bold :foreground (doom-blend green bg 0.8)   :background (doom-blend green bg 0.2) :font "SF Mono" :height 1.0)
    (org-todo-keyword-wait :weight 'bold :foreground (doom-blend red bg 0.8)     :background (doom-blend red bg 0.2) :font "SF Mono" :height 1.0)
    (org-todo-keyword-kill :weight 'bold :foreground (doom-blend magenta bg 0.8) :background (doom-blend magenta bg 0.2) :font "SF Mono" :height 1.0)
    (org-todo-keyword-outd :weight 'bold :foreground (doom-blend fg bg 0.8)      :background (doom-blend fg bg 0.2) :font "SF Mono" :height 1.0)

    ;; org-mode
    (org-habit-clear-face          :weight 'bold :background bg-alt :foreground bg-alt)
    (org-habit-clear-future-face   :weight 'bold :background bg-alt :foreground bg-alt)
    (org-habit-ready-face          :weight 'bold :background (doom-blend blue bg-alt 0.5)   :foreground (doom-blend blue bg-alt 0.5))
    (org-habit-ready-future-face   :weight 'bold :background (doom-blend blue bg-alt 0.5)   :foreground (doom-blend blue bg-alt 0.5))
    (org-habit-alert-face          :weight 'bold :background (doom-blend yellow bg-alt 0.5) :foreground (doom-blend yellow bg-alt 0.5))
    (org-habit-alert-future-face   :weight 'bold :background (doom-blend yellow bg-alt 0.5) :foreground (doom-blend yellow bg-alt 0.5))
    (org-habit-overdue-face        :weight 'bold :background (doom-blend red bg-alt 0.5)    :foreground (doom-blend red bg-alt 0.5))
    (org-habit-overdue-future-face :weight 'bold :background (doom-blend red bg-alt 0.5)    :foreground (doom-blend red bg-alt 0.5))
    (org-ellipsis :weight 'bold :background nil :foreground base5)

    ;; outline

    (outline-1  :font "SF Compact Display" :foreground blue   :weight 'semi-bold :height 1.6)
    (outline-2  :font "SF Compact Display" :foreground violet :weight 'semi-bold :height 1.4)
    (outline-3  :font "SF Compact Display" :foreground yellow :weight 'semi-bold :height 1.4)
    (outline-4  :font "SF Compact Display" :foreground red    :weight 'semi-bold :height 1.3)
    (outline-5  :font "SF Compact Display" :foreground blue   :weight 'semi-bold :height 1.3)
    (outline-6  :font "SF Compact Display" :foreground violet :weight 'semi-bold :height 1.2)
    (outline-7  :font "SF Compact Display" :foreground yellow :weight 'semi-bold :height 1.2)
    (outline-8  :font "SF Compact Display" :foreground red    :weight 'semi-bold :height 1.2)

    (org-level-1         :inherit 'outline-1)
    (org-level-2         :inherit 'outline-2)
    (org-level-3         :inherit 'outline-3)
    (org-level-4         :inherit 'outline-4)
    (org-level-5         :inherit 'outline-5)
    (org-level-6         :inherit 'outline-6)
    (org-level-7         :inherit 'outline-7)
    (org-level-8         :inherit 'outline-8)

    (org-ref-cite-face            :inherit nil :foreground yellow :weight 'light :underline t :weight 'extra-light :font "Iosevka")
    (org-ref-ref-face            :inherit nil :foreground green :weight 'light :underline t :weight 'extra-light :font "Iosevka")
    (org-ref-label-face            :inherit nil :foreground red :weight 'light :underline t :weight 'extra-light :font "Iosevka")
    (org-ref-glossary-face            :inherit nil :foreground orange :weight 'light :underline t :weight 'extra-light :font "Iosevka")
    (org-ref-acronym-face            :inherit nil :foreground violet :weight 'light :underline t :weight 'extra-light :font "Iosevka")
    (org-tag                      :foreground green :weight 'light)
    (org-document-title           :foreground builtin :weight 'bold)
    (org-default                  :inherit 'variable-pitch)
    (org-meta-line                :foreground (doom-blend blue bg 0.2) :background bg :distant-foreground nil :weight 'extra-light :font "Iosevka")
    (org-block-begin-line         :weight 'extralight :font "Iosevka" :foreground (doom-blend blue bg 0.5) :background (doom-blend base4 bg 0.1) :distant-foreground nil)
    (org-block-end-line           :inherit 'org-block-begin-line)
    (org-block-background         :weight 'extralight :font "Iosevka" :background (doom-blend base4 bg 0.1))
    (org-block                    :background (doom-blend base4 bg 0.15))
    (org-archived                 :foreground doc-comments)
    (org-code                     :foreground orange)
    (org-verbatim                 :foreground green)
    (org-formula                  :foreground cyan)
    (org-list-dt                  :foreground highlight)
    (org-footnote                 :foreground orange)

    (org-deadline-custom          :weight 'extralight :font "Iosevka" :foreground bg :background red :distant-foreground fg)
    (org-closed-custom            :weight 'extralight :font "Iosevka" :foreground bg :background base6 :distant-foreground fg)
    (org-scheduled-custom         :weight 'extralight :font "Iosevka" :foreground bg :background green :distant-foreground fg)

    (org-deadline-custom-braket   :foreground red   :background red :distant-foreground red)
    (org-closed-custom-braket     :foreground base6 :background base6 :distant-foreground base6)
    (org-scheduled-custom-braket  :foreground green :background green :distant-foreground green)

    (org-date                     :font "Iosevka" :weight 'extralight)
    (org-headline-done            :foreground base6)
    (org-todo                     :bold 'inherit :foreground highlight)
    (org-done                     :inherit 'org-headline-done :bold 'inherit)
    (org-special-keyword          :foreground (doom-blend blue bg 0.3) :font "Iosevka" :weight 'extralight)
    (org-property-value           :foreground (doom-blend blue bg 0.3) :font "Iosevka" :weight 'extralight)
    (org-checkbox                 :inherit 'org-todo)
    (org-table                    :overline base5 :font "Iosevka")
    (org-column                   :inherit 'org-table)
    (org-column-title             :inherit 'org-column :weight 'bold)
    (org-agenda-column-dateline   :inherit 'org-column)
    (org-checkbox-statistics-todo :inherit 'org-todo)
    (org-checkbox-statistics-done :inherit 'org-done)

    ;; pdf-tools
    ;; (pdf-view-midnight-colors :foreground fg :background bg)
    ;; rpm-spec-mode
    (rpm-spec-macro-face        :foreground yellow)
    (rpm-spec-var-face          :foreground violet)
    (rpm-spec-tag-face          :foreground blue)
    (rpm-spec-obsolete-tag-face :foreground red)
    (rpm-spec-package-face      :foreground orange)
    (rpm-spec-dir-face          :foreground green)
    (rpm-spec-doc-face          :foreground orange)
    (rpm-spec-ghost-face        :foreground comments)
    (rpm-spec-section-face      :foreground magenta)

    (aw-leading-char-face :foreground base0 :background base7 :weight 'ultra-bold)
    ;; typescript-mode
    ((ts-object-property &inherit js2-object-property))
    ;; sx
    ;; (sx-inbox-item-type-unread         :foreground fg :background bg)
    ;; (sx-inbox-item-type                :foreground fg :background bg)
    ;; (sx-question-list-bounty           :foreground fg :background bg)
    ;; (sx-question-list-favorite         :foreground fg :background bg)
    ;; (sx-question-list-unread-question  :foreground fg :background bg)
    ;; (sx-question-list-read-question    :foreground fg :background bg)
    ;; (sx-question-list-date             :foreground fg :background bg)
    ;; (sx-question-list-score-upvoted    :foreground fg :background bg)
    ;; (sx-question-list-score            :foreground fg :background bg)
    ;; (sx-question-list-answers-accepted :foreground fg :background bg)
    ;; (sx-question-list-answers          :foreground fg :background bg)
    ;; (sx-question-list-parent           :foreground fg :background bg)
    (sx-question-mode-kbd-tag             :foreground blue :box '(:line-width 1 :style none))
    ;; (sx-question-mode-sub-sup-tag      :foreground fg :background bg)
    (sx-question-mode-closed-reason    :weight 'bold)
    ;; (sx-question-mode-closed           :foreground fg :background bg)
    ;; (sx-question-mode-accepted         :foreground fg :background bg)
    (sx-question-mode-content-face                       :background bg)
    ;; (sx-question-mode-score-upvoted    :foreground fg :background bg)
    ;; (sx-question-mode-score-downvoted  :foreground fg :background bg-alt)
    ;; (sx-question-mode-score            :foreground fg :background bg-alt)
    (sx-question-mode-date             :foreground orange :background bg-alt)
    ;; (sx-question-mode-title-comments   :foreground fg :background bg-alt)
    (sx-question-mode-title            :foreground fg :background bg-alt :font "SF UI Display" :weight 'bold :height 1.4)
    (sx-question-mode-header              :inherit 'message-header-name :background bg-alt)
    (sx-user-accept-rate :foreground green :weight 'light)
    (sx-user-reputation                :foreground grey :background bg-alt)
    (sx-user-name                      :foreground blue :background bg-alt)
    (sx-tag                            :foreground green :background bg-alt)
    (sx-custom-button              :foreground blue   :background bg     :box '(:line-width 1 :style none))

    ;; sh-mode
    (sh-heredoc :inherit 'font-lock-string-face :weight 'normal)
    (sh-quoted-exec :inherit 'font-lock-preprocessor-face)

    ;; web-mode
    (web-mode-doctype-face           :foreground comments)
    (web-mode-html-tag-face          :foreground methods)
    (web-mode-html-tag-bracket-face  :foreground methods)
    (web-mode-html-attr-name-face    :foreground type)
    (web-mode-html-entity-face       :foreground cyan :inherit 'italic)
    (web-mode-block-control-face     :foreground orange)
    (web-mode-html-tag-bracket-face  :foreground operators)))

(defun doom-themes-common-vars ()
  "TODO"
  '((ansi-color-names-vector
     (vconcat (mapcar #'doom-color '(base0 red green yellow blue magenta cyan base8))))

    (fci-rule-color (doom-color 'base5))

    (jdee-db-spec-breakpoint-face-colors `(cons ,(doom-color 'base0) ,(doom-color 'grey)))
    (jdee-db-requested-breakpoint-face-colors `(cons ,(doom-color 'base0) ,(doom-color 'green)))
    (jdee-db-active-breakpoint-face-colors `(cons ,(doom-color 'base0) ,(doom-color 'highlight)))

    (vc-annotate-color-map
     `(list (cons 20  ,(doom-color 'green))
            (cons 40  ,(doom-blend 'yellow 'green (/ 1.0 3)))
            (cons 60  ,(doom-blend 'yellow 'green (/ 2.0 3)))
            (cons 80  ,(doom-color 'yellow))
            (cons 100 ,(doom-blend 'orange 'yellow (/ 1.0 3)))
            (cons 120 ,(doom-blend 'orange 'yellow (/ 2.0 3)))
            (cons 140 ,(doom-color 'orange))
            (cons 160 ,(doom-blend 'magenta 'orange (/ 1.0 3)))
            (cons 180 ,(doom-blend 'magenta 'orange (/ 2.0 3)))
            (cons 200 ,(doom-color 'magenta))
            (cons 220 ,(doom-blend 'red 'magenta (/ 1.0 3)))
            (cons 240 ,(doom-blend 'red 'magenta (/ 2.0 3)))
            (cons 260 ,(doom-color 'red))
            (cons 280 ,(doom-blend 'grey 'red (/ 1.0 4)))
            (cons 300 ,(doom-blend 'grey 'red (/ 2.0 4)))
            (cons 320 ,(doom-blend 'grey 'red (/ 3.0 4)))
            (cons 340 ,(doom-color 'base5))
            (cons 360 ,(doom-color 'base5))))
    (vc-annotate-very-old-color nil)
    (vc-annotate-background (doom-color 'bg))))


;; Library
(defvar doom-themes--colors)
(defvar doom--min-colors '(257 256 16))
(defvar doom--quoted-p nil)

(defvar doom-themes--faces nil)
(defvar doom-themes--vars nil)

(defun doom-themes--colors-p (item)
  "TODO"
  (when item
    (cond ((listp item)
           (let ((car (car item)))
             (cond ((memq car '(quote doom-color)) nil)

                   ((memq car '(backquote \`))
                    (let ((doom--quoted-p t))
                      (doom-themes--colors-p (cdr item))))

                   ((eq car '\,)
                    (let (doom--quoted-p)
                      (doom-themes--colors-p (cdr item))))

                   ((or (doom-themes--colors-p car)
                        (doom-themes--colors-p (cdr-safe item)))))))

          ((and (symbolp item)
                (not (keywordp item))
                (not doom--quoted-p)
                (not (equal (substring (symbol-name item) 0 1) "-"))
                (assq item doom-themes--colors))))))

(defun doom-themes--colorize (item type)
  "TODO"
  (when item
    (let ((doom--quoted-p doom--quoted-p))
      (cond ((listp item)
             (cond ((memq (car item) '(quote doom-color))
                    item)
                   ((eq (car item) 'doom-ref)
                    (doom-themes--colorize
                     (apply #'doom-ref (cdr item)) type))
                   (t
                    (let* ((item (append item nil))
                           (car (car item))
                           (doom--quoted-p
                            (cond ((memq car '(backquote \`)) t)
                                  ((eq car '\,) nil)
                                  (t doom--quoted-p))))
                      (cons car
                            (cl-loop
                             for i in (cdr item)
                             collect (doom-themes--colorize i type)))))))

            ((and (symbolp item)
                  (not (keywordp item))
                  (not doom--quoted-p)
                  (not (equal (substring (symbol-name item) 0 1) "-"))
                  (assq item doom-themes--colors))
             `(doom-color ',item ',type))

            (t item)))))

(defun doom-themes--get-face (face &optional merge noerror)
  "TODO"
  (let ((face-body
         (or (cdr (assq face doom-themes--faces))
             (unless noerror
               (error "Couldn't find the '%s' face" face))))
        arg)
    (while (setq arg (pop merge))
      (if (keywordp arg)
          (plist-put face-body arg (pop merge))
        (push arg face-body)))
    face-body))

(defun doom-themes--add-face (face)
  "TODO"
  (let ((face-name (car face))
        (face-body (cdr face)))
    (when (listp face-name)
      (setq face-body
            (pcase (cadr face-name)
              (`&override
               (prog1 (doom-themes--get-face (car face-name) face-body t)
                 (setq doom-themes--faces (assq-delete-all face-name doom-themes--faces))))
              (`&inherit
               (doom-themes--get-face (car (cdr (cdr face-name))) face-body))
              (_
               (error "Malformed face spec for %s" (car face-name))))
            face-name (car face-name)))
    (when (assq face-name doom-themes--faces)
      (setq doom-theme--faces (assq-delete-all face-name doom-themes--faces)))
    ;; if `doom-themes-enable-*' are false, remove those properties from faces
    (dolist (prop (append (unless doom-themes-enable-bold   '(:weight 'normal :bold nil))
                          (unless doom-themes-enable-italic '(:slant 'normal :italic nil))))
      (when (and (plist-member face-body prop)
                 (not (eq (plist-get face-body prop) 'inherit)))
        (plist-put face-body prop
                   (if (memq prop '(:weight :slant))
                       (quote 'normal)))))
    (push `(,face-name ,@face-body) doom-themes--faces)))

(defun doom-themes--build-face (face)
  "TODO"
  (let ((face-name (car face))
        (face-body (cdr face)))
    `(list
      ',face-name
      ,(cond ((keywordp (car face-body))
              (let ((real-attrs face-body)
                    defs)
                (if (doom-themes--colors-p real-attrs)
                       (dolist (cl doom--min-colors `(list ,@(nreverse defs)))
                         (push `(list '((class color) (min-colors ,cl))
                                      (list ,@(doom-themes--colorize real-attrs cl)))
                            defs))
                  `(list (list 't (list ,@real-attrs))))))

             ((memq (car-safe (car face-body)) '(quote backquote \`))
              (car face-body))

             ((let (all-attrs defs)
                (dolist (attrs face-body `(list ,@(nreverse defs)))
                  (cond ((eq (car attrs) '&all)
                         (setq all-attrs (append all-attrs (cdr attrs))))

                        ((memq (car attrs) '(&dark &light))
                         (let ((bg (if (eq (car attrs) '&dark) 'dark 'light))
                               (real-attrs (append all-attrs (cdr attrs) '())))
                           (cond ((doom-themes--colors-p real-attrs)
                                  (dolist (cl doom--min-colors)
                                    (push `(list '((class color) (min-colors ,cl) (background ,bg))
                                                 (list ,@(doom-themes--colorize real-attrs cl)))
                                          defs)))

                                 (t
                                  (push `(list '((background ,bg)) (list ,@real-attrs))
                                        defs)))))))))))))

;;
(defun doom-themes-prepare-facelist (faces)
  "Return an alist of face definitions for `custom-theme-set-faces'.

Faces in EXTRA-FACES override the default faces."
  (let (doom-themes--faces)
    (mapc #'doom-themes--add-face faces)
    (reverse (mapcar #'doom-themes--build-face doom-themes--faces))))

(defun doom-themes-prepare-varlist (vars)
  "Return an alist of variable definitions for `custom-theme-set-variables'.

Variables in EXTRA-VARS override the default ones."
  (let (doom-themes--vars)
    (cl-loop for (var val) in vars
             collect `(list ',var ,val))))

(provide 'doom-themes-common)
;;; doom-themes-common.el ends here
