;;; packages.el --- cucumber layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Justin Holguin <justin@jmanjaro>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst cucumber-packages
  '(feature-mode))

(defun cucumber/init-feature-mode ()
  (use-package feature-mode
    :defer t
    :mode (("\\.feature\\'" . feature-mode))
    :init (progn (setq feature-step-search-path "features/**/*steps.rb"))
    :config
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'feature-mode
        "s" 'feature-verify-scenario-at-pos
        "v" 'feature-verify-all-scenarios-in-buffer
        "f" 'feature-verify-all-scenarios-in-project
        "g" 'feature-goto-step-definition
        "." 'feature-goto-step-definition))))
