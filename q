KILL(1)                         User Commands                        KILL(1)

NNAAMMEE
       kill - send a signal to a process

SSYYNNOOPPSSIISS
       kkiillll [options] <pid> [...]

DDEESSCCRRIIPPTTIIOONN
       The  default signal for kill is TERM.  Use --ll or --LL to list available
       signals.  Particularly useful signals include HUP, INT,  KILL,  STOP,
       CONT,  and  0.  Alternate signals may be specified in three ways: --99,
       --SSIIGGKKIILLLL or --KKIILLLL.  Negative PID values may be used to  choose  whole
       process  groups;  see the PGID column in ps command output.  A PID of
       --11 is special; it indicates all processes except the kill process it‐
       self and init.

OOPPTTIIOONNSS
       <<ppiidd>> [[......]]
              Send signal to every <pid> listed.

       --<<ssiiggnnaall>>
       --ss <<ssiiggnnaall>>
       ----ssiiggnnaall <<ssiiggnnaall>>
              Specify the ssiiggnnaall to be sent.  The signal can be specified by
              using name or number.  The behavior of signals is explained in
              ssiiggnnaall(7) manual page.

       --ll, ----lliisstt [_s_i_g_n_a_l]
              List  signal  names.  This option has optional argument, which
              will convert signal number to signal name, or other way round.

       --LL, ----ttaabbllee
              List signal names in a nice table.

       NNOOTTEESS  Your shell (command line interpreter) may have a built-in kill
              command.   You  may  need to run the command described here as
              /bin/kill to solve the conflict.

EEXXAAMMPPLLEESS
       kkiillll --99 --11
              Kill all processes you can kill.

       kkiillll --ll 1111
              Translate number 11 into a signal name.

       kkiillll --LL
              List the available signal choices in a nice table.

       kkiillll 112233 554433 22334411 33445533
              Send the default signal, SIGTERM, to all those processes.

SSEEEE AALLSSOO
       kkiillll(2),  kkiillllaallll(1),  nniiccee(1),   ppkkiillll(1),   rreenniiccee(1),   ssiiggnnaall(7),
       sskkiillll(1)

SSTTAANNDDAARRDDSS
       This  command meets appropriate standards.  The --LL flag is Linux-spe‐
       cific.

AAUUTTHHOORR
       Albert Cahalan ⟨albert@users.sf.net⟩ wrote kill in 1999 to replace  a
       bsdutils  one  that  was not standards compliant.  The util-linux one
       might also work correctly.

RREEPPOORRTTIINNGG BBUUGGSS
       Please send bug reports to ⟨procps@freelists.org⟩

procps-ng                        2018-05-31                          KILL(1)
