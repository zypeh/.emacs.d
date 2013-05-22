((LazyCatKeystoke status "removed" recipe nil)
 (LazyCatRedefine status "removed" recipe nil)
 (auto-complete status "installed" recipe
		(:name auto-complete :website "http://cx4a.org/software/auto-complete/" :description "The most intelligent auto-completion extension." :type github :pkgname "m2ym/auto-complete" :depends
		       (popup fuzzy)))
 (auto-complete-clang status "installed" recipe
		      (:name auto-complete-clang :website "https://github.com/brianjcj/auto-complete-clang" :description "Auto-complete sources for Clang. Combine the power of AC, Clang and Yasnippet." :type github :pkgname "brianjcj/auto-complete-clang" :depends auto-complete))
 (cc-mode+ status "installed" recipe
	   (:name cc-mode+ :auto-generated t :type emacswiki :description "Extensions to `c-mode.el' & `cc-mode.el'." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/cc-mode+.el"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/m2ym/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "m2ym/fuzzy-el"))
 (jekyll-el status "removed" recipe nil)
 (lua-mode status "installed" recipe
	   (:name lua-mode :description "A major mode for editing Lua scripts." :website "https://github.com/immerrr/lua-mode" :description "A major mode for editing Lua scripts." :type git :url "https://github.com/immerrr/lua-mode"))
 (paredit status "installed" recipe
	  (:name paredit :description "Minor mode for editing parentheses" :type http :url "http://mumble.net/~campbell/emacs/paredit.el" :features "paredit"))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/m2ym/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "m2ym/popup-el"))
 (semantic-tag-folding status "installed" recipe
		       (:name semantic-tag-folding :auto-generated t :type emacswiki :description "semantic decoration style to enable folding of semantic tags" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/semantic-tag-folding.el")))
