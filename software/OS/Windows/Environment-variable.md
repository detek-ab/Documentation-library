# Environment variable - Wikipedia (https://en.wikipedia.org/wiki/Environment_variable#Default_values)

- https://ss64.com/nt/syntax-variables.html

An **environment variable** is a user-definable [value](https://en.wikipedia.org/wiki/Value_(computer_science) "Value (computer science)") that can affect the way running [processes](https://en.wikipedia.org/wiki/Process_(computing) "Process (computing)") will behave on a computer. Environment variables are part of the environment in which a process runs. For example, a running process can query the value of the TEMP environment variable to discover a suitable location to store [temporary files](https://en.wikipedia.org/wiki/Temporary_file "Temporary file"), or the HOME or USERPROFILE variable to find the [directory structure](https://en.wikipedia.org/wiki/Directory_structure "Directory structure") owned by the user running the process.

They were introduced in their modern form in 1979 with [Version 7 Unix](https://en.wikipedia.org/wiki/Version_7_Unix "Version 7 Unix"), so are included in all [Unix](https://en.wikipedia.org/wiki/Unix "Unix") [operating system](https://en.wikipedia.org/wiki/Operating_system "Operating system") flavors and variants from that point onward including [Linux](https://en.wikipedia.org/wiki/Linux "Linux") and [macOS](https://en.wikipedia.org/wiki/MacOS "MacOS"). From [PC DOS 2.0](https://en.wikipedia.org/wiki/PC_DOS_2.0 "PC DOS 2.0") in 1982, all succeeding [Microsoft](https://en.wikipedia.org/wiki/Microsoft "Microsoft") operating systems, including [Microsoft Windows](https://en.wikipedia.org/wiki/Microsoft_Windows "Microsoft Windows"), and [OS/2](https://en.wikipedia.org/wiki/OS/2 "OS/2") also have included them as a feature, although with somewhat different syntax, usage and standard variable names.

In all [Unix](https://en.wikipedia.org/wiki/Unix "Unix") and [Unix-like](https://en.wikipedia.org/wiki/Unix-like "Unix-like") systems, as well as on Windows, each process has its own separate set of environment [variables](https://en.wikipedia.org/wiki/Variable_(programming) "Variable (programming)"). By default, when a process is created, it inherits a duplicate [run-time environment](https://en.wikipedia.org/wiki/Run-time_environment "Run-time environment") of its parent process, except for explicit changes made by the parent when it creates the child. At the [API](https://en.wikipedia.org/wiki/Application_programming_interface "Application programming interface") level, these changes must be done between running `fork` and `exec`. Alternatively, from [command shells](https://en.wikipedia.org/wiki/Command_shell "Command shell") such as [bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell) "Bash (Unix shell)"), a user can change environment variables for a particular command invocation by indirectly invoking it via `[env](https://en.wikipedia.org/wiki/Env "Env")` or using the `ENVIRONMENT_VARIABLE=VALUE <command>` notation. A running program can access the values of environment variables for configuration purposes.

[Shell scripts](https://en.wikipedia.org/wiki/Shell_script "Shell script") and [batch files](https://en.wikipedia.org/wiki/Batch_file "Batch file") use environment variables to communicate data and preferences to [child processes](https://en.wikipedia.org/wiki/Child_process "Child process"). They can also be used to store temporary values for reference later in a shell script. However, in Unix, [non-exported variables](#Unix) are preferred for this as they do not leak outside the process.

In Unix, an environment variable that is changed in a script or compiled program will only affect that process and possibly child processes. The parent process and any unrelated processes will not be affected. Similarly, changing or removing a variable's value inside a [DOS](https://en.wikipedia.org/wiki/DOS "DOS") or Windows batch file will change the variable for the duration of `[COMMAND.COM](https://en.wikipedia.org/wiki/COMMAND.COM "COMMAND.COM")`or `[CMD.EXE](https://en.wikipedia.org/wiki/CMD.EXE "CMD.EXE")`'s existence, respectively.

In Unix, the environment variables are normally initialized during system startup by the system [init](https://en.wikipedia.org/wiki/Init "Init") [startup scripts](https://en.wikipedia.org/wiki/Startup_script "Startup script"), and hence inherited by all other processes in the system. Users can, and often do, augment them in the profile script for the command shell they are using. In Microsoft Windows, each environment variable's default value is stored in the [Windows Registry](https://en.wikipedia.org/wiki/Windows_Registry "Windows Registry") or set in the `[AUTOEXEC.BAT](https://en.wikipedia.org/wiki/AUTOEXEC.BAT "AUTOEXEC.BAT")` file.

On [Unix](https://en.wikipedia.org/wiki/Unix "Unix"), a [setuid](https://en.wikipedia.org/wiki/Setuid "Setuid") program is given an environment chosen by its caller, but it runs with different authority from its caller. The [dynamic linker](https://en.wikipedia.org/wiki/Dynamic_linker "Dynamic linker") will usually load code from locations specified by the environment variables `$LD_LIBRARY_PATH` and `$LD_PRELOAD` and run it with the process's authority. If a setuid program did this, it would be insecure, because its caller could get it to run arbitrary code and hence misuse its authority. For this reason, [libc](https://en.wikipedia.org/wiki/Libc "Libc") unsets these environment variables at startup in a setuid process. setuid programs usually unset unknown environment variables and check others or set them to reasonable values.

In general, the collection of environment variables function as an [associative array](https://en.wikipedia.org/wiki/Associative_array "Associative array") where both the keys and values are strings. The interpretation of characters in either string differs among systems. When data structures such as lists need to be represented, it is common to use a colon (common on Unix and Unix-like) or semicolon-delineated (common on Windows and DOS) list.

The variables can be used both in scripts and on the [command line](https://en.wikipedia.org/wiki/Command_line "Command line"). They are usually referenced by putting special symbols in front of or around the variable name.

It is conventional for environment-variable names to be chosen to be in all upper cases. In programming code generally, this helps to distinguish environment variables from other kinds of names in the code. Environment-variable names are case sensitive on Unix-like operating systems but not on DOS, OS/2, and Windows.

In most Unix and Unix-like [command-line shells](https://en.wikipedia.org/wiki/Command-line_shell "Command-line shell"), an environment variable's value is retrieved by placing a `$` sign before the variable's name. If necessary, the name can also be surrounded by braces.

To display the user home directory, the user may type:

If `xyz` needed to be appended to the value of the `HOME` variable, one might type:

In Unix and Unix-like systems, the names of environment variables are case-sensitive.

The command **`[env](https://en.wikipedia.org/wiki/Env_(shell) "Env (shell)")`** displays all environment variables and their values. The command **`printenv`** can also be used to print a single variable by giving that variable name as the sole argument to the command.

### DOS, OS/2 and Windows



In DOS, OS/2 and Windows command-line interpreters such as `COMMAND.COM` and `CMD.EXE`, an environment variable is retrieved by placing a `%` sign before and after it.

In DOS, OS/2 and Windows command-line interpreters as well as their [API](https://en.wikipedia.org/wiki/API "API"), upper or lower case is not distinguished for environment variable names.

The environment variable named `HOMEDRIVE` contains the drive letter (plus its trailing `:` colon) of the user's home directory, whilst `HOMEPATH` contains the full path of the user's home directory within that drive.

So to see the home drive and path, the user may type this:

```
ECHO %HOMEDRIVE%%HOMEPATH%

```


The command **`SET`** (with no arguments) displays all environment variables and their values. In [Windows NT](https://en.wikipedia.org/wiki/Windows_NT "Windows NT") and later `set` can also be used to print all variables whose name begins with a given prefix by giving the prefix as the sole argument to the command.

In [Windows PowerShell](https://en.wikipedia.org/wiki/Windows_PowerShell "Windows PowerShell"), the user may type any of the following:

```
echo $env:homedrive$env:homepath
Write-Output $env:homedrive$env:homepath
"$env:homedrive$env:homepath"

```


In PowerShell, upper or lower case is not distinguished for environment variable names.

The following command displays all environment variables and their values:

The commands `env` and `set` can be used to set environment variables and are often incorporated directly into the shell.

The following commands can also be used, but are often dependent on a certain shell.

```
VARIABLE=value         # (there must be no spaces around the equals sign)
export VARIABLE        # for Bourne and related shells

```


```
export VARIABLE=value  # for ksh, bash, and related shells

```


```
setenv VARIABLE value  # for csh and related shells

```


A few simple principles govern how environment variables achieve their effect.

Environment variables are local to the process in which they were set. If two shell processes are spawned and the value of an environment variable is changed in one, that change will not be seen by the other.

When a child process is created, it inherits all the environment variables and their values from the parent process. Usually, when a program calls another program, it first creates a child process by [forking](https://en.wikipedia.org/wiki/Fork_(system_call) "Fork (system call)"), then the child adjusts the environment as needed and lastly the child [replaces](https://en.wikipedia.org/wiki/Exec_(system_call) "Exec (system call)") itself with the program to be called. This procedure gives the calling program control over the environment of the called program.

In Unix shells, variables may be assigned without the **`export`** keyword. Variables defined in this way are displayed by the **`set`** command, but are _not_ true environment variables, as they are stored only by the shell and are unknown to all other processes. The `printenv` command will not display them, and child processes do not inherit them.

```
VARIABLE=value

```


The prefix syntax exports a "true" environment variable to a child process without affecting the current process:[\[1\]](#cite_note-ClassicShS-1)

```
VARIABLE=value program_name [arguments]

```


The persistence of an environment variable can be session-wide or system-wide.

**`unset`** is a builtin command implemented by both the [Bourne shell](https://en.wikipedia.org/wiki/Bourne_shell "Bourne shell") family (`sh`, `ksh`, `bash`, etc.) and the [C shell](https://en.wikipedia.org/wiki/C_shell "C shell") family (csh, tcsh, etc.) of [Unix command line shells](https://en.wikipedia.org/wiki/Unix_shell "Unix shell"). It unsets a shell variable, removing it from memory and the shell's exported environment. It is implemented as a [shell builtin](https://en.wikipedia.org/wiki/Shell_builtin "Shell builtin"), because it directly manipulates the internals of the shell.[\[2\]](#cite_note-OG_unset-2)[\[3\]](#cite_note-Bash_unset-3) Read-only shell variables cannot be unset. If one tries to unset a read-only variable, the `unset` command will print an error message and return a non-zero exit code.

### Assignment: DOS, OS/2 and Windows



In DOS, OS/2 and Windows command-line interpreters such as `COMMAND.COM` and `CMD.EXE`, the **`[SET](https://en.wikipedia.org/wiki/SET_(DOS_command) "SET (DOS command)")`** command is used to assign environment variables and values using the following arguments:

An environment variable is removed via:

The **`SET`** command without any arguments displays all environment variables along with their values; **`SET " "`**, zero or more spaces, will include internal variables too. In `CMD.EXE`, it is possible to assign local variables that will not be global using the **`SETLOCAL`** command and **`ENDLOCAL`** to restore the environment.

Use the [switch](https://en.wikipedia.org/wiki/Switch_(command_line) "Switch (command line)") **`/?`** to display the internal [documentation](https://en.wikipedia.org/wiki/Man_page "Man page"), or use the [viewer](https://en.wikipedia.org/wiki/Help_(command)#DOS "Help (command)") **`help`**:

```
 SET /?
 HELP SET
 SETLOCAL /?
 HELP SETLOCAL

```


  
In [PowerShell](https://en.wikipedia.org/wiki/PowerShell "PowerShell"), the assignment follows a syntax similar to Unix:

Examples of environment variables include:

*   `[PATH](https://en.wikipedia.org/wiki/PATH_(variable) "PATH (variable)")`: a list of directory paths. When the [user](https://en.wikipedia.org/wiki/User_(computing) "User (computing)") types a command without providing the full path, this list is checked to see whether it contains a path that leads to the command.
*   `HOME` ([Unix-like](https://en.wikipedia.org/wiki/Unix-like "Unix-like")) and `USERPROFILE` (Microsoft Windows): indicate where a user's [home directory](https://en.wikipedia.org/wiki/Home_directory "Home directory") is located in the [file system](https://en.wikipedia.org/wiki/File_system "File system").
*   `HOME/{.AppName}` ([Unix-like](https://en.wikipedia.org/wiki/Unix-like "Unix-like")) and `APPDATA\{DeveloperName\AppName}` (Microsoft Windows): for storing application settings. Many applications incorrectly use `USERPROFILE` for application settings in Windows: `USERPROFILE` should only be used in dialogs that allow user to choose between paths like `Documents/Pictures/Downloads/Music`; for programmatic purposes, `APPDATA` (for roaming application settings shared across multiple devices), `LOCALAPPDATA` (for local application settings) or `PROGRAMDATA` (for application settings shared between multiple OS users) should be used.[\[4\]](#cite_note-appdata-4)
*   `TERM` ([Unix-like](https://en.wikipedia.org/wiki/Unix-like "Unix-like")): specifies the type of [computer terminal](https://en.wikipedia.org/wiki/Computer_terminal "Computer terminal") or [terminal emulator](https://en.wikipedia.org/wiki/Terminal_emulator "Terminal emulator") being used (e.g., `[vt100](https://en.wikipedia.org/wiki/Vt100 "Vt100")` or `[dumb](https://en.wikipedia.org/wiki/Dumb_terminal "Dumb terminal")`).
*   `PS1` ([Unix-like](https://en.wikipedia.org/wiki/Unix-like "Unix-like")): specifies how the prompt is displayed in the [Bourne shell](https://en.wikipedia.org/wiki/Bourne_shell "Bourne shell") and variants.
*   `MAIL` ([Unix-like](https://en.wikipedia.org/wiki/Unix-like "Unix-like")): used to indicate where a user's mail is to be found.
*   `TEMP`: location where processes can store temporary files.

True environment variables
--------------------------



`$PATH`

Contains a colon-separated list of directories that the shell searches for commands that do not contain a slash in their name (commands with slashes are interpreted as file names to execute, and the shell attempts to execute the files directly). It is equivalent to the [DOS](https://en.wikipedia.org/wiki/DOS "DOS"), [OS/2](https://en.wikipedia.org/wiki/OS/2 "OS/2") and [Windows](https://en.wikipedia.org/wiki/Microsoft_Windows "Microsoft Windows") `[%PATH%](#%PATH%)` variable.

`$HOME`

Contains the location of the user's [home directory](https://en.wikipedia.org/wiki/Home_directory "Home directory"). Although the current user's home directory can also be found out through the C-functions `getpwuid` and `getuid`, `$HOME` is often used for convenience in various shell scripts (and other contexts). Using the environment variable also gives the user the possibility to point to another directory.

`$PWD`

This variable points to the current directory. Equivalent to the output of the command pwd when called without arguments.

`$DISPLAY`

Contains the identifier for the display that [X11](https://en.wikipedia.org/wiki/X11 "X11") programs should use by default.

`$LD_LIBRARY_PATH`

On many Unix systems with a [dynamic linker](https://en.wikipedia.org/wiki/Dynamic_linker "Dynamic linker"), contains a colon-separated list of directories that the dynamic linker should search for [shared objects](https://en.wikipedia.org/wiki/Shared_object "Shared object") when building a process image after `exec`, before searching in any other directories.

`$LIBPATH` or `$SHLIB_PATH`

Alternatives to `$LD_LIBRARY_PATH` typically used on older Unix versions.

`$LANG, $LC_ALL, $LC_...`

`$LANG` is used to set to the default [locale](https://en.wikipedia.org/wiki/Locale_(computer_software) "Locale (computer software)"). For example, if the locale values are `pt_BR`, then the language is set to (Brazilian) Portuguese and Brazilian practice is used where relevant. Different aspects of localization are controlled by individual `$LC_`\-variables (`$LC_CTYPE`, `$LC_[COLLATE](https://en.wikipedia.org/wiki/Collation "Collation")`, `$LC_DATE` etc.). `$LC_ALL` can be used to force the same locale for all aspects.

`$TZ`

Refers to [time zone](https://en.wikipedia.org/wiki/Time_zone "Time zone"). It can be in several formats, either specifying the time zone itself or referencing a file (in `/usr/share/zoneinfo`).

`$BROWSER`

Contains a colon-separated list of a user's [web browser](https://en.wikipedia.org/wiki/Web_browser "Web browser") preferences, for use by programs that need to allow the user to view content at a [URL](https://en.wikipedia.org/wiki/URL "URL"). The browsers in the list are intended to be attempted from first to last, stopping after the first one that succeeds. This arrangement allows for fallback behavior in different environments, e.g., in an [X11](https://en.wikipedia.org/wiki/X_Window_System "X Window System") environment, a graphical browser (such as [Firefox](https://en.wikipedia.org/wiki/Firefox "Firefox")) can be used, but in a console environment a terminal-base browser (such a [Lynx](https://en.wikipedia.org/wiki/Lynx_(web_browser) "Lynx (web browser)")) can be used. A `%s` token may be present to specify where the URL should be placed; otherwise the browser should be launched with the URL as the first argument.[\[5\]](#cite_note-ESR_2002_BROWSER-5)[\[6\]](#cite_note-LWN_2001_BROWSER-6)[\[7\]](#cite_note-PERL_ENV_BROWSER-7)[\[8\]](#cite_note-PYTHON_WEBBROWSER-8)[\[9\]](#cite_note-DEBIAN_DFLT_WEB_BROWSER-9)

Under DOS, the _master environment_ is provided by the primary command processor, which inherits the _pre-environment_ defined in `CONFIG.SYS` when first loaded. Its size can be configured through the `COMMAND /E:n` parameter between 160[\[10\]](#cite_note-4DOS_8.00_HELP-10) and 32767[\[10\]](#cite_note-4DOS_8.00_HELP-10) bytes. _Local environment_ segments inherited to child processes are typically reduced down to the size of the contents they hold. Some command-line processors (like [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS")) allow to define a minimum amount of free environment space that will be available when launching secondary shells.[\[10\]](#cite_note-4DOS_8.00_HELP-10) While the content of environment variables remains unchanged upon storage, their names (without the "`%`") are always converted to uppercase, with the exception of _pre-environment variables_ defined via the `[CONFIG.SYS](https://en.wikipedia.org/wiki/CONFIG.SYS "CONFIG.SYS")` directive `[SET](https://en.wikipedia.org/wiki/SET_(CONFIG.SYS_directive) "SET (CONFIG.SYS directive)")` under [DR DOS 6.0](https://en.wikipedia.org/wiki/DR_DOS_6.0 "DR DOS 6.0") and higher[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[12\]](#cite_note-Paul_1997_4DOSTIP-12) (and only with `[SWITCHES=/L](https://en.wikipedia.org/wiki/SWITCHES_(CONFIG.SYS_directive) "SWITCHES (CONFIG.SYS directive)")` (for "allow lowercase names") under [DR-DOS 7.02](https://en.wikipedia.org/wiki/DR-DOS_7.02 "DR-DOS 7.02") and higher).[\[10\]](#cite_note-4DOS_8.00_HELP-10)[\[13\]](#cite_note-Paul_1997_OD-A3-13) In principle, [MS-DOS 7.0](https://en.wikipedia.org/wiki/MS-DOS_7.0 "MS-DOS 7.0") and higher also supports lowercase variable names (`[%windir%](#windir)`), but provides no means for the user to define them. Environment variable names containing lowercase letters are stored in the environment just like normal environment variables, but remain invisible to most DOS software, since they are written to expect uppercase variables only.[\[10\]](#cite_note-4DOS_8.00_HELP-10)[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[12\]](#cite_note-Paul_1997_4DOSTIP-12) Some command processors limit the maximum length of a variable name to 80 characters.[\[10\]](#cite_note-4DOS_8.00_HELP-10) While principally only limited by the size of the _environment segment_, some DOS and 16-bit Windows programs[\[10\]](#cite_note-4DOS_8.00_HELP-10)[\[nb 1\]](#cite_note-NB_ENVLEN128-14) do not expect the contents of environment variables to exceed 128 characters. DR-DOS `COMMAND.COM` supports environment variables up to 255, [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS") even up to 512 characters.[\[10\]](#cite_note-4DOS_8.00_HELP-10) Since `COMMAND.COM` can be configured (via `/L:128..1024`) to support command lines up to 1024 characters internally under MS-DOS 7.0 and higher, environment variables should be expected to contain at least 1024 characters as well. In some versions of DR-DOS, the environment passed to drivers, which often do not need their environment after installation, can be shrunken or [relocated](https://en.wikipedia.org/wiki/Relocation_(computing) "Relocation (computing)") through `SETENV` or `[INSTALL[HIGH]](https://en.wikipedia.org/wiki/INSTALL_(CONFIG.SYS_directive) "INSTALL (CONFIG.SYS directive)")`/`[LOADHIGH](https://en.wikipedia.org/wiki/LOADHIGH "LOADHIGH")` options `/Z` (zero environment), `/D[:[loaddrive](https://en.wikipedia.org/wiki/Load_drive "Load drive")]` (substitute drive, e.g. `B:TSR.COM`) and `/E` (relocate environment above program) in order to minimize the driver's effectively resulting resident [memory footprint](https://en.wikipedia.org/wiki/Memory_footprint "Memory footprint").[\[14\]](#cite_note-Paul_1997_SETENV-15)[\[13\]](#cite_note-Paul_1997_OD-A3-13)[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[15\]](#cite_note-Paul_2002_CTMOUSE-16)[\[16\]](#cite_note-PTS-DOS_2000-17)[\[17\]](#cite_note-Paul_2002_COM-18)

In batch mode, non-existent environment variables are replaced by a zero-length string.

_Standard environment variables_ or _reserved environment variables_ include:

`%APPEND%` (supported since DOS 3.3)

This variable contains a semicolon-delimited list of directories in which to search for files. It is usually changed via the `[APPEND](https://en.wikipedia.org/wiki/APPEND_(DOS_command) "APPEND (DOS command)") /E` command, which also ensures that the directory names are converted into uppercase. Some DOS software actually expects the names to be stored in uppercase and the length of the list not to exceed 121[\[10\]](#cite_note-4DOS_8.00_HELP-10) characters, therefore the variable is best not modified via the `[SET](https://en.wikipedia.org/wiki/SET_(DOS_command) "SET (DOS command)")` command. [Long filenames](https://en.wikipedia.org/wiki/Long_filename "Long filename") containing spaces or other special characters must not be quoted (`"`).

`%CONFIG%` (supported since [MS-DOS 6.0](https://en.wikipedia.org/wiki/MS-DOS_6.0 "MS-DOS 6.0") and [PC DOS 6.1](https://en.wikipedia.org/wiki/PC_DOS_6.1 "PC DOS 6.1"), also supported by [ROM-DOS](https://en.wikipedia.org/wiki/Datalight_ROM-DOS "Datalight ROM-DOS")[\[18\]](#cite_note-Datalight_2005_ROM-DOS-19))

This variable holds the symbolic name of the currently chosen boot configuration. It is set by the [DOS BIOS](https://en.wikipedia.org/wiki/DOS_BIOS "DOS BIOS") (`[IO.SYS](https://en.wikipedia.org/wiki/IO.SYS "IO.SYS")`, `[IBMBIO.COM](https://en.wikipedia.org/wiki/IBMBIO.COM "IBMBIO.COM")`, etc.) to the name defined by the corresponding `[CONFIG.SYS](https://en.wikipedia.org/wiki/CONFIG.SYS "CONFIG.SYS")` directive `[MENUITEM](https://en.wikipedia.org/wiki/MENUITEM_(CONFIG.SYS_directive) "MENUITEM (CONFIG.SYS directive)")` before launching the primary command processor. Its main purpose is to allow further special cases in `[AUTOEXEC.BAT](https://en.wikipedia.org/wiki/AUTOEXEC.BAT "AUTOEXEC.BAT")` and similar batchjobs depending on the selected option at boot time. This can be emulated under DR-DOS by utilizing the `CONFIG.SYS` directive `[SET](https://en.wikipedia.org/wiki/SET_(CONFIG.SYS_directive) "SET (CONFIG.SYS directive)")` like `SET CONFIG=1`.

`%CMDLINE%` (introduced with [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"), also supported since [MS-DOS 7.0](https://en.wikipedia.org/wiki/MS-DOS_7.0 "MS-DOS 7.0"))

This variable contains the fully expanded text of the currently executing command line. It can be read by applications to detect the usage of and retrieve long command lines, since the traditional method to retrieve the command line arguments through the [PSP](https://en.wikipedia.org/wiki/Program_Segment_Prefix "Program Segment Prefix") (or related [API](https://en.wikipedia.org/wiki/Application_programming_interface "Application programming interface") functions) is limited to 126 characters and is no longer available when [FCBs](https://en.wikipedia.org/wiki/File_Control_Block "File Control Block") get expanded or the default [DTA](https://en.wikipedia.org/wiki/Disk_Transfer_Area "Disk Transfer Area") is used. While 4DOS supports longer command lines, `COMMAND.COM` still only supports a maximum of 126 characters at the prompt by default (unless overridden with `/U:128..255` to specify the size of the command line buffer), but nevertheless internal command lines can become longer through f.e. variable expansion (depending on `/L:128..1024` to specify the size of the internal buffer). In addition to the command-line length byte in the PSP, the PSP command line is normally limited by [ASCII-13](https://en.wikipedia.org/wiki/ASCII_13 "ASCII 13"), and command lines longer than 126 characters will typically be truncated by having an ASCII-13 inserted at position 127,[\[12\]](#cite_note-Paul_1997_4DOSTIP-12) but this cannot be relied upon in all scenarios.[\[12\]](#cite_note-Paul_1997_4DOSTIP-12)[\[nb 2\]](#cite_note-NB_CMDLINE-20) The variable will be suppressed for external commands invoked with a preceding `@`\-symbol like in `@XCOPY ...` for backward compatibility and in order to minimize the size of the environment when loading non-relocating [terminate-and-stay-resident programs](https://en.wikipedia.org/wiki/Terminate-and-stay-resident_program "Terminate-and-stay-resident program"). Some beta versions of [Windows Chicago](https://en.wikipedia.org/wiki/Windows_Chicago "Windows Chicago") used `%CMDLINE%` to store only the remainder of the command line excessing 126 characters instead of the complete command line.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[12\]](#cite_note-Paul_1997_4DOSTIP-12)

`[%COMSPEC%](https://en.wikipedia.org/wiki/COMSPEC_(environment_variable) "COMSPEC (environment variable)")` (supported since DOS 2.0)

This variable contains the full [8.3](https://en.wikipedia.org/wiki/8.3_filename "8.3 filename") path to the [command processor](https://en.wikipedia.org/wiki/Command_processor "Command processor"), typically `C:\[COMMAND.COM](https://en.wikipedia.org/wiki/COMMAND.COM "COMMAND.COM")` or `C:\DOS\COMMAND.COM`. It must not contain [long filenames](https://en.wikipedia.org/wiki/Long_filenames "Long filenames"), but under DR-DOS it may contain [file](https://en.wikipedia.org/wiki/FAT_file_password "FAT file password") and [directory passwords](https://en.wikipedia.org/wiki/FAT_directory_password "FAT directory password"). It is set up by the primary command processor to point to itself (typically reflecting the settings of the `[CONFIG.SYS](https://en.wikipedia.org/wiki/CONFIG.SYS "CONFIG.SYS")` directive `[SHELL](https://en.wikipedia.org/wiki/SHELL_(CONFIG.SYS_directive) "SHELL (CONFIG.SYS directive)")`), so that the resident portion of the command processor can reload its transient portion from disk after the execution of larger programs. The value can be changed at runtime to reflect changes in the configuration, which would require the command processor to reload itself from other locations. The variable is also used when launching secondary shells.

`%COPYCMD%` (supported since [MS-DOS 6.2](https://en.wikipedia.org/wiki/MS-DOS_6.2 "MS-DOS 6.2") and [PC DOS 6.3](https://en.wikipedia.org/wiki/PC_DOS_6.3 "PC DOS 6.3"), also supported by [ROM-DOS](https://en.wikipedia.org/wiki/Datalight_ROM-DOS "Datalight ROM-DOS")[\[18\]](#cite_note-Datalight_2005_ROM-DOS-19))

Allows a user to specify the `/Y` switch (to assume "Yes" on queries) as the default for the `[COPY](https://en.wikipedia.org/wiki/Copy_(command) "Copy (command)")`, `[XCOPY](https://en.wikipedia.org/wiki/XCOPY "XCOPY")`, and `[MOVE](https://en.wikipedia.org/wiki/Move_(command) "Move (command)")` commands. A default of `/Y` can be overridden by supplying the `/-Y` switch on the command line. The `/Y` switch instructs the command to replace existing files without prompting for confirmation.

`%DIRCMD%` (supported since [MS-DOS 5.0](https://en.wikipedia.org/wiki/MS-DOS_5.0 "MS-DOS 5.0") and [PC DOS 5.0](https://en.wikipedia.org/wiki/IBM_DOS_5.0 "IBM DOS 5.0"), also supported by [ROM-DOS](https://en.wikipedia.org/wiki/Datalight_ROM-DOS "Datalight ROM-DOS")[\[18\]](#cite_note-Datalight_2005_ROM-DOS-19))

Allows a user to specify customized default parameters for the `[DIR](https://en.wikipedia.org/wiki/Dir_(command) "Dir (command)")` command, including file specifications. Preset default switches can be overridden by providing the negative switch on the command line. For example, if `%DIRCMD%` contains the `/W` switch, then it can be overridden by using `DIR /-W` at the command line. This is similar to the environment variable `[%$DIR%](#%$DIR%)` under [DOS Plus](https://en.wikipedia.org/wiki/DOS_Plus "DOS Plus")[\[19\]](#cite_note-Kotulla_1987_Environment-21) and a facility to define default switches for `DIR` through its `/C` or `/R` switches under [DR-DOS](https://en.wikipedia.org/wiki/DR-DOS "DR-DOS") `COMMAND.COM`.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11) `%DIRCMD%` is also supported by the external `SDIR.COM`/`DIR.COM` [Stacker](https://en.wikipedia.org/wiki/Stacker_(disk_compression) "Stacker (disk compression)") commands under [Novell DOS 7](https://en.wikipedia.org/wiki/Novell_DOS_7 "Novell DOS 7") and higher.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)

`%LANG%` (supported since [MS-DOS 7.0](https://en.wikipedia.org/wiki/MS-DOS_7.0 "MS-DOS 7.0"))

This variable is supported by some tools to switch the locale for messages in multilingual issues.

`%LANGSPEC%` (supported since [MS-DOS 7.0](https://en.wikipedia.org/wiki/MS-DOS_7.0 "MS-DOS 7.0"))

This variable is supported by some tools to switch the locale for messages in multilingual issues.

`%NO_SEP%` (supported since [PC DOS 6.3](https://en.wikipedia.org/wiki/PC_DOS_6.3 "PC DOS 6.3") and [DR-DOS 7.07](https://en.wikipedia.org/wiki/DR-DOS_7.07 "DR-DOS 7.07"))

This variable controls the display of [thousands-separators](https://en.wikipedia.org/wiki/Decimal_separator#Digit_grouping "Decimal separator") in messages of various commands. Issued by default, they can be suppressed by specifying `SET NO_SEP=ON` or `SET NO_SEP=1` under PC DOS. DR-DOS additionally allows to override the system's thousands-separator displayed as in f.e. `SET NO_SEP=.`.[\[10\]](#cite_note-4DOS_8.00_HELP-10)

`[%PATH%](https://en.wikipedia.org/wiki/PATH_(environment_variable) "PATH (environment variable)")` (supported since DOS 2.0)

This variable contains a semicolon-delimited list of directories in which the [command interpreter](https://en.wikipedia.org/wiki/Command_interpreter "Command interpreter") will search for [executable files](https://en.wikipedia.org/wiki/Executable_file "Executable file"). Equivalent to the Unix `[$PATH](#$PATH)` variable (but some DOS and Windows applications also use the list to search for data files similar to `[$LD_LIBRARY_PATH](#$LD_LIBRARY_PATH)` on Unix-like systems). It is usually changed via the `[PATH](https://en.wikipedia.org/wiki/PATH_(DOS_command) "PATH (DOS command)")` (or `PATH /E` under [MS-DOS 6.0](https://en.wikipedia.org/wiki/MS-DOS_6.0 "MS-DOS 6.0")) command, which also ensures that the directory names are converted into uppercase. Some DOS software actually expects the names to be stored in uppercase and the length of the list not to exceed 123[\[10\]](#cite_note-4DOS_8.00_HELP-10) characters,[\[nb 1\]](#cite_note-NB_ENVLEN128-14) therefore the variable should better not be modified via the `[SET](https://en.wikipedia.org/wiki/SET_(DOS_command) "SET (DOS command)")` command.[\[10\]](#cite_note-4DOS_8.00_HELP-10) [Long filenames](https://en.wikipedia.org/wiki/Long_filename "Long filename") containing spaces or other special characters must not be quoted (`"`). By default, the current directory is searched first, but some command-line processors like [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS") allow "`.`" (for "current directory") to be included in the list as well in order to override this search order; some DOS programs are incompatible with this extension.[\[10\]](#cite_note-4DOS_8.00_HELP-10)

`%PROMPT%` (supported since DOS 2.0)

This variable contains a `$`\-tokenized string defining the display of the [prompt](https://en.wikipedia.org/wiki/Prompt_(computing) "Prompt (computing)"). It is usually changed via the `[PROMPT](https://en.wikipedia.org/wiki/PROMPT_(DOS_command) "PROMPT (DOS command)")` command.

`%TEMP%` (and `%TMP%`)

These variables contain the path to the directory where [temporary files](https://en.wikipedia.org/wiki/Temporary_file "Temporary file") should be stored. Operating system tools typically only use `%TEMP%`, whereas third-party programs also use `%TMP%`. Typically `%TEMP%` takes precedence over `%TMP%`.

The [DR-DOS](https://en.wikipedia.org/wiki/DR-DOS "DR-DOS") family supports a number of additional _standard environment variables_ including:

`%BETA%`

This variable contains an optional message displayed by some versions (including [DR DOS 3.41](https://en.wikipedia.org/wiki/DR_DOS_3.41 "DR DOS 3.41")) of `COMMAND.COM` at the startup of secondary shells.[\[20\]](#cite_note-Paul_2002_CLS-22)

`%DRDOSCFG%`/`%NWDOSCFG%`/`%OPENDOSCFG%`

This variable contains the directory[\[21\]](#cite_note-Caldera_1998_USER-23) (without trailing "`\`") where to search for `.INI` and `.CFG` configuration files (that is, DR-DOS application specific files like `TASKMGR.INI`, `TASKMAX.INI`, `[VIEWMAX.INI](https://en.wikipedia.org/wiki/VIEWMAX.INI "VIEWMAX.INI")`, `FASTBACK.CFG` etc., class specific files like `COLORS.INI`, or global files like `[DRDOS.INI](https://en.wikipedia.org/wiki/DRDOS.INI "DRDOS.INI")`, `[NWDOS.INI](https://en.wikipedia.org/wiki/NWDOS.INI "NWDOS.INI")`, `[OPENDOS.INI](https://en.wikipedia.org/wiki/OPENDOS.INI "OPENDOS.INI")`, or `[DOS.INI](https://en.wikipedia.org/wiki/DOS.INI "DOS.INI")`), as used by the `INSTALL` and `SETUP` commands and various DR-DOS programs like `DISKOPT`, `DOSBOOK`, `EDIT`, `FBX`, `FILELINK`, `LOCK`, `SECURITY.OVL`/`NWLOGIN.EXE`, `SERNO`, `TASKMAX`, `TASKMGR`, `[VIEWMAX](https://en.wikipedia.org/wiki/VIEWMAX "VIEWMAX")`, or `UNDELETE`.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11) It must not contain [long filenames](https://en.wikipedia.org/wiki/Long_filename "Long filename").

`%DRCOMSPEC%`

This variable optionally holds an alternative path to the command processor taking precedence over the path defined in the `%COMSPEC%` variable, optionally including [file](https://en.wikipedia.org/wiki/FAT_file_password "FAT file password") and [directory passwords](https://en.wikipedia.org/wiki/FAT_directory_password "FAT directory password"). Alternatively, it can hold a special value of "`ON`" or "`1`" in order to enforce the usage of the `%COMSPEC%` variable even in scenarios where the `%COMSPEC%` variable may point to the wrong command-line processor, for example, when running some versions of the DR-DOS `[SYS](https://en.wikipedia.org/wiki/SYS_(command) "SYS (command)")` command under a foreign operating system.[\[22\]](#cite_note-Paul_2017-24)

`%DRSYS%`

Setting this variable to "`ON`" or "`1`" will force some versions of the DR-DOS `[SYS](https://en.wikipedia.org/wiki/SYS_(command) "SYS (command)")` command to work under foreign operating systems instead of displaying a warning.[\[22\]](#cite_note-Paul_2017-24)

`%FBP_USER%`

Specifies the user name used by the [FastBack](https://en.wikipedia.org/wiki/FastBack "FastBack") command `[FBX](https://en.wikipedia.org/wiki/FBX_(DOS_command) "FBX (DOS command)")` and `{user}[.FB](https://en.wikipedia.org/wiki/.FB ".FB")` configuration files under [Novell DOS 7](https://en.wikipedia.org/wiki/Novell_DOS_7 "Novell DOS 7").[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)

`%HOMEDIR%`

This variable may contain the home directory under DR-DOS (including [DR DOS 5.0](https://en.wikipedia.org/wiki/DR_DOS_5.0 "DR DOS 5.0") and [6.0](https://en.wikipedia.org/wiki/DR_DOS_6.0 "DR DOS 6.0")).[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[20\]](#cite_note-Paul_2002_CLS-22)

`%INFO%`

In some versions of DR-DOS `COMMAND.COM` this variable defines the string displayed by the `$I` token of the `[PROMPT](https://en.wikipedia.org/wiki/PROMPT_(DOS_command) "PROMPT (DOS command)")` command.[\[20\]](#cite_note-Paul_2002_CLS-22) It can be used, for example, to inform the user how to exit secondary shells.

`%LOGINNAME%`

In some versions of DR-DOS `COMMAND.COM` this variable defines the user name displayed by the `$U` token of the `[PROMPT](https://en.wikipedia.org/wiki/PROMPT_(DOS_command) "PROMPT (DOS command)")` command, as set up by f.e. login scripts for [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare").[\[10\]](#cite_note-4DOS_8.00_HELP-10)[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[20\]](#cite_note-Paul_2002_CLS-22) See also the similarly named pseudo-variable `[%LOGIN_NAME%](#%LOGIN_NAME%)`.

`%MDOS_EXEC%`

This variable can take the values "`ON`" or "`OFF`" under [Multiuser DOS](https://en.wikipedia.org/wiki/Multiuser_DOS "Multiuser DOS"). If enabled, the operating system permits applications to shell out to secondary shells with the [DOS Program Area](https://en.wikipedia.org/w/index.php?title=DOS_Program_Area&action=edit&redlink=1 "DOS Program Area (page does not exist)") (DPA) freed in order to have maximum DOS memory available for secondary applications instead of running them in the same domain as under DOS.[\[23\]](#cite_note-CCI_1997_HELP-25)[\[24\]](#cite_note-CCI_1997_PRINTDOC-26)

`%NOCHAR%`

This variable can be used to define the character displayed by some commands in messages for "No" in `[Y,N]` queries, thereby overriding the current system default (typically "`N`" in English versions of DR-DOS). If it contains a string, only the first character, uppercased, will be taken. Some commands also support a command line parameter `/Y` to automatically assume "Yes" on queries, thereby suppressing such prompts. If, however, the parameter `/Y:yn` is used to specify the "Yes"/"No" characters (thereby overriding any `%NOCHAR%` setting), queries are not suppressed. See also the related `CONFIG.SYS` directive `[NOCHAR](https://en.wikipedia.org/wiki/NOCHAR_(CONFIG.SYS_directive) "NOCHAR (CONFIG.SYS directive)")` and the environment variable `[%YESCHAR%](#%YESCHAR%)`.[\[22\]](#cite_note-Paul_2017-24)

`%NOSOUND%`

Setting this variable to "`ON`" or "`1`" will disable default beeps issued by some DR-DOS commands in certain situations such as to inform the user of the completion of some operation, that user interaction is required, or when a wrong key was pressed. Command line options to specifically enable certain beeps will override this setting.

`%OS%`

This variable contains the name of the operating system in order to distinguish between different DOS-related operating systems of [Digital Research](https://en.wikipedia.org/wiki/Digital_Research "Digital Research")\-origin in batch jobs and applications.[\[21\]](#cite_note-Caldera_1998_USER-23) Known values include "`DOSPLUS`" ([DOS Plus 1.2](https://en.wikipedia.org/wiki/DOS_Plus_1.2 "DOS Plus 1.2") in DOS emulation), "`CPCDOS 4.1`" (DOS Plus 1.2 in [CP/M](https://en.wikipedia.org/wiki/CP/M "CP/M") emulation), "`DRDOS`" ([DR DOS 3.31](https://en.wikipedia.org/wiki/DR_DOS_3.31 "DR DOS 3.31")\-[6.0](https://en.wikipedia.org/wiki/DR_DOS_6.0 "DR DOS 6.0"), [DR DOS Panther](https://en.wikipedia.org/wiki/DR_DOS_Panther "DR DOS Panther"), [DR DOS StarTrek](https://en.wikipedia.org/wiki/DR_DOS_StarTrek "DR DOS StarTrek"), [DR-DOS 7.02](https://en.wikipedia.org/wiki/DR-DOS_7.02 "DR-DOS 7.02")[\[21\]](#cite_note-Caldera_1998_USER-23)\-[7.05](https://en.wikipedia.org/wiki/DR-DOS_7.05 "DR-DOS 7.05")), "`EZDOS`" ([EZ-DOS 3.41](https://en.wikipedia.org/wiki/EZ-DOS_3.41 "EZ-DOS 3.41")), "`PALMDOS`" and "`NetWare PalmDOS`" ([PalmDOS 1.0](https://en.wikipedia.org/wiki/PalmDOS_1.0 "PalmDOS 1.0")), "`NWDOS`" ([Novell DOS 7](https://en.wikipedia.org/wiki/Novell_DOS_7 "Novell DOS 7")), "`NWDOS7`" (Novell DOS 7 Beta), "`OPENDOS`" ([Caldera OpenDOS 7.01](https://en.wikipedia.org/wiki/Caldera_OpenDOS_7.01 "Caldera OpenDOS 7.01"), [Caldera DR-OpenDOS 7.02](https://en.wikipedia.org/wiki/Caldera_DR-OpenDOS_7.02 "Caldera DR-OpenDOS 7.02")), "`CDOS`" ([Concurrent DOS](https://en.wikipedia.org/wiki/Concurrent_DOS "Concurrent DOS"), [Concurrent DOS XM](https://en.wikipedia.org/wiki/Concurrent_DOS_XM "Concurrent DOS XM")), "`CPCDOS`" ([Concurrent PC DOS](https://en.wikipedia.org/wiki/Concurrent_PC_DOS "Concurrent PC DOS")), "`CDOS386`" ([Concurrent DOS 386](https://en.wikipedia.org/wiki/Concurrent_DOS_386 "Concurrent DOS 386")), "`DRMDOS`" ([DR Multiuser DOS](https://en.wikipedia.org/wiki/DR_Multiuser_DOS "DR Multiuser DOS")), "`MDOS`" ([CCI Multiuser DOS](https://en.wikipedia.org/wiki/CCI_Multiuser_DOS "CCI Multiuser DOS")),[\[23\]](#cite_note-CCI_1997_HELP-25) "`IMSMDOS`" ([IMS Multiuser DOS](https://en.wikipedia.org/wiki/IMS_Multiuser_DOS "IMS Multiuser DOS")), "`REAL32`" ([REAL/32](https://en.wikipedia.org/wiki/REAL/32 "REAL/32")).[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[25\]](#cite_note-Paul_2002_OS-27) MS-DOS `[INTERSVR](https://en.wikipedia.org/wiki/INTERSVR_(DOS_command) "INTERSVR (DOS command)")` looks for a value of "`DRDOS`" as well.[\[25\]](#cite_note-Paul_2002_OS-27) See also the identically named environment variable `[%OS%](#OS)` later introduced in the [Windows NT family](https://en.wikipedia.org/wiki/Windows_NT_family "Windows NT family").

`%PEXEC%`

In some versions of DR-DOS this variable defines the command executed by the `$X` token of the `[PROMPT](https://en.wikipedia.org/wiki/PROMPT_(DOS_command) "PROMPT (DOS command)")` command before `COMMAND.COM` displays the prompt after returning from external program execution.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[21\]](#cite_note-Caldera_1998_USER-23)

`%SWITCHAR%`

This variable defines the [SwitChar](https://en.wikipedia.org/wiki/SwitChar "SwitChar") to be used for argument parsing by some DR-DOS commands. If defined, it overrides the system's current SwitChar setting. The only accepted characters are "`/`" (DOS style), "`-`" (Unix style) and "`[`" (CP/M style). See also the related `CONFIG.SYS` directive `[SWITCHAR](https://en.wikipedia.org/wiki/SWITCHAR_(CONFIG.SYS_directive) "SWITCHAR (CONFIG.SYS directive)")` (to set the system's SwitChar setting) and the `[%/%](#%/%)` _system information variable_ in some issues of DR-DOS `COMMAND.COM` (to retrieve the current setting for portable batchjobs).

`%TASKMGRWINDIR%`

This variable specifies the directory, where the [Windows](https://en.wikipedia.org/wiki/Windows "Windows") `[SYSTEM.INI](https://en.wikipedia.org/wiki/SYSTEM.INI "SYSTEM.INI")` to be used by the DR-DOS `TASKMGR` multitasker is located, overriding the default procedure to locate the file.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)

`%VER%`

This variable contains the version of the operating system in order to distinguish between different versions of DR-DOS in batch jobs and in the display of the `[VER](https://en.wikipedia.org/wiki/Ver_(command) "Ver (command)")` command.[\[21\]](#cite_note-Caldera_1998_USER-23) It is also used for the `$V` token of the `[PROMPT](https://en.wikipedia.org/wiki/PROMPT_(DOS_command) "PROMPT (DOS command)")` command and affects the value returned by the _system information variable_ `[%OS_VERSION%](#%OS_VERSION%)`. Known values include "`1.0`" ([PalmDOS 1.0](https://en.wikipedia.org/wiki/PalmDOS_1.0 "PalmDOS 1.0")), "`1.2`" ([DOS Plus 1.2](https://en.wikipedia.org/wiki/DOS_Plus_1.2 "DOS Plus 1.2") in DOS emulation), "`2.0`" ([Concurrent DOS 386 2.0](https://en.wikipedia.org/wiki/Concurrent_DOS_386_2.0 "Concurrent DOS 386 2.0")), "`3.0`" ([Concurrent DOS 386 3.0](https://en.wikipedia.org/wiki/Concurrent_DOS_386_3.0 "Concurrent DOS 386 3.0")), "`3.31`" ([DR DOS 3.31](https://en.wikipedia.org/wiki/DR_DOS_3.31 "DR DOS 3.31")), "`3.32`" ([DR DOS 3.32](https://en.wikipedia.org/wiki/DR_DOS_3.32 "DR DOS 3.32")), "`3.33`" ([DR DOS 3.33](https://en.wikipedia.org/wiki/DR_DOS_3.33 "DR DOS 3.33")), "`3.34`" ([DR DOS 3.34](https://en.wikipedia.org/wiki/DR_DOS_3.34 "DR DOS 3.34")), "`3.35`" ([DR DOS 3.35](https://en.wikipedia.org/wiki/DR_DOS_3.35 "DR DOS 3.35")), "`3.40`" ([DR DOS 3.40](https://en.wikipedia.org/wiki/DR_DOS_3.40 "DR DOS 3.40")), "`3.41`" ([DR DOS 3.41](https://en.wikipedia.org/wiki/DR_DOS_3.41 "DR DOS 3.41"), [EZ-DOS 3.41](https://en.wikipedia.org/wiki/EZ-DOS_3.41 "EZ-DOS 3.41")), "`3.41T`" ([DR DOS 3.41T](https://en.wikipedia.org/wiki/DR_DOS_3.41T "DR DOS 3.41T")), "`4.1`" ([Concurrent PC DOS 4.1](https://en.wikipedia.org/wiki/Concurrent_PC_DOS_4.1 "Concurrent PC DOS 4.1")), "`5.0`" ([DR DOS 5.0](https://en.wikipedia.org/wiki/DR_DOS_5.0 "DR DOS 5.0"), [DR Multiuser DOS 5.0](https://en.wikipedia.org/wiki/DR_Multiuser_DOS_5.0 "DR Multiuser DOS 5.0")), "`5.1`" ([Novell DR Multiuser DOS 5.1](https://en.wikipedia.org/wiki/Novell_DR_Multiuser_DOS_5.1 "Novell DR Multiuser DOS 5.1")), "`6.0`" ([DR Concurrent DOS XM 6.0](https://en.wikipedia.org/wiki/DR_Concurrent_DOS_XM_6.0 "DR Concurrent DOS XM 6.0"), [DR DOS 6.0](https://en.wikipedia.org/wiki/DR_DOS_6.0 "DR DOS 6.0")), "`6.2`" ([DR Concurrent DOS XM 6.2](https://en.wikipedia.org/wiki/DR_Concurrent_DOS_XM_6.2 "DR Concurrent DOS XM 6.2")), "`7`" ([Novell DOS 7](https://en.wikipedia.org/wiki/Novell_DOS_7 "Novell DOS 7"), [Caldera OpenDOS 7.01](https://en.wikipedia.org/wiki/Caldera_OpenDOS_7.01 "Caldera OpenDOS 7.01"), [DR-DOS 7.02](https://en.wikipedia.org/wiki/DR-DOS_7.02 "DR-DOS 7.02")\-[7.05](https://en.wikipedia.org/wiki/DR-DOS_7.05 "DR-DOS 7.05")), "`7.00`" ([CCI Multiuser DOS 7.00](https://en.wikipedia.org/wiki/CCI_Multiuser_DOS_7.00 "CCI Multiuser DOS 7.00")), "`7.07`" ([DR-DOS 7.07](https://en.wikipedia.org/wiki/DR-DOS_7.07 "DR-DOS 7.07")), "`7.1`" ([IMS Multiuser DOS 7.1](https://en.wikipedia.org/wiki/IMS_Multiuser_DOS_7.1 "IMS Multiuser DOS 7.1")), "`7.21`" ([CCI Multiuser DOS 7.21](https://en.wikipedia.org/wiki/CCI_Multiuser_DOS_7.21 "CCI Multiuser DOS 7.21")),[\[23\]](#cite_note-CCI_1997_HELP-25) "`7.22`" ([CCI Multiuser DOS 7.22](https://en.wikipedia.org/wiki/CCI_Multiuser_DOS_7.22 "CCI Multiuser DOS 7.22")) etc.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[25\]](#cite_note-Paul_2002_OS-27)[\[23\]](#cite_note-CCI_1997_HELP-25)

`%YESCHAR%`

This variable can be used to define the character displayed by some commands in messages for "Yes" in `[Y,N]` queries, thereby overriding the current system default (typically "`Y`" in English versions of DR-DOS). If it contains a string, only the first character, uppercased, will be taken. Some commands also support a command line parameter `/Y` to automatically assume "Yes" on queries, thereby suppressing such prompts. If, however, the parameter `/Y:y` is used to specify the "Yes" character (thereby overriding any `%YESCHAR%` setting), queries are not suppressed. See also the related `CONFIG.SYS` directive `[YESCHAR](https://en.wikipedia.org/wiki/YESCHAR_(CONFIG.SYS_directive) "YESCHAR (CONFIG.SYS directive)")` and the environment variable `[%NOCHAR%](#%NOCHAR%)`.[\[22\]](#cite_note-Paul_2017-24)

`%$CLS%`

This variable defines the control sequence to be sent to the console driver to clear the screen when the `[CLS](https://en.wikipedia.org/wiki/CLS_(command) "CLS (command)")` command is issued, thereby overriding the internal default ("`←[2J`" under DR-DOS, "`←E`" under [DOS Plus 1.2](https://en.wikipedia.org/wiki/DOS_Plus_1.2 "DOS Plus 1.2") on Amstrad machines[\[19\]](#cite_note-Kotulla_1987_Environment-21) as well as under [Concurrent DOS](https://en.wikipedia.org/wiki/Concurrent_DOS "Concurrent DOS"), [Multiuser DOS](https://en.wikipedia.org/wiki/Multiuser_DOS "Multiuser DOS"), and [REAL/32](https://en.wikipedia.org/wiki/REAL/32 "REAL/32") for [VT52](https://en.wikipedia.org/wiki/VT52 "VT52") terminals, or "`←+`" under Multiuser DOS for [ASCII](https://en.wikipedia.org/wiki/ASCII "ASCII") terminals).[\[23\]](#cite_note-CCI_1997_HELP-25) If the variable is not defined and no `[ANSI.SYS](https://en.wikipedia.org/wiki/ANSI.SYS "ANSI.SYS")` console driver is detected, the DR-DOS `COMMAND.COM` will directly clear the screen via `INT 10h/AH=00h` [BIOS](https://en.wikipedia.org/wiki/PC_BIOS "PC BIOS") function, like MS-DOS/PC DOS `COMMAND.COM` does. A special `\nnn`\-notation for [octal numbers](https://en.wikipedia.org/wiki/Octal_number "Octal number") is supported to allow the definition of special characters like ESC ([ASCII-27](https://en.wikipedia.org/wiki/ASCII_27 "ASCII 27") = "←" = 1Bh = 33o), as f.e. in `SET $CLS=\033[2J`. To send the backslash ("`\`") itself, it can be doubled "`\\`".[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[20\]](#cite_note-Paul_2002_CLS-22)[\[23\]](#cite_note-CCI_1997_HELP-25)

`%$DIR%`

Supported by [DOS Plus](https://en.wikipedia.org/wiki/DOS_Plus "DOS Plus") accepting the values "L" (long) or "W" (wide) to change the default layout of directory listings with [DIR](https://en.wikipedia.org/wiki/Dir_(command) "Dir (command)"). Can be overridden using the command line options `/L` or `/W`.[\[20\]](#cite_note-Paul_2002_CLS-22)[\[19\]](#cite_note-Kotulla_1987_Environment-21) See also the similar environment variable `[%DIRCMD%](#%DIRCMD%)` and the `DIR` options `/C` and `/R` of the DR-DOS COMMAND.COM.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)

`%$PAGE%`

Supported by [DOS Plus](https://en.wikipedia.org/wiki/DOS_Plus "DOS Plus") accepting the values "`ON`" or "`OFF`" for pagination control. Setting this to "`ON`" has the same affect as adding `/P` to commands supporting it (like [DIR](https://en.wikipedia.org/wiki/Dir_(command) "Dir (command)") or [TYPE](https://en.wikipedia.org/wiki/TYPE_(DOS_command) "TYPE (DOS command)")).[\[20\]](#cite_note-Paul_2002_CLS-22)[\[19\]](#cite_note-Kotulla_1987_Environment-21)

`%$LENGTH%`

Used by [DOS Plus](https://en.wikipedia.org/wiki/DOS_Plus "DOS Plus") to define the screen length of the console in lines. This is used to control in a portable way when the screen output should be temporarily halted until a key is pressed in conjunction with the `/P` option supported by various commands or with automatic pagnination.[\[20\]](#cite_note-Paul_2002_CLS-22)[\[19\]](#cite_note-Kotulla_1987_Environment-21) See also the related environment variables `[%$WIDTH%](#%$WIDTH%)` and `[%DIRSIZE%](#%DIRSIZE%)` as well as the similar pseudo-variable `[%_ROWS%](#%_ROWS%)`.

`%$WIDTH%`

Used by [DOS Plus](https://en.wikipedia.org/wiki/DOS_Plus "DOS Plus") to define the screen width of the console in columns. This is used to control in a portable way the formatting of the screen output of commands like `[DIR](https://en.wikipedia.org/wiki/Dir_(command) "Dir (command)") /W` or `[TYPE](https://en.wikipedia.org/wiki/TYPE_(DOS_command) "TYPE (DOS command)") filename`.[\[20\]](#cite_note-Paul_2002_CLS-22)[\[19\]](#cite_note-Kotulla_1987_Environment-21) See also the related environment variables `[%$LENGTH%](#%$LENGTH%)` and `[%DIRSIZE%](#%DIRSIZE%)` as well as the similar pseudo-variable `[%_COLUMNS%](#%_COLUMNS%)`.

`%$SLICE%`

Used by [DOS Plus](https://en.wikipedia.org/wiki/DOS_Plus "DOS Plus") accepting a numerical value to control the foreground/background time slicing of multitasking programs.[\[20\]](#cite_note-Paul_2002_CLS-22)[\[19\]](#cite_note-Kotulla_1987_Environment-21) See also the DOS Plus command `[SLICE](https://en.wikipedia.org/wiki/SLICE_(DOS_command) "SLICE (DOS command)")`.

`%$ON%`

This variable can hold an optional control sequence to switch text highlighting, reversion or colorization on. It is used to emphasize or otherwise control the display of the file names in commands like `[TYPE](https://en.wikipedia.org/wiki/TYPE_(DOS_command) "TYPE (DOS command)") wildcard`, for example `SET $ON=\033[1m` with [ANSI.SYS](https://en.wikipedia.org/wiki/ANSI.SYS "ANSI.SYS") loaded or `SET $ON=\016` for an IBM or [ESC/P](https://en.wikipedia.org/wiki/ESC/P "ESC/P") printer. For the special `\nnn` octal notation supported, see `[%$CLS%](#%$CLS%)`.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[19\]](#cite_note-Kotulla_1987_Environment-21) While the variable is undefined by default under DOS Plus and DR-DOS, the [Multiuser DOS](https://en.wikipedia.org/wiki/Multiuser_DOS "Multiuser DOS") default for an [ASCII](https://en.wikipedia.org/wiki/ASCII "ASCII") terminal equals `SET $ON=\033p`.[\[20\]](#cite_note-Paul_2002_CLS-22)[\[23\]](#cite_note-CCI_1997_HELP-25) See also the related environment variable `[%$OFF%](#%$OFF%)`.

`%$OFF%`

This variable can hold an optional control sequence to switch text highlighting, reversion or colorization off. It is used to return to the normal output after the display of file names in commands like `[TYPE](https://en.wikipedia.org/wiki/TYPE_(DOS_command) "TYPE (DOS command)") wildcard`, for example `SET $OFF=\033[0m` with [ANSI.SYS](https://en.wikipedia.org/wiki/ANSI.SYS "ANSI.SYS") loaded or `SET $OFF=\024` for an IBM or [ESC/P](https://en.wikipedia.org/wiki/ESC/P "ESC/P") printer. For the special `\nnn` octal notation supported, see `[%$CLS%](#%$CLS%)`.[\[11\]](#cite_note-Paul_1997_NWDOSTIP-11)[\[19\]](#cite_note-Kotulla_1987_Environment-21) While the variable is undefined by default under DOS Plus and DR-DOS, the [Multiuser DOS](https://en.wikipedia.org/wiki/Multiuser_DOS "Multiuser DOS") default for an [ASCII](https://en.wikipedia.org/wiki/ASCII "ASCII") terminal equals `SET $OFF=\033q`.[\[20\]](#cite_note-Paul_2002_CLS-22)[\[23\]](#cite_note-CCI_1997_HELP-25) See also the related environment variable `[%$ON%](#%$ON%)`.

`%$HEADER%`

This variable can hold an optional control sequence issued before the output of the file contents in commands like `[TYPE](https://en.wikipedia.org/wiki/TYPE_(DOS_command) "TYPE (DOS command)")` under DR-DOS 7.02 and higher. It can be used for highlighting, pagination or formatting, f.e. when sending the output to a printer, i.e. `SET $HEADER=\017` for an IBM or [ESC/P](https://en.wikipedia.org/wiki/ESC/P "ESC/P") printer. For the special `\nnn` octal notation supported, see `[%$CLS%](#%$CLS%)`.[\[20\]](#cite_note-Paul_2002_CLS-22) See also the related environment variable `[%$FOOTER%](#%$FOOTER%)`.

`%$FOOTER%`

This variable can hold an optional control sequence issued after the output of the file contents in commands like `[TYPE](https://en.wikipedia.org/wiki/TYPE_(DOS_command) "TYPE (DOS command)")` under DR-DOS 7.02 and higher. It is used to return to the normal output format, i.e. `SET $FOOTER=\022\014` in the printer example above. For the special `\nnn` octal notation supported, see `[%$CLS%](#%$CLS%)`.[\[20\]](#cite_note-Paul_2002_CLS-22) See also the related environment variable `[%$HEADER%](#%$HEADER%)`.

[Datalight ROM-DOS](https://en.wikipedia.org/wiki/Datalight_ROM-DOS "Datalight ROM-DOS") supports a number of additional _standard environment variables_ as well including:

`%DIRSIZE%`

This variable is used to define non-standard screen sizes `rows[,cols]` for `[DIR](https://en.wikipedia.org/wiki/DIR_(DOS_command) "DIR (DOS command)")` options `/P` and `/W` (similar to `[%$LENGTH%](#%$LENGTH%)` and `[%$WIDTH%](#%$WIDTH%)` under DOS Plus).[\[18\]](#cite_note-Datalight_2005_ROM-DOS-19)

`%NEWFILE%`

This variable is automatically set to the first parameter given to the CONFIG.SYS directive [NEWFILE](https://en.wikipedia.org/wiki/NEWFILE_(CONFIG.SYS_directive) "NEWFILE (CONFIG.SYS directive)").[\[18\]](#cite_note-Datalight_2005_ROM-DOS-19)

`%TZ%`, `%COMM%`, `%SOCKETS%`, `%HTTP_DIR%`, `%HOSTNAME%` and `%FTPDIR%` are also used by ROM-DOS.[\[18\]](#cite_note-Datalight_2005_ROM-DOS-19)

`%BEGINLIBPATH%`

Contains a semicolon-separated list of directories which are searched for [DLLs](https://en.wikipedia.org/wiki/Dynamic-link_library "Dynamic-link library") _before_ the directories given by the `[%LIBPATH%](https://en.wikipedia.org/wiki/LIBPATH "LIBPATH")` variable (which is set during system startup with the special [CONFIG.SYS](https://en.wikipedia.org/wiki/CONFIG.SYS "CONFIG.SYS") directive `[LIBPATH](https://en.wikipedia.org/wiki/LIBPATH_(CONFIG.SYS_directive) "LIBPATH (CONFIG.SYS directive)")`). It is possible to specify relative directories here, including "`.`" for the current working directory. See also the related environment variable `[%ENDLIBPATH%](#ENDLIBPATH)`.

`%ENDLIBPATH%`

a list of directories to be searched for [DLLs](https://en.wikipedia.org/wiki/Dynamic-link_library "Dynamic-link library") like `[%BEGINLIBPATH%](#BEGINLIBPATH)`, but searched _after_ the list of directories in `[%LIBPATH%](https://en.wikipedia.org/wiki/LIBPATH "LIBPATH")`.

These environment variables refer to locations of critical operating system resources, and as such generally are not user-dependent.[\[26\]](#cite_note-28)

`%APPDATA%`

Contains the full path to the _[Application Data](https://en.wikipedia.org/wiki/Special_folder "Special folder")_ directory of the logged-in user. Does not work on Windows NT 4.0 SP6 UK.

`%LOCALAPPDATA%`

This variable is the temporary files of _Applications_. Its uses include storing of [desktop themes](https://en.wikipedia.org/wiki/Theme_(computing) "Theme (computing)"), [Windows error reporting](https://en.wikipedia.org/wiki/Windows_error_reporting "Windows error reporting"), caching and profiles of web browsers.

`%[ComSpec](https://en.wikipedia.org/wiki/ComSpec "ComSpec")%`/`%[COMSPEC](https://en.wikipedia.org/wiki/COMSPEC "COMSPEC")%`

The `%ComSpec%` variable contains the full path to the command processor; on the Windows NT family of operating systems, this is [cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe "Cmd.exe"), while on [Windows 9x](https://en.wikipedia.org/wiki/Windows_9x "Windows 9x"), `%COMSPEC%` is [COMMAND.COM](https://en.wikipedia.org/wiki/COMMAND.COM "COMMAND.COM").

`%OS%`

The `%OS%` variable contains a symbolic name of the operating system family to distinguish between differing feature sets in [batchjobs](https://en.wikipedia.org/wiki/Batchjob "Batchjob"). It resembles an identically named environment variable `[%OS%](#%OS%)` found in all DOS-related operating systems of [Digital Research](https://en.wikipedia.org/wiki/Digital_Research "Digital Research")\-origin like Concurrent DOS, [Multiuser DOS](https://en.wikipedia.org/wiki/Multiuser_DOS "Multiuser DOS"), REAL/32, [DOS Plus](https://en.wikipedia.org/wiki/DOS_Plus "DOS Plus"), [DR DOS](https://en.wikipedia.org/wiki/DR_DOS "DR DOS"), Novell DOS and OpenDOS. `%OS%` always holds the string "`Windows_NT`" on the [Windows NT family](https://en.wikipedia.org/wiki/Windows_NT_family "Windows NT family").[\[27\]](#cite_note-Ten_XP-29)

`%PATH%`

This variable contains a semicolon-delimited (do not put spaces in between) list of directories in which the command interpreter will search for an executable file that matches the given command. Environment variables that represent paths may be nested within the `%PATH%` variable, but only at one level of indirection. If this sub-path environment variable itself contains an environment variable representing a path, `%PATH%` will not expand properly in the variable substitution. Equivalent to the [Unix](https://en.wikipedia.org/wiki/Unix "Unix") `[$PATH](#$PATH)` variable.

`%ProgramFiles%`, `%ProgramFiles(x86)%`, `%ProgramW6432%`

The `%ProgramFiles%` variable points to the _Program Files_ directory, which stores all the installed programs of Windows and others. The default on English-language systems is "`C:\Program Files`". In 64-bit editions of Windows (XP, 2003, Vista), there are also `%ProgramFiles(x86)%`, which defaults to "`C:\Program Files (x86)`", and `%ProgramW6432%`, which defaults to "`C:\Program Files`". The `%ProgramFiles%` itself depends on whether the process requesting the environment variable is itself 32-bit or 64-bit (this is caused by [Windows-on-Windows 64-bit](https://en.wikipedia.org/wiki/WoW64 "WoW64") redirection).

`%CommonProgramFiles%`

This variable points to the _Common Files_ directory. The default is "`C:\Program Files\Common Files`" in the English version of Windows.

`%OneDrive%`

The `%OneDrive%` variable is a special system-wide environment variable found on Windows NT and its derivatives. Its value is the path of where (if installed and setup) the Onedrive directory is located. The value of `%OneDrive%` is in most cases "`C:\Users\{Username}\OneDrive\`".

`%SystemDrive%`

The `%SystemDrive%` variable is a special system-wide environment variable found on Windows NT and its derivatives. Its value is the drive upon which the system directory was placed. The value of `%SystemDrive%` is in most cases "`C:`".

`%SystemRoot%`

The `%SystemRoot%` variable is a special system-wide environment variable found on the Windows NT family of operating systems. Its value is the location of the system directory, including the drive and path. The drive is the same as `%SystemDrive%` and the default path on a clean installation depends upon the version of the operating system. By default:

*   [Windows XP](https://en.wikipedia.org/wiki/Windows_XP "Windows XP") and newer versions use "`\WINDOWS`".
*   [Windows 2000](https://en.wikipedia.org/wiki/Windows_2000 "Windows 2000"), [NT 4.0](https://en.wikipedia.org/wiki/Windows_NT_4.0 "Windows NT 4.0") and [NT 3.1](https://en.wikipedia.org/wiki/Windows_NT_3.1 "Windows NT 3.1") use "`\WINNT`".
*   [Windows NT 3.5](https://en.wikipedia.org/wiki/Windows_NT_3.5 "Windows NT 3.5") and [NT 3.51](https://en.wikipedia.org/wiki/Windows_NT_3.51 "Windows NT 3.51") uses "`\WINNT35`".
*   [Windows NT 4.0 Terminal Server](https://en.wikipedia.org/wiki/Windows_NT_4.0_Terminal_Server "Windows NT 4.0 Terminal Server") uses "`\WTSRV`".

`%windir%`

This variable points to the _Windows_ directory. (On the Windows NT family of operating systems, it is identical to the `%SystemRoot%` variable). [Windows 95](https://en.wikipedia.org/wiki/Windows_95 "Windows 95")–[98](https://en.wikipedia.org/wiki/Windows_98 "Windows 98") and [Windows ME](https://en.wikipedia.org/wiki/Windows_ME "Windows ME") are, by default, installed in "`C:\Windows`". For other versions of Windows, see the `%SystemRoot%` entry above.

_User management variables_\[_[citation needed](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed")_\] store information related to resources and settings owned by various [user profiles](https://en.wikipedia.org/wiki/User_profile "User profile") within the system. As a general rule, these variables do not refer to critical system resources or locations that are necessary for the OS to run.

`%ALLUSERSPROFILE%` (`%PROGRAMDATA%` since Windows Vista)

This variable expands to the full path to the _All Users_ profile directory. This profile contains resources and settings that are used by all system accounts. [Shortcut](https://en.wikipedia.org/wiki/Shortcut_(computing) "Shortcut (computing)") links copied to the _All Users_\\' _Start menu_ or _Desktop_ directories will appear in every user's _Start menu_ or _[Desktop](https://en.wikipedia.org/wiki/Desktop_metaphor "Desktop metaphor")_, respectively.

`%USERDOMAIN%`

The name of the _[Workgroup](https://en.wikipedia.org/wiki/Workgroup_(computer_networking) "Workgroup (computer networking)")_ or _[Windows Domain](https://en.wikipedia.org/wiki/Windows_Server_domain "Windows Server domain")_ to which the current user belongs. The related variable, `%LOGONSERVER%`, holds the [hostname](https://en.wikipedia.org/wiki/Hostname "Hostname") of the server that authenticated the current user's login credentials (name and password). For home PCs and PCs in a workgroup, the authenticating server is usually the PC itself. For PCs in a Windows domain, the authenticating server is a [domain controller](https://en.wikipedia.org/wiki/Domain_controller "Domain controller") (a primary domain controller, or PDC, in Windows NT 4-based domains).

`%USERPROFILE%`

A special system-wide environment variable found on Windows NT and its derivatives. Its value is the location of the current user's profile directory, in which is found that user's HKCU registry hive (`NTUSER`). Users can also use the `%USERNAME%` variable to determine the active users login identification.

_Optional System variables_\[_[citation needed](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed")_\] are not explicitly specified by default but can be used to modify the default behavior of certain built-in console commands. These variables also do not need to be explicitly specified as command line arguments.

The following tables shows typical default values of certain environment variables under English versions of Windows as they can be retrieved under `[CMD](https://en.wikipedia.org/wiki/CMD_(Windows) "CMD (Windows)")`.

(Some of these variables are also defined when running `COMMAND.COM` under Windows, but differ in certain important details: Under `COMMAND.COM`, the names of environment variable are always uppercased. Some, but not all variables contain short [8.3](https://en.wikipedia.org/wiki/8.3_filename "8.3 filename") rather than [long file names](https://en.wikipedia.org/wiki/Long_file_name "Long file name"). While some variables present in the `CMD` environment are missing, there are also some variables specific to the `COMMAND` environment.)



* Variable: %ALLUSERSPROFILE%[28]
  * Locale specific: Yes
  * Windows XP (CMD): C:\Documents and Settings\All Users
  * Windows Vista and later (CMD): C:\ProgramData[28]
* Variable: %APPDATA%[28]
  * Locale specific: Yes
  * Windows XP (CMD): C:\Documents and Settings\{username}\Application Data
  * Windows Vista and later (CMD): C:\Users\{username}\AppData\Roaming[28]
* Variable: %CommonProgramFiles%[28]
  * Locale specific: Yes
  * Windows XP (CMD): C:\Program Files\Common Files
  * Windows Vista and later (CMD): C:\Program Files\Common Files[28]
* Variable: %CommonProgramFiles(x86)%[28]
  * Locale specific: Yes
  * Windows XP (CMD): C:\Program Files (x86)\Common Files (only in 64-bit version)
  * Windows Vista and later (CMD): C:\Program Files (x86)\Common Files (only in 64-bit version)[28]
* Variable: %CommonProgramW6432%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %CommonProgramW6432% (not supported, not replaced by any value)
  * Windows Vista and later (CMD): C:\Program Files\Common Files (only in 64-bit version)[28]
* Variable: %COMPUTERNAME%
  * Locale specific: No
  * Windows XP (CMD): {computername}
  * Windows Vista and later (CMD): {computername}
* Variable: %ComSpec%
  * Locale specific: No
  * Windows XP (CMD): C:\Windows\System32\cmd.exe
  * Windows Vista and later (CMD): C:\Windows\System32\cmd.exe
* Variable: %HOMEDRIVE%[28]
  * Locale specific: No
  * Windows XP (CMD): C:
  * Windows Vista and later (CMD): C:[28]
* Variable: %HOMEPATH%[28]
  * Locale specific: Yes
  * Windows XP (CMD): \Documents and Settings\{username}
  * Windows Vista and later (CMD): \Users\{username}[28]
* Variable: %LOCALAPPDATA%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %LOCALAPPDATA% (not supported, not replaced by any value)
  * Windows Vista and later (CMD): C:\Users\{username}\AppData\Local[28]
* Variable: %LOGONSERVER%
  * Locale specific: No
  * Windows XP (CMD): \\{domain_logon_server}
  * Windows Vista and later (CMD): \\{domain_logon_server}
* Variable: %PATH%
  * Locale specific: Yes
  * Windows XP (CMD): C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;{plus program paths}
  * Windows Vista and later (CMD): C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;{plus program paths}
* Variable: %PATHEXT%
  * Locale specific: No
  * Windows XP (CMD): .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.WSF;.WSH
  * Windows Vista and later (CMD): .com;.exe;.bat;.cmd;.vbs;.vbe;.js;.jse;.wsf;.wsh;.msc
* Variable: %ProgramData%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %ProgramData% (not supported, not replaced by any value)
  * Windows Vista and later (CMD): %SystemDrive%\ProgramData[28]
* Variable: %ProgramFiles%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %SystemDrive%\Program Files
  * Windows Vista and later (CMD): %SystemDrive%\Program Files[28]
* Variable: %ProgramFiles(x86)%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %SystemDrive%\Program Files (x86) (only in 64-bit version)
  * Windows Vista and later (CMD): %SystemDrive%\Program Files (x86) (only in 64-bit version)[28]
* Variable: %ProgramW6432%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %ProgramW6432% (not supported, not replaced by any value)
  * Windows Vista and later (CMD): %SystemDrive%\Program Files (only in 64-bit version)[28]
* Variable: %PROMPT%
  * Locale specific: No
  * Windows XP (CMD): Code for current command prompt format, usually $P$G
  * Windows Vista and later (CMD): Code for current command prompt format, usually $P$G
* Variable: %PSModulePath%
  * Locale specific: 
  * Windows XP (CMD): %PSModulePath% (not supported, not replaced by any value)
  * Windows Vista and later (CMD): %SystemRoot%\system32\WindowsPowerShell\v1.0\Modules\
* Variable: %PUBLIC%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %PUBLIC% (not supported, not replaced by any value)
  * Windows Vista and later (CMD): %SystemDrive%\Users\Public[28]
* Variable: %SystemDrive%[28]
  * Locale specific: No
  * Windows XP (CMD): C:
  * Windows Vista and later (CMD): C:[28]
* Variable: %SystemRoot%[28]
  * Locale specific: No
  * Windows XP (CMD): The Windows directory, usually C:\Windows, formerly C:\WINNT
  * Windows Vista and later (CMD): %SystemDrive%\Windows[28]
* Variable: %TEMP%[28] and %TMP%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %SystemDrive%\Documents and Settings\{username}\Local Settings\Temp
  * Windows Vista and later (CMD): %SystemRoot%\TEMP (for system environment variables %TMP% and %TEMP%), %USERPROFILE%\AppData\Local\Temp[28] (for user environment variables %TMP% and %TEMP%)
* Variable: %USERDOMAIN%
  * Locale specific: No
  * Windows XP (CMD): {userdomain}
  * Windows Vista and later (CMD): {userdomain}
* Variable: %USERNAME%
  * Locale specific: No
  * Windows XP (CMD): {username}
  * Windows Vista and later (CMD): {username}
* Variable: %USERPROFILE%[28]
  * Locale specific: Yes
  * Windows XP (CMD): %SystemDrive%\Documents and Settings\{username}
  * Windows Vista and later (CMD): %SystemDrive%\Users\{username}[28]
* Variable: %windir%[28]
  * Locale specific: No
  * Windows XP (CMD): %SystemDrive%\WINDOWS
  * Windows Vista and later (CMD): %SystemDrive%\Windows[28]


In this list, there is no environment variable that refers to the location of the user's _My Documents_ directory, so there is no standard method for setting a program's home directory to be the _My Documents_ directory.

Pseudo-environment variables
----------------------------



The command processors in DOS and Windows also support pseudo-environment variables. These are values that are fetched like environment variables, but are not truly stored in the environment but computed when requested.

Besides true environment variables, which are statically stored in the environment until changed or deleted, a number of pseudo-environment variables exist for batch processing.

The so-called _replacement parameters_ or _replaceable parameters_ (Microsoft / IBM terminology) aka _replacement variables_ (Digital Research / Novell / Caldera terminology)[\[21\]](#cite_note-Caldera_1998_USER-23) or _[batch file parameters](https://en.wikipedia.org/wiki/Batch_file_parameter "Batch file parameter")_ (JP Software terminology)[\[10\]](#cite_note-4DOS_8.00_HELP-10) `%1`..`%9` and `%0` can be used to retrieve the calling parameters of a batchjob, see `[SHIFT](https://en.wikipedia.org/wiki/SHIFT_(DOS_command) "SHIFT (DOS command)")`. In batchjobs, they can be retrieved just like environment variables, but are not actually stored in the environment.

Some command-line processors (like [DR-DOS](https://en.wikipedia.org/wiki/DR-DOS "DR-DOS") `COMMAND.COM`,[\[21\]](#cite_note-Caldera_1998_USER-23) [Multiuser DOS](https://en.wikipedia.org/wiki/Multiuser_DOS "Multiuser DOS") `MDOS.COM`/`[TMP.EXE](https://en.wikipedia.org/wiki/TMP.EXE "TMP.EXE")` (Terminal Message Process), JP Software [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"), [4OS2](https://en.wikipedia.org/wiki/4OS2 "4OS2"), [4NT](https://en.wikipedia.org/wiki/4NT_(shell) "4NT (shell)"), [Take Command](https://en.wikipedia.org/wiki/Take_Command_(command_line_interpreter) "Take Command (command line interpreter)") and Windows [cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe "Cmd.exe")) support a type of pseudo-environment variables named _system information variables_ (Novell / Caldera terminology)[\[21\]](#cite_note-Caldera_1998_USER-23) or _internal variables_ (JP Software terminology),[\[10\]](#cite_note-4DOS_8.00_HELP-10) which can be used to retrieve various possibly dynamic, but read-only information about the running system in batch jobs. The returned values represent the status of the system in the moment these variables are queried; that is, reading them multiple times in a row may return different values even within the same command; querying them has no direct effect on the system. Since they are not stored in the environment, they are not listed by [SET](https://en.wikipedia.org/wiki/SET_(DOS_command) "SET (DOS command)") and do not exist for external programs to retrieve. If a true environment variable of the same name is defined, it takes precedence over the corresponding variable until the environment variable is deleted again. They are not case-sensitive. While almost all such variables are prefixed with an [underscore](https://en.wikipedia.org/wiki/Underscore "Underscore") ("`_`") by 4DOS etc. by convention (f.e. `[%_SECOND%](#%_SECOND%)`),[\[10\]](#cite_note-4DOS_8.00_HELP-10) they are not under DR-DOS `COMMAND.COM` (f.e. `[%OS_VERSION%](#%OS_VERSION%)`).

In addition, 4DOS, 4OS2, 4NT, and Take Command also support so called _variable functions_,[\[10\]](#cite_note-4DOS_8.00_HELP-10) including user-definable ones. They work just like _internal variables_, but can take optional parameters (f.e. `%@EVAL[]%`) and may even change the system status depending on their function.

_System information variables_ supported by DR-DOS `COMMAND.COM`:

`%AM_PM%`

This pseudo-variable returns the ante- or post-midday status of the current time. The returned string depends on the locale-specific version of DR-DOS, f.e. "`am`" or "`pm`" in the English version. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%DAY%`

This pseudo-variable returns the days of the current date in a 2-digit format with leading zeros, f.e. "`01`".."`31`". See also the similar pseudo-variable `[%_DAY%](#%_DAY%)`. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%DAY_OF_WEEK%`

This pseudo-variable returns the day name of the week in a 3-character format. The returned string depends on the locale-specific version of DR-DOS, f.e. "`Sun`", "`Mon`", "`Tue`", "`Wed`", "`Thu`", "`Fri`", or "`Sat`" in the English version. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%ERRORLEVEL%`

In `COMMAND.COM` of DR-DOS 7.02 and higher, this pseudo-variable returns the last error level returned by an external program or the `[RETURN](https://en.wikipedia.org/wiki/RETURN_(DOS_command) "RETURN (DOS command)")` command, f.e. "`0`".."`255`".[\[29\]](#cite_note-Paul_1997_BATTIPS-31)[\[30\]](#cite_note-FD_2003_Errorlevel-32) See also the identically named pseudo-variable `[%ERRORLEVEL%](#ERRORLEVEL)` under Windows and the `[IF ERRORLEVEL](https://en.wikipedia.org/wiki/IF_ERRORLEVEL_(DOS_command) "IF ERRORLEVEL (DOS command)")` conditional command.

`%ERRORLVL%`

In DR-DOS 7.02 and higher, this pseudo-variable returns the last error level in a 3-digit format with leading zeros, f.e. "`000`".."`255`".[\[29\]](#cite_note-Paul_1997_BATTIPS-31)[\[30\]](#cite_note-FD_2003_Errorlevel-32) Under [Multiuser DOS](https://en.wikipedia.org/wiki/Multiuser_DOS "Multiuser DOS"), this is a true environment variable automatically updated by the shell to the return code of exiting programs.[\[23\]](#cite_note-CCI_1997_HELP-25) See also the related pseudo-variable `[%ERRORLEVEL%](#%ERRORLEVEL%)` under DR-DOS and the `[IF ERRORLEVEL](https://en.wikipedia.org/wiki/IF_ERRORLEVEL_(DOS_command) "IF ERRORLEVEL (DOS command)")` command.

`%GREETING_TIME%`

This pseudo-variable returns the 3-level day greeting time. The returned string depends on the locale-specific version of DR-DOS, f.e. "`morning`", "`afternoon`", or "`evening`" in the English version. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%HOUR%`

This pseudo-variable returns the hours of the current time in 12-hour format without leading zeros, f.e. "`1`".."`12`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%HOUR24%`

This pseudo-variable returns the hours of the current time in 24-hour format in a 2-digit format with leading zeros, f.e. "`00`".."`23`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts. See also the similar pseudo-variable `[%_HOUR%](#%_HOUR%)`.

`%MINUTE%`

This pseudo-variable returns the minutes of the current time in a 2-digit format with leading zeros, f.e "`00`".."`59`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts. See also the similar pseudo-variable `[%_MINUTE%](#%_MINUTE%)`.

`%MONTH%`

This pseudo-variable returns the months of the current date in a 2-digit format with leading zeros, f.e. "`01`".."`12`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts. See also the similar pseudo-variable `[%_MONTH%](#%_MONTH%)`.

`%MONTH_NAME%`

This pseudo-variable returns the month name of the current date. The returned string depends on the locale-specific version of DR-DOS, f.e. "`January`", "`February`", "`March`", "`April`", "`May`", "`June`", "`July`", "`August`", "`September`", "`October`", or "`December`" in the English version. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%NDAY_OF_WEEK%`

This pseudo-variable returns the number of day of the current week, f.e. "`1`".."`7`" (with "`1`" for Sunday). It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%OS_VERSION%`

This pseudo-variable returns the version of the operating system depending on the current setting of the environment variable `[%VER%](#%VER%)`. If `%VER%` is not defined, `%OS_VERSION%` returns "`off`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts, which may return versions also for non-DR-DOS versions of DOS.

`%SECOND%`

This pseudo-variable returns the seconds of the current time in a 2-digit format with leading zeros, f.e. "`00`".."`59`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts. See also the similar pseudo-variable `[%_SECOND%](#%_SECOND%)`.

`%SHORT_YEAR%`

This pseudo-variable returns the year of the current date in a 2-digit format with leading zeros, f.e. "`93`".."`99`", "`00`".."`92`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%YEAR%` and `%_YEAR%`

Supported since [Novell DOS 7](https://en.wikipedia.org/wiki/Novell_DOS_7 "Novell DOS 7"), the `%YEAR%` pseudo-variable returns the year of the current date in a 4-digit format, f.e. "`1980`".."`2099`". It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts. DR-DOS 7.02 and higher added `%_YEAR%` for compatibility with [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"), returning the same value.[\[10\]](#cite_note-4DOS_8.00_HELP-10)

`%/%`

In `COMMAND.COM` of DR-DOS 7.02 and higher, this pseudo-variable returns the current [SwitChar](https://en.wikipedia.org/wiki/SwitChar "SwitChar") setting of the system, either "`/`" (DOS style) or "`-`" (Unix style).[\[31\]](#cite_note-Caldera_1998_DELTREE101-33)[\[32\]](#cite_note-Caldera_1998_NEW703-34) See also the related `CONFIG.SYS` directive [SWITCHAR](https://en.wikipedia.org/wiki/SWITCHAR_(CONFIG.SYS_directive) "SWITCHAR (CONFIG.SYS directive)") and the environment variable `[%SWITCHAR%](#%SWITCHAR%)`.

`%_CODEPAGE%`

This pseudo-variable returns the systems' current [code page](https://en.wikipedia.org/wiki/Code_page "Code page") ("`1`".."`65533`"), f.e. "`[437](https://en.wikipedia.org/wiki/Codepage_437 "Codepage 437")`", "`[850](https://en.wikipedia.org/wiki/Codepage_850 "Codepage 850")`", "`[858](https://en.wikipedia.org/wiki/Codepage_858 "Codepage 858")`". This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also the `[CHCP](https://en.wikipedia.org/wiki/CHCP_(DOS_command) "CHCP (DOS command)")` command.

`%_COLUMNS%`

This pseudo-variable returns the current number of screen columns depending on the display mode, f.e. "`40`", "`80`", "`132`", etc. This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also a similar environment variable `[%$WIDTH%](#%$WIDTH%)` under DOS Plus.

`%_COUNTRY%`

This pseudo-variable returns the systems' current [country code](https://en.wikipedia.org/wiki/List_of_country_calling_codes "List of country calling codes") ("`1`".."`65534`"), f.e. "`1`" for USA, "`44`" for UK, "`49`" for Germany, "`20049`" with [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601 "ISO 8601"), "`21049`" with ISO 8601 and [Euro](https://en.wikipedia.org/wiki/Euro_currency "Euro currency") support.[\[32\]](#cite_note-Caldera_1998_NEW703-34)[\[33\]](#cite_note-Paul_2001_COUNTRY-35) This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also the `CONFIG.SYS` directive `[COUNTRY](https://en.wikipedia.org/wiki/COUNTRY_(CONFIG.SYS_directive) "COUNTRY (CONFIG.SYS directive)")`.

`%_DAY%`

This pseudo-variable returns the days of the current date without leading zeros, f.e. "`1`".."`31`". This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also the similar pseudo-variable `[%DAY%](#DAY%)`.

`%_HOUR%`

This pseudo-variable returns the hours of the current time in 24-hour format without leading zeros, f.e. "`0`".."`23`". This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also the similar pseudo-variable `[%HOUR24%](#%HOUR24%)`.

`%_MINUTE%`

This pseudo-variable returns the minutes of the current time without leading zeros, f.e "`0`".."`59`". This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also the similar pseudo-variable `[%MINUTE%](#%MINUTE%)`.

`%_MONTH%`

This pseudo-variable returns the months of the current date without leading zeros, f.e. "`1`".."`12`". This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also the similar pseudo-variable `[%MONTH%](#%MONTH%)`.

`%_ROWS%`

This pseudo-variable returns the current number of screen rows depending on the display mode, f.e. "`25`", "`43`", "`50`", etc. This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See a similar environment variable `[%$LENGTH%](#%$LENGTH%)` under DOS Plus.

`%_SECOND%`

This pseudo-variable returns the seconds of the current time without leading zeros, f.e. "`0`".."`59`". This variable was originally introduced by [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS"),[\[10\]](#cite_note-4DOS_8.00_HELP-10) but also became available with `COMMAND.COM` since DR-DOS 7.02. See also the similar pseudo-variable `[%SECOND%](#%SECOND%)`.

_System information variables_ supported by DR-DOS `COMMAND.COM` with networking loaded:

`%LOGIN_NAME%`

This pseudo-variable returns the user name. This always worked with `[NETX](https://en.wikipedia.org/wiki/NETX "NETX")`, but it will also work with [Personal NetWare](https://en.wikipedia.org/wiki/Personal_NetWare "Personal NetWare")'s [ODI](https://en.wikipedia.org/wiki/Open_Data-Link_Interface "Open Data-Link Interface")/[VLM](https://en.wikipedia.org/wiki/Virtual_Loadable_Module "Virtual Loadable Module") if the current drive is a PNW-mapped drive (otherwise an empty string is returned). See also the similarly named environment variable `[%LOGINNAME%](#%LOGINNAME%)`.

`%P_STATION%`

This pseudo-variable returns the physical station number in a format "`????????????`". The value depends on the [MAC address](https://en.wikipedia.org/wiki/MAC_address "MAC address") of the network adapter, but can be overridden. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%STATION%`

This pseudo-variable returns the logical station number starting with "`1`" for the first client. The numbers are assigned by the file server and remain static for as long as the [IPX](https://en.wikipedia.org/wiki/IPX "IPX") connection remains established. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts.

`%FULL_NAME%`

This pseudo-variable returns the full name of the logged in user, if available. It resembles an identically named _identifier variable_ in [Novell NetWare](https://en.wikipedia.org/wiki/Novell_NetWare "Novell NetWare") login scripts. See also the related pseudo-variable `[%LOGIN_NAME%](#%LOGIN_NAME%)`.

_Dynamic environment variables_ (also named _internal variables_ or _system information variables_ under DOS) are pseudo-environment variables supported by `[CMD.EXE](https://en.wikipedia.org/wiki/CMD_(Windows) "CMD (Windows)")` when command-line extensions are enabled, and they expand to various discrete values whenever queried, that is, their values can change when queried multiple times even within the same command. While they can be used in batch jobs and at the prompt, they are not stored in the environment. Consequently, they are neither listed by `SET` nor do they exist for external programs to read. They are not case-sensitive.

Indirectly, they are also supported under Windows' `COMMAND.COM`, which has been modified to internally call `CMD.EXE` to execute the commands.

`%CD%`

This pseudo-variable expands to the current directory equivalent to the output of the command `[CD](https://en.wikipedia.org/wiki/Cd_(command) "Cd (command)")` when called without arguments. While a long filename can be returned under `CMD.EXE` depending on the current directory, the fact that the current directory will always be in [8.3](https://en.wikipedia.org/wiki/8.3_filename "8.3 filename") format under `COMMAND.COM` will cause it to return a short filename under `COMMAND.COM`, even when `COMMAND` internally calls `CMD`.

`%CMDCMDLINE%`

This pseudo-variable expands to the original startup parameters of `[CMD.EXE](https://en.wikipedia.org/wiki/CMD.EXE "CMD.EXE")`, f.e. "`C:\Windows\system32\cmd.exe`". Under Windows' `COMMAND.COM`, this may return something like "`C:\Windows\system32\cmd.exe /c ...`" due to the fact that `COMMAND.COM` calls `CMD.EXE` internally.

`%CMDEXTVERSION%`

This pseudo-variable expands to the version of the command-line extensions of `[CMD.EXE](https://en.wikipedia.org/wiki/CMD.EXE "CMD.EXE")`, if enabled (e.g. "`1`" under [Windows NT](https://en.wikipedia.org/wiki/Windows_NT "Windows NT"), "`2`" under [Windows 2000](https://en.wikipedia.org/wiki/Windows_2000 "Windows 2000") and [Windows XP](https://en.wikipedia.org/wiki/Windows_XP "Windows XP")).

`%DATE%`

This pseudo-variable expands to the current date. The date is displayed according to the current user's [date format](https://en.wikipedia.org/wiki/Calendar_date "Calendar date") preferences.

`%ERRORLEVEL%`

This pseudo-variable expands to the last set error level, a value between "`0`" and "`255`" (without leading zeros).[\[29\]](#cite_note-Paul_1997_BATTIPS-31)[\[34\]](#cite_note-Allen_2005-36)[\[30\]](#cite_note-FD_2003_Errorlevel-32) External commands and some internal commands set error levels upon execution. See also the identically named pseudo-variable `[%ERRORLEVEL%](#%ERRORLEVEL%)` under DR-DOS and the `[IF ERRORLEVEL](https://en.wikipedia.org/wiki/IF_ERRORLEVEL_(Windows_command) "IF ERRORLEVEL (Windows command)")` command.

`%HIGHESTNUMANODENUMBER%`

This pseudo-variable returns the number of the highest [NUMA](https://en.wikipedia.org/wiki/Non-uniform_memory_access "Non-uniform memory access") node.

`%RANDOM%`

This pseudo-variable returns a random number between "`0`" and "`32767`".

`%TIME%`

This pseudo-variable returns the current time. The time is displayed according to the current user's time format preferences. If the `%TIME%` and `[%DATE%](#DATE)` variables are both used, it is important to read them both in this particular order in rapid succession in order to avoid midnight-rollover problems.

Unix-like shells have similar dynamically generated variables, bash's `$RANDOM` being a well-known example. However, since these shells have a concept of local variables, they are described as special local variables instead.[\[35\]](#cite_note-GNU_BASH-37)

*   [Variable (computer science)](https://en.wikipedia.org/wiki/Variable_(computer_science) "Variable (computer science)")
*   [List of Unix commands](https://en.wikipedia.org/wiki/List_of_Unix_commands "List of Unix commands")
*   [List of DOS commands](https://en.wikipedia.org/wiki/List_of_DOS_commands "List of DOS commands")
*   [Special folder](https://en.wikipedia.org/wiki/Special_folder "Special folder")
*   [Modules Environment](https://en.wikipedia.org/wiki/Modules_Environment "Modules Environment")
*   [PWB shell](https://en.wikipedia.org/wiki/PWB_shell "PWB shell")
*   [Windows Registry](https://en.wikipedia.org/wiki/Windows_Registry "Windows Registry")

1.  ^   Applications not coping properly with environment variables longer than 128 characters include [CadStar PCB](https://en.wikipedia.org/wiki/CadStar_PCB "CadStar PCB"), Checkit, Computer Select CD-ROM, RenderMan, [VINES Network](https://en.wikipedia.org/wiki/VINES_Network "VINES Network"), [Windows 3.0](https://en.wikipedia.org/wiki/Windows_3.0 "Windows 3.0"), and [Word for Windows 6.0](https://en.wikipedia.org/wiki/Word_for_Windows_6.0 "Word for Windows 6.0").
2.   [4DOS](https://en.wikipedia.org/wiki/4DOS "4DOS") and [MS-DOS 7.0](https://en.wikipedia.org/wiki/MS-DOS_7.0 "MS-DOS 7.0") set the length to 127 and insert [ASCII-13](https://en.wikipedia.org/wiki/ASCII_13 "ASCII 13") at this position, but [Borland](https://en.wikipedia.org/wiki/Borland "Borland") libraries set the length to the invalid value of 128 and do not insert an ASCII-13. For shorter command lines, 4DOS/[NDOS](https://en.wikipedia.org/wiki/NDOS "NDOS") and [DR-DOS](https://en.wikipedia.org/wiki/DR-DOS "DR-DOS") also insert an [ASCII-0](https://en.wikipedia.org/wiki/ASCII_0 "ASCII 0") after the ASCII-13, but not when invoked via [INSTALL](https://en.wikipedia.org/wiki/INSTALL_(CONFIG.SYS_directive) "INSTALL (CONFIG.SYS directive)") directive; MS-DOS does not.

1.   Robbins, Arnold; Beebe, Nelson H. F. (May 2005). Apandi, Tatiana; Randal, Allison; Witwer, Adam (eds.). _Classic Shell Scripting_ (1 ed.). [O'Reilly](https://en.wikipedia.org/wiki/O%27Reilly_Media "O'Reilly Media"). [ISBN](https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)") [978-0-596-00595-5](https://en.wikipedia.org/wiki/Special:BookSources/978-0-596-00595-5 "Special:BookSources/978-0-596-00595-5").
2.   ["unset - unset values and attributes of variables and functions – "](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#unset). _Commands & Utilities Reference, [The Single UNIX Specification](https://en.wikipedia.org/wiki/Single_UNIX_Specification "Single UNIX Specification") - The Open Group Base Specifications, IEEE Std 1003.1-2008_ (Issue 7 ed.). The [IEEE](https://en.wikipedia.org/wiki/IEEE "IEEE") and [The Open Group](https://en.wikipedia.org/wiki/The_Open_Group "The Open Group"). 2016 \[2001\]. [Archived](https://web.archive.org/web/20171218175244/http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html) from the original on 2017-12-18. Retrieved 2017-12-18.
3.   fgrose (2015-07-31) \[2011\]. ["The unset builtin command"](http://wiki.bash-hackers.org/commands/builtin/unset). _Bash Hackers Wiki_. [Archived](https://web.archive.org/web/20171218175214/http://wiki.bash-hackers.org/commands/builtin/unset) from the original on 2017-12-18. Retrieved 2017-12-18.
4.   Jacobs, Mike; Koren, Alexander; Satran, Michael (2017-11-14). ["Store and retrieve settings and other app data"](https://docs.microsoft.com/en-us/windows/uwp/app-settings/store-and-retrieve-app-data). [Microsoft](https://en.wikipedia.org/wiki/Microsoft "Microsoft"). [Archived](https://web.archive.org/web/20171218175200/https://docs.microsoft.com/de-de/windows/uwp/design/app-settings/store-and-retrieve-app-data) from the original on 2017-12-18. Retrieved 2017-12-18.
5.   [Raymond, Eric](https://en.wikipedia.org/wiki/Eric_S._Raymond "Eric S. Raymond") (2002-08-02) \[Originally published 2001\]. ["The BROWSER project"](http://www.catb.org/~esr/BROWSER/index.html). [Archived](https://web.archive.org/web/20190921223921/http://www.catb.org/~esr/BROWSER/index.html) from the original on 2019-09-21. Retrieved 2020-10-21.
6.   ["LWN - Development"](https://lwn.net/2001/0201/devel.php3). _LWN.net_. 2001-02-01. [Archived](https://web.archive.org/web/20190208125048/https://lwn.net/2001/0201/devel.php3) from the original on 2019-02-08. Retrieved 2020-10-21. Standardizing a BROWSER environment variable. Eric Raymond is promoting the use of a new environment variable, BROWSER, to complement the existing PAGER, MAILER, and EDITOR variables. This effort is being tested as an experiment in hacking social systems.
7.   Špaček, Michal (2020-01-19) \[First version published 2013\]. ["Env::Browser-0.06"](https://metacpan.org/pod/Env::Browser). _metacpan.org_. [Archived](https://web.archive.org/web/20201021202950/https://metacpan.org/pod/Env::Browser) from the original on 2020-10-21. Retrieved 2020-10-21. Env::Browser - Process environment variable $BROWSER and run web browser
8.   ["webbrowser — Convenient Web-browser controller"](https://docs.python.org/3/library/webbrowser.html). _docs.python.org_. [Archived](https://web.archive.org/web/20201013205951/https://docs.python.org/3/library/webbrowser.html) from the original on 2020-10-13. Retrieved 2020-10-21.
9.   ["DefaultWebBrowser - Debian Wiki"](https://wiki.debian.org/DefaultWebBrowser). _wiki.debian.org_. 2020-06-10. [Archived](https://web.archive.org/web/20201021204658/https://wiki.debian.org/DefaultWebBrowser) from the original on 2020-10-21. Retrieved 2020-10-21. The environment variable BROWSER can be set to\[…\] always choose your desired browser.
10.  ^                             Brothers, Hardin; [Rawson, Tom](https://en.wikipedia.org/wiki/Tom_Rawson "Tom Rawson"); [Conn, Rex C.](https://en.wikipedia.org/wiki/Rex_C._Conn "Rex C. Conn"); Paul, Matthias R.; Dye, Charles E.; Georgiev, Luchezar I. (2002-02-27). [_4DOS 8.00 online help_](https://en.wikipedia.org/wiki/4DOS_8.00 "4DOS 8.00").
11.  ^                   Paul, Matthias R. (1997-07-30) \[1994-05-01\]. [_NWDOS-TIPs — Tips & Tricks rund um Novell DOS 7, mit Blick auf undokumentierte Details, Bugs und Workarounds_](http://www.antonis.de/dos/dos-tuts/mpdostip/html/nwdostip.htm). Release 157 (in German) (3 ed.). [Archived](https://web.archive.org/web/20161104235829/http://www.antonis.de/dos/dos-tuts/mpdostip/html/nwdostip.htm) from the original on 2016-11-04. Retrieved 2014-08-06. (NB. NWDOSTIP.TXT is a comprehensive work on [Novell DOS 7](https://en.wikipedia.org/wiki/Novell_DOS_7 "Novell DOS 7") and [OpenDOS 7.01](https://en.wikipedia.org/wiki/OpenDOS_7.01 "OpenDOS 7.01"), including the description of many undocumented features and internals. The provided link points to a HTML-converted version of the file, which is part of the `MPDOSTIP.ZIP` collection.) [\[1\]](https://web.archive.org/web/20190601152204/https://www.sac.sk/download/text/mpdostip.zip)
12.  ^      Paul, Matthias R. (1997-05-01) \[1995-03-01\]. ["Hinweise zu JPSofts 4DOS 5.5b/c, 5.51, 5.52a und NDOS"](http://www.antonis.de/dos/dos-tuts/mpdostip/html/4dostip.htm). _MPDOSTIP_ (in German). [Archived](https://web.archive.org/web/20161104211143/http://www.antonis.de/dos/dos-tuts/mpdostip/html/4dostip.htm) from the original on 2016-11-04. Retrieved 2015-05-08. (NB. The provided link points to a HTML-converted version of the `4DOS5TIP.TXT` file, which is part of the `MPDOSTIP.ZIP` collection.) [\[2\]](https://web.archive.org/web/20190601152204/https://www.sac.sk/download/text/mpdostip.zip)
13.  ^   Paul, Matthias R. (1997-10-02). ["Caldera OpenDOS 7.01/7.02 Update Alpha 3 IBMBIO.COM README.TXT"](https://web.archive.org/web/20031004074600/http://www-student.informatik.uni-bonn.de/~frinke/ibmbioa3.zip). Archived from [the original](http://www.uni-bonn.de/~uzs180/download/ibmbioa3.zip) on 2003-10-04. Retrieved 2009-03-29. [\[3\]](https://web.archive.org/web/20181225154705/http://mirror.macintosharchive.org/max1zzz.co.uk/+Windows%20&%20DOS/DOS/System/Novell/Support/Bins/Op702src.zip)
14.   Paul, Matthias R. (1997-05-27) \[1996\]. ["SETENV v1.11"](https://web.archive.org/web/20090215001349/http://www.uni-bonn.de/~uzs180/mpdokeng.html#M.SETENV). Archived from [the original](http://www.uni-bonn.de/~uzs180/mpdokeng.html#M.SETENV) on 2009-02-15. Retrieved 2019-08-09. \[…\] SETENV \[…\] to hide and later restore the \[…\] pre-environment \[…\] By using SETENV.COM you can save some KiloBytes of rare DOS memory \[…\] depending on the number of drivers loaded by [INSTALL=](https://en.wikipedia.org/wiki/INSTALL_(CONFIG.SYS_directive) "INSTALL (CONFIG.SYS directive)")/[INSTALLHIGH=](https://en.wikipedia.org/wiki/INSTALLHIGH_(CONFIG.SYS_directive) "INSTALLHIGH (CONFIG.SYS directive)")/[HIINSTALL=](https://en.wikipedia.org/wiki/HIINSTALL_(CONFIG.SYS_directive) "HIINSTALL (CONFIG.SYS directive)") and the current size of the pre-environment. \[…\] this original \[…\] feature cannot be found in any known memory manager/optimizer. \[…\]
15.   Paul, Matthias R. (2002-04-06). ["Re: \[fd-dev\] ANNOUNCE: CuteMouse 2.0 alpha 1"](https://marc.info/?l=freedos-dev&m=101807226917577). _freedos-dev_. [Archived](https://web.archive.org/web/20200207130948/https://marc.info/?l=freedos-dev&m=101807226917577&w=2) from the original on 2020-02-07. Retrieved 2020-02-07. \[…\] In CTMOUSE.ASM prepareTSR routine I found a comment in regard to the zero-environment. \[…\] [DESQview](https://en.wikipedia.org/wiki/DESQview "DESQview") or [DRDOS](https://en.wikipedia.org/wiki/DR-DOS "DR-DOS") zero-env? \[…\] release environment block \[…\] skip if any problem \[…\] zero-pad for [MEM](https://en.wikipedia.org/wiki/MEM_(DOS_command) "MEM (DOS command)") style utilities \[…\]
16.   ["PTS-DOS 2000 Pro User Manual"](http://download.paragon-software.com/doc/manual_dos_eng.pdf) (PDF). [Archived](https://web.archive.org/web/20180512094512/http://download.paragon-software.com/doc/manual_dos_eng.pdf) (PDF) from the original on 2018-05-12. Retrieved 2018-05-12.
17.   Paul, Matthias R. (2002-10-07). ["Re: Run a COM file"](https://groups.google.com/d/msg/alt.msdos.programmer/d7blJjY0H5M/Qu3VeTOIGVcJ). [Newsgroup](https://en.wikipedia.org/wiki/Usenet_newsgroup "Usenet newsgroup"): [alt.msdos.programmer](news:alt.msdos.programmer). [Archived](https://archive.today/20170903230312/https://groups.google.com/forum/%23!msg/alt.msdos.programmer/d7blJjY0H5M/Qu3VeTOIGVcJ) from the original on 2017-09-03. Retrieved 2017-09-03. [\[4\]](https://groups.google.com/d/msg/alt.lang.asm/PNOd9zfYow0/vXbab16j4XwJ)
18.  ^       [Datalight, Inc.](https://en.wikipedia.org/wiki/Datalight,_Inc. "Datalight, Inc."); GPvNO (April 2005) \[1999\]. ["Datalight ROM-DOS User's Guide"](https://www.datalight.com/assets/files/ROM-DOS_Users_Guide.pdf) (PDF). [Datalight, Inc.](https://en.wikipedia.org/wiki/Datalight,_Inc. "Datalight, Inc.") 3010-0200-0716. [Archived](https://web.archive.org/web/20190320151321/https://www.datalight.com/assets/files/ROM-DOS_Users_Guide.pdf) (PDF) from the original on 2019-03-20. Retrieved 2018-09-16.
19.  ^          [Kotulla, Martin](https://en.wikipedia.org/wiki/Martin_Kotulla "Martin Kotulla") (November 1987). ["Von CP/M zu MS-DOS, Teil 11"](http://www.homecomputerworld.at/magazine/cpc/CPCAI-87-11.pdf) (PDF). _Professional Computing (PC) - Schneider International_ (in German). **3** (11): 100–103. [Archived](https://web.archive.org/web/20190424201007/http://www.homecomputerworld.at/magazine/cpc/CPCAI-87-11.pdf) (PDF) from the original on 2019-04-24. Retrieved 2018-05-20.
20.  ^               Paul, Matthias R. (2002-03-26). ["Updated CLS posted"](https://marc.info/?l=freedos-dev&m=101717593306186&w=2). freedos-dev mailing list. [Archived](https://web.archive.org/web/20181004145539/https://marc.info/?l=freedos-dev&m=101717593306186&w=2) from the original on 2018-10-04. Retrieved 2014-08-06.
21.  ^         [_Caldera DR-DOS 7.02 User Guide_](https://web.archive.org/web/20161104235434/http://www.drdos.net/documentation/usergeng/uglontoc.htm). [Caldera, Inc.](https://en.wikipedia.org/wiki/Caldera,_Inc. "Caldera, Inc.") 1998 \[1993, 1997\]. Archived from [the original](http://www.drdos.net/documentation/usergeng/uglontoc.htm) on 2016-11-04. Retrieved 2013-08-10.
22.  ^     Paul, Matthias R. (2017-08-14) \[2017-08-07\]. ["The continuing saga of Windows 3.1 in enhanced mode on OmniBook 300"](http://hpmuseum.org/forum/thread-8774-post-77196.html#pid77196). _MoHPC - the Museum of HP Calculators_. [Archived](https://web.archive.org/web/20180501185933/http://hpmuseum.org/forum/thread-8774-post-77196.html) from the original on 2018-05-01. Retrieved 2018-05-01. \[…\] set DRSYS=ON (optional to tell SYS you are aware of the fact that you're running it in a foreign environment and want to proceed anyway without having to individually ACK some warnings and extra info screens displayed in this scenario otherwise) \[…\]
23.  ^          _CCI Multiuser DOS 7.22 GOLD Online Documentation_. [Concurrent Controls, Inc.](https://en.wikipedia.org/wiki/Concurrent_Controls,_Inc. "Concurrent Controls, Inc.") (CCI). 1997-02-10. HELP.HLP.
24.   _CCI Multiuser DOS 7.22 GOLD Installation Guide_. [Concurrent Controls, Inc.](https://en.wikipedia.org/wiki/Concurrent_Controls,_Inc. "Concurrent Controls, Inc.") (CCI). 1997-02-10. PRINTDOC.HLP.
25.  ^    Paul, Matthias R. (2002-02-20). ["How to detect FreeCOM/FreeDOS in-batch?"](https://marc.info/?l=freedos-dev&m=101423986407077&w=2). freedos-dev mailing list. [Archived](https://web.archive.org/web/20181106220459/https://marc.info/?l=freedos-dev&m=101423986407077&w=2) from the original on 2018-11-06. Retrieved 2014-08-06.
26.   ["Recognized environment variables - Windows Deployment"](https://learn.microsoft.com/en-us/windows/deployment/usmt/usmt-recognized-environment-variables). 2024-01-09.
27.   Brink, Shawn (2018-11-17). ["Environment Variables in Windows 10 - Complete List of Environment Variables in Windows 10"](https://www.tenforums.com/tutorials/3234-environment-variables-windows-10-a.html). _Windows Ten Forums_. [Archived](https://web.archive.org/web/20190327135346/https://www.tenforums.com/tutorials/3234-environment-variables-windows-10-a.html) from the original on 2019-03-27. Retrieved 2019-04-24.
28.  ^                                      Schulz, Hajo (2014-10-02). ["Ordner für spezielle Fälle — Die "benannten Ordner" in Windows aus User- und Entwicklersicht"](https://www.heise.de/ct/ausgabe/2014-22-Die-benannten-Ordner-in-Windows-aus-User-und-Entwicklersicht-2406251.html) \[Special purpose folders — Windows' "named folders" from a user's and developer's perspective\]. _[c't - magazin für computertechnik](https://en.wikipedia.org/wiki/C%27t "C't")_ (in German). **2014** (22). [Heise Verlag](https://en.wikipedia.org/wiki/Heise_Verlag "Heise Verlag"): 180–184. [Archived](https://web.archive.org/web/20160709114401/https://www.heise.de/ct/ausgabe/2014-22-Die-benannten-Ordner-in-Windows-aus-User-und-Entwicklersicht-2406251.html) from the original on 2016-07-09. Retrieved 2019-04-08.
29.  ^    Paul, Matthias R. (1997-05-01) \[1993-10-01\]. [_BATTIPs — Tips & Tricks zur Programmierung von Batchjobs_](http://www.antonis.de/dos/batchtut/battips/index.htm#7) (in German). 7: ERRORLEVEL abfragen. [Archived](https://web.archive.org/web/20170823191411/http://www.antonis.de/dos/batchtut/battips/index.htm) from the original on 2017-08-23. Retrieved 2017-08-23. [\[5\]](https://www.auersoft.eu/soft/by-others/dos-exitcodes-de.html) [\[6\]](https://www.auersoft.eu/soft/by-others/dos-exitcodes-en.html) [Archived](https://archive.today/20170911103337/https://www.auersoft.eu/soft/by-others/dos-exitcodes-en.html) 2017-09-11 at [archive.today](https://en.wikipedia.org/wiki/Archive.today "Archive.today") (NB. BATTIPS.TXT is part of MPDOSTIP.ZIP. The provided link points to a HTML-converted older version of the BATTIPS.TXT file.) [\[7\]](https://web.archive.org/web/20190601152204/https://www.sac.sk/download/text/mpdostip.zip)
30.  ^    Auer, Eric; Paul, Matthias R.; [Hall, Jim](https://en.wikipedia.org/wiki/Jim_Hall_(programmer) "Jim Hall (programmer)") (2015-12-24) \[2003-12-31\]. ["MS-DOS errorlevels"](https://web.archive.org/web/20151224202118/http://www.freedos.org/technotes/technote/207.html). Archived from [the original](http://www.freedos.org/technotes/technote/207.html) on 2015-12-24.
31.   Paul, Matthias R. (1998-01-09). [_DELTREE.BAT R1.01 Extended file and directory delete_](https://web.archive.org/web/20190408145354/http://www.lookas.net/ftp/incoming/darbui/Justas/DRDOS/DELTREE.BAT). [Caldera, Inc.](https://en.wikipedia.org/wiki/Caldera,_Inc. "Caldera, Inc.") Archived from [the original](http://www.lookas.net/ftp/incoming/darbui/Justas/DRDOS/DELTREE.BAT) on 2019-04-08. Retrieved 2019-04-08.
32.  ^   [_DR-DOS 7.03 WHATSNEW.TXT — Changes from DR-DOS 7.02 to DR-DOS 7.03_](https://web.archive.org/web/20190408142232/http://www.lookas.net/ftp/incoming/darbui/Justas/DRDOS/WHATSNEW.TXT). [Caldera, Inc.](https://en.wikipedia.org/wiki/Caldera,_Inc. "Caldera, Inc.") 1998-12-24. Archived from [the original](http://www.lookas.net/ftp/incoming/darbui/Justas/DRDOS/WHATSNEW.TXT) on 2019-04-08. Retrieved 2019-04-08.
33.   Paul, Matthias R. (2001-06-10) \[1995\]. ["DOS COUNTRY.SYS file format"](http://www.columbia.edu/~em36/wpdos/MatthiasPaulCPI.zip) (COUNTRY.LST file) (1.44 ed.). [Archived](https://web.archive.org/web/20160420065252/http://www.columbia.edu/~em36/wpdos/MatthiasPaulCPI.zip) from the original on 2016-04-20. Retrieved 2016-08-20.
34.   Allen, William; Allen, Linda. ["Windows 95/98/ME ERRORLEVELs"](https://web.archive.org/web/20110707113138/http://www.allenware.com/mcsw/errorlevels.zip). Archived from [the original](http://www.allenware.com/mcsw/errorlevels.zip) on 2011-07-07.
35.   ["Shell Variables"](https://www.gnu.org/software/bash/manual/bash.html#Shell-Variables). _Bash Reference Manual_.

*   [Chen, Raymond](https://en.wikipedia.org/wiki/Raymond_Chen_(Microsoft) "Raymond Chen (Microsoft)") (2010-05-06). ["What are these strange =C: environment variables?"](https://blogs.msdn.microsoft.com/oldnewthing/20100506-00/?p=14133/). _The New Old Thing_. [Microsoft](https://en.wikipedia.org/wiki/Microsoft "Microsoft"). [Archived](https://web.archive.org/web/20180527163745/https://blogs.msdn.microsoft.com/oldnewthing/20100506-00/?p=14133%2F) from the original on 2018-05-27. Retrieved 2017-05-27.

*   `[environ(7)](https://manned.org/environ.7)`: user environment – [Linux](https://en.wikipedia.org/wiki/Linux "Linux") Programmer's [Manual](https://en.wikipedia.org/wiki/Man_page "Man page") – Overview, Conventions and Miscellanea
*   `[environ(7)](https://www.freebsd.org/cgi/man.cgi?query=environ&sektion=7)` – [FreeBSD](https://en.wikipedia.org/wiki/FreeBSD "FreeBSD") Miscellaneous Information [Manual](https://en.wikipedia.org/wiki/Man_page "Man page")
*   `[environ(7)](https://keith.github.io/xcode-man-pages/environ.7.html)` – [Darwin](https://en.wikipedia.org/wiki/Darwin_(operating_system) "Darwin (operating system)") and [macOS](https://en.wikipedia.org/wiki/MacOS "MacOS") Miscellaneous Information [Manual](https://en.wikipedia.org/wiki/Man_page "Man page")
*   `[environ(7)](https://docs.oracle.com/cd/E88353_01/html/E37853/environ-7.html)` – [Solaris 11.4](https://en.wikipedia.org/wiki/Solaris_(operating_system) "Solaris (operating system)") Standards, Environments, Macros, Character Sets, and Miscellany Reference [Manual](https://en.wikipedia.org/wiki/Man_page "Man page")
*   ["Environment Variables Wiki"](https://web.archive.org/web/20190427235415/http://environmentvariables.org/). Archived from [the original](http://environmentvariables.org/) on 2019-04-27.
*   [User Environment Variables](http://msdn.microsoft.com/en-us/library/windows/desktop/bb776899%28v=vs.85%29.aspx)
*   [fix setx.exe not found bug](https://web.archive.org/web/20180511150138/https://www.setx.cc/)
