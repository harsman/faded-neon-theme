;;; faded-neon-theme.el --- Custom face theme for Emacs

;; Copyright (C) 2011 Joakim Hårsman.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(defvar faded-neon-fg "snow2")
(defvar faded-neon-fg+1 "white")
(defvar faded-neon-fg-2 "ivory3")
(defvar faded-neon-fg-3 "ivory4")
(defvar faded-neon-bg "grey24")
(defvar faded-neon-bg+1 "grey34")
(defvar faded-neon-bg+2 "grey60")
(defvar faded-neon-bg-1 "grey19")
(defvar faded-neon-bg-2 "grey12")
(defvar faded-neon-bg-3 "grey4")
(defvar faded-neon-red "#E67676")
(defvar faded-neon-red-1 "#CD5C5C")
(defvar faded-neon-blue "#9CCEFC")
(defvar faded-neon-green "#CAE682")
(defvar faded-neon-green-1 "#91BC48")
(defvar faded-neon-gold "#F4F0A9")

(setq-default mode-line-buffer-identification
              (list (propertize "%12b" 'face
                                (list :weight 'bold
                                      :foreground faded-neon-fg))))
(deftheme custom-theme-faded-neon
  "A low contrast dark theme, similar to Wombat or Zenburn.")

(custom-theme-set-faces
 'custom-theme-faded-neon
 `(default ((t (:background ,faded-neon-bg :foreground ,faded-neon-fg))))
 `(cursor ((t (:background ,faded-neon-fg+1))))
 `(faded-neon-link ((t (:foreground ,faded-neon-red :weight bold))))
 `(calendar-today ((t (:foreground ,faded-neon-green-1))))
 `(bold ((t (:weight bold))))
 `(bold-italic ((t (:italic t :weight bold))))
 `(fixed-pitch ((t (:weight bold))))
 `(italic ((t (:slant italic))))
 `(underline ((t (:underline t))))

 ;; face for inline completion
 `(ac-completion-face ((t (:foreground ,faded-neon-fg-2 :underline t))))
 ;; face for candidate in menu
 `(ac-candidate-face ((t (:background ,faded-neon-bg+2 :foreground ,faded-neon-bg-3)))) 
 ;; face for selected candidate in menu
 `(ac-selection-face ((t (:background ,faded-neon-red-1 :foreground ,faded-neon-fg+1)))) 
 `(popup-face ((t (:backgrounf ,faded-neon-bg+2 :foreground ,faded-neon-bg-3))))
 `(popup-menu-face ((t (:background ,faded-neon-bg+2 :foreground ,faded-neon-bg-3))))
 `(popup-menu-selection-face ((t (:background ,faded-neon-red-1 :foreground ,faded-neon-fg+1))))
 `(popup-scroll-bar-foreground-face ((t (:background ,faded-neon-bg-3))))
 `(popup-scroll-bar-background-face ((t (:background ,faded-neon-fg-2))))
 ;; used for right pane with info  on selected  candidate
 `(popup-tip-face ((t (:background ,faded-neon-bg+2 :foreground ,faded-neon-bg-3))))

 `(comint-highlight-prompt ((t (:foreground ,faded-neon-red))))
 `(compilation-info ((t (:foreground ,faded-neon-green))))
 `(compilation-warning ((t (:foreground ,faded-neon-red))))
 `(compilation-error ((t (:foreground "red"))))
 `(compilation-line-number ((t (:foreground ,faded-neon-green-1))))
 `(compilation-column-number ((t (:foreground ,faded-neon-green-1))))

 `(custom-button ((t (:foreground ,faded-neon-fg :background ,faded-neon-bg+1
                                  :box (:line-width 2 :style released-button)))))
 `(custom-button-mouse ((t (:foreground ,faded-neon-red :inherit custom-button))))
 `(custom-button-pressed ((t (:foreground ,faded-neon-fg :background ,faded-neon-bg-1
                                          :box (:line-width 2 :style pressed-button)))))
 `(custom-group-tag ((t (:foreground ,faded-neon-green))))
 `(custom-link ((t (:foreground ,faded-neon-red :underline t))))
 `(custom-variable-tag ((t (:foreground ,faded-neon-red))))
 `(custom-state ((t (:foreground ,faded-neon-gold))))
 `(custom-documentation ((t (:foreground ,faded-neon-fg-2))))

 `(diff-added ((t (:foreground ,faded-neon-green-1))))
 `(diff-context ((t (:foreground ,faded-neon-fg-2))))
 `(diff-header ((t (:background ,faded-neon-bg-1))))
 `(diff-file-header ((t (:foreground ,faded-neon-green))))
 `(diff-hunk-header ((t (:foreground ,faded-neon-blue :background ,faded-neon-bg))))
 `(diff-refine-change ((t (:background ,faded-neon-bg-2))))
 `(diff-removed ((t (:foreground ,faded-neon-red))))
 
 `(dired-header ((t (:foreground ,faded-neon-green))))
 `(dired-mark ((t (:foreground ,faded-neon-red))))
 `(dired-marked ((t (:foreground ,faded-neon-red))))
 `(dired-perm-write ((t (:foreground ,faded-neon-red))))
 `(dired-symlink ((t (:foreground ,faded-neon-blue))))

 `(ediff-current-diff-A ((t (:background ,faded-neon-bg+1))))
 `(ediff-current-diff-B ((t (:background ,faded-neon-bg+1))))
 `(ediff-current-diff-C ((t (:background ,faded-neon-bg+1))))
 `(ediff-current-diff-Ancestor ((t (:background ,faded-neon-bg+1))))
 `(ediff-fine-diff-A ((t (:background ,faded-neon-bg-2))))
 `(ediff-fine-diff-B ((t (:background ,faded-neon-bg-2))))
 `(ediff-fine-diff-C ((t (:background ,faded-neon-bg-2))))
 `(ediff-fine-diff-Ancestor ((t (:background ,faded-neon-bg-2))))
 `(ediff-even-diff-A ((t (:background ,faded-neon-bg-1))))
 `(ediff-even-diff-B ((t (:background ,faded-neon-bg-1))))
 `(ediff-even-diff-C ((t (:background ,faded-neon-bg-1))))
 `(ediff-even-diff-Ancestor ((t (:background ,faded-neon-bg-1))))
 `(ediff-odd-diff-A ((t (:background ,faded-neon-bg-1))))
 `(ediff-odd-diff-B ((t (:background ,faded-neon-bg-1))))
 `(ediff-odd-diff-C ((t (:background ,faded-neon-bg-1))))
 `(ediff-odd-diff-Ancestor ((t (:background ,faded-neon-bg-1))))

 `(font-lock-builtin-face ((t (:foreground ,faded-neon-gold))))
 `(font-lock-comment-face ((t (:foreground ,faded-neon-fg-3))))
 `(font-lock-comment-delimiter-face ((t (:foreground ,faded-neon-fg-3))))
 `(font-lock-constant-face ((t (:foreground ,faded-neon-fg-2))))
 `(font-lock-doc-face ((t (:foreground ,faded-neon-green-1))))
 `(font-lock-doc-string-face ((t (:foreground ,faded-neon-green-1))))
 `(font-lock-function-name-face ((t (:foreground ,faded-neon-green))))
 `(font-lock-keyword-face ((t (:foreground ,faded-neon-red))))
 `(font-lock-preprocessor-face ((t (:foreground ,faded-neon-green))))
 `(font-lock-reference-face ((t (:foreground ,faded-neon-green-1))))
 `(font-lock-string-face ((t (:foreground ,faded-neon-blue))))
 `(font-lock-type-face ((t (:foreground ,faded-neon-gold))))
 `(font-lock-variable-name-face ((t (:foreground ,faded-neon-green))))
 `(font-lock-warning-face ((t (:foreground "red"))))

 `(flyspell-duplicate ((t (:underline "orangered"))))
 `(flyspell-incorrect ((t (:underline "red"))))
 `(fringe ((t (:background ,faded-neon-bg-3 :foreground ,faded-neon-fg-3))))
 `(vertical-border ((t (:background ,faded-neon-bg-3 :foreground ,faded-neon-fg-3))))
 `(highlight ((t (:background ,faded-neon-red-1 :foreground ,faded-neon-fg+1))))
 `(holiday ((t (:foreground "red"))))
 `(ido-first-match ((t (:foreground ,faded-neon-gold))))
 `(ido-only-match ((t (:foreground ,faded-neon-red))))
 `(ido-incomplete-regexp ((t (:foreground ,faded-neon-fg-3))))
 ;; `(ido-indicator ((t (:foreground ,faded-neon-blue))))
 `(info-node ((t (:underline t :bold t :foreground ,faded-neon-red))))
 `(info-xref ((t (:underline t :foreground ,faded-neon-red))))
 `(info-xref-visited ((t (:underline t :foreground ,faded-neon-fg-3))))
 `(info-menu-star ((t (:foreground ,faded-neon-red))))
 `(isearch ((t (:background ,faded-neon-red-1 :foreground ,faded-neon-fg+1))))
 `(isearch-fail ((t (:foreground ,faded-neon-red))))
 `(lazy-highlight ((t (:background ,faded-neon-bg-3 :foreground ,faded-neon-fg))))
 `(match ((t (:foreground ,faded-neon-gold :background ,faded-neon-bg-1))))
 `(link ((t (:foreground ,faded-neon-red :underline t))))
 `(link-visited ((t (:foreground ,faded-neon-fg-3 :underline t))))
 `(minibuffer-prompt ((t (:foreground ,faded-neon-blue))))
 `(modeline ((t (:background ,faded-neon-bg-2 :foreground ,faded-neon-fg-3 :box (:line-width 1 :style released-button)))))
 `(modeline-buffer-id ((t (:foreground ,faded-neon-fg :weight normal))))
 `(modeline-highlight ((t (:foreground ,faded-neon-red))))
 `(modeline-inactive ((t (:background ,faded-neon-bg-1 :foreground ,faded-neon-fg-3 :box nil))))
 `(modeline-mousable ((t (:background ,faded-neon-bg-1 :foreground ,faded-neon-red))))
 `(modeline-mousable-minor-mode ((t (:background ,faded-neon-bg-1 :foreground ,faded-neon-red))))
 `(mode-line-emphasis ((t (:foreground ,faded-neon-fg+1 :weight normal))))
 `(show-paren-match-face ((t (:background ,faded-neon-fg-3 :foreground "black"))))
 `(region ((t (:background ,faded-neon-bg+1))))
 `(org-date ((t (:foreground ,faded-neon-gold))))
 `(org-hide ((t (:foreground ,faded-neon-bg))))
 `(org-level-1 ((t (:foreground ,faded-neon-green))))
 `(org-level-2 ((t (:foreground ,faded-neon-gold))))
 `(org-level-3 ((t (:foreground ,faded-neon-blue))))
 `(org-level-4 ((t (:foreground ,faded-neon-green-1))))
 `(org-level-5 ((t (:foreground ,faded-neon-green))))
 `(org-level-6 ((t (:foreground ,faded-neon-gold))))
 `(org-level-7 ((t (:foreground ,faded-neon-blue))))
 `(org-level-8 ((t (:foreground ,faded-neon-green-1))))
 `(org-link ((t (:foreground ,faded-neon-red :underline t))))
 `(org-special-keyword ((t (:foreground ,faded-neon-blue))))
 `(org-tag ((t (:foreground ,faded-neon-red :weight normal))))
 `(org-todo ((t (:foreground ,faded-neon-red :weight normal))))
 `(org-done ((t (:foreground ,faded-neon-green-1 :weight normal))))
 `(org-table ((t (:foreground ,faded-neon-fg))))
 `(show-paren-mismatch-face ((t (:background "red" :foreground ,faded-neon-fg+1))))
 `(text-cursor ((t (:background ,faded-neon-fg+1 :foreground "black"))))
 `(tooltip ((t (:background ,faded-neon-bg+1 :foreground ,faded-neon-fg))))
 `(which-func ((t (:foreground ,faded-neon-gold)))))

(provide-theme 'custom-theme-faded-neon)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; faded-neon-theme.el  ends here
