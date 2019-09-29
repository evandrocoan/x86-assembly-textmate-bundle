About
=====
This is a TextMate/Sublime/VS Code/Atom bundle providing language support for x86_64 assembly language in a variety of dialects (nasm/yasm primarily, but could highlight tasm/gas to some extent).


## Installation

### By Package Control

1. Download & Install `Sublime Text 3` (https://www.sublimetext.com/3)
1. Go to the menu `Tools -> Install Package Control`, then,
   wait few seconds until the `Package Control` installation finishes
1. Go to the menu `Preferences -> Package Control`
1. Type `Package Control Add Channel` on the opened quick panel and press <kbd>Enter</kbd>
1. Then, input the following address and press <kbd>Enter</kbd>
   ```
   https://raw.githubusercontent.com/evandrocoan/StudioChannel/master/channel.json
   ```
1. Now, go again to the menu `Preferences -> Package Control`
1. This time type `Package Control Install Package` on the opened quick panel and press <kbd>Enter</kbd>
1. Then, search for `X86Assembly` and press <kbd>Enter</kbd>

See also:
1. [ITE - Integrated Toolset Environment](https://github.com/evandrocoan/ITE)
1. [Package control docs](https://packagecontrol.io/docs/usage) for details.


Features
========
* Basic support for NASM/YASM/TASM/GAS syntaxes
* Most up-to-date instruction sets:
  * Legacy/undocumented registers and instructions
  * FPU/MMX/3DNow!
  * SSE/SSE2/(S)SSE3/SSE4/SSE4.1/SSE4.2/SSE4.a
  * AVX/AVX2/AVX512, including pseudo-ops
  * AES-NI/SHA
  * VMX/SMX/NPX/SGX
  * other AMD/Cyrix/VIA and planned future Intel extensions

Source code
===========
The latest version of this package should be available on [GitHub](https://github.com/13xforever/x86-assembly-textmate-bundle).

To compile the yaml sources to tmLanguage, you'll need [PackageDev](https://packagecontrol.io/packages/PackageDev).

Contributors
============
[YASM tests](Tests/yasm-regression) are provided by [yasm-regression](https://github.com/yasm/yasm-regression) project.

Examples
========
* Sublime Text with Monokai Extended Bright color scheme
  ![Sublime Text with Monokai Extended Bright color scheme](./Screenshots/Sublime%20Text%203%20-%20Monokai%20Extended%20Bright.png?raw=true)
* Atom with One Dark syntax theme
  ![Atom with One Dark syntax theme](./Screenshots/Atom%20-%20One%20Dark.png?raw=true)
* Visual Studio Code with default Dark color theme
  ![Visual Studio Code with default Dark color theme](./Screenshots/Visual%20Studio%20Code%20-%20Dark.png?raw=true)
