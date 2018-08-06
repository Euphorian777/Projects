@echo off
title Genesis
mode con: cols=61 lines=28
color 0A
if not exist "Apps" mkdir Apps
set pass=Pending
set name=Pending
set warn=1
set coco=0A
set pre=C:			
set hage=0
set age=Pending
set year=Pending
set teachw=0
set learnw=0
set cuser=0
(
set /p username=
set /p cuser=
) < Accounts\cuset.sav
if %cuser%==0 goto RLRLRL
if %cuser%==1 goto lpuser
:RLRES
set pass=Pending
set name=Pending
set warn=1
set coco=0A
set pre=C:			
set hage=0
set age=Pending
set year=Pending
set teachw=0
set learnw=0
set cuser=0
goto RLRLRL
:RLRLRL
title Genesis
cls
echo Would you like to Create an account or Login?
echo (Enter c to create account or l to login.)
echo (Or enter e to exit.)
echo.
set /p answer=
if %answer%==Login goto login
if %answer%==c goto register
if %answer%==login goto login
if %answer%==C goto register
if %answer%==l goto login
if %answer%==r goto register
if %answer%==L goto login
if %answer%==R goto register
if %answer%==e goto lexit
goto RLRLRL
:lexit
cls
echo See you later!
echo.
timeout 3 >nul
exit;
:register
set username=Enter
cls
echo What would you like your username to be?
echo (Or enter b to go back.)
echo.
set /p username=
if %username%==b goto RLRLRL
if not exist "Accounts\%username%.sav" goto register2
cls
echo The username: %username%, is already taken.
echo.
timeout 3 >nul
goto RLRLRL
:register2
set pass=Enter
cls
echo What would you like your password to be?
echo (Or enter b to go back.)
echo.
set /p pass=
if %pass%==b goto register
if %pass%==m goto register2
cls
if not exist "Accounts" mkdir Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
cls
echo Account successfully created!
echo.
timeout 2 >nul
goto RLRLRL
:login
cls
set username=Enter
echo What is your username?
echo.
set /p username=
if not exist "Accounts\%username%.sav" goto NSU 
cls
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < Accounts\%username%.sav
goto login2
:NSU
cls
echo The username: %username%, does not exist.
echo.
timeout 3 >nul
goto RLRLRL
:login2
cls
echo Enter the password:
echo.
set /p apass=
if %apass%==%pass% goto LS
goto IP
:IP
cls
echo Incorrect password!
echo.
timeout 2 >nul
goto RLRLRL
:LS
cls
echo Login successful!
echo.
timeout 2 >nul
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < Accounts\%username%.sav
set cuser=1
(
echo %username%
echo %cuser%
) > Accounts\cuset.sav
goto Warning
:lpuser
if not exist "Accounts\%username%.sav" goto ERRORNU
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < Accounts\%username%.sav
goto Warning
:ERRORNU
cls
echo The username, %username%, was not found in the
echo 'Accounts' directory.
echo.
timeout 5 >nul
set cuser=0
set username=Pending
if not exist "Accounts" mkdir Accounts
(
echo %username%
echo %cuser%
) > Accounts\cuset.sav
goto RLRLRL
:Warning
cls
if %warn%==0 goto Genesis
if %warn%==1 goto :R 
:Reset
set name=Pending
set warn=1
set pre=C:
set coco=0A
set hage=0
set age=Pending
set year=Pending
set teachw=0
set learnw=0
goto makesavfiler
:makesavfiler
if not exist "Accounts" mkdir Accounts
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto R
:R
set coco=0A
set answer=enter
color %coco%
cls
title Genesis
echo Remember, when the program pauses, press any key to continue!
echo.
pause >nul
:NameSelect
set name=Enter
color %coco%
cls
echo What is your name?
echo.
set /p name=
if %name%==m goto NameSelect
cls
echo Hello %name%! I am Genesis, your own computer assistant!
pause >nul
goto makesavfile
:makesavfile
if not exist "Accounts" mkdir Accounts
set warn=0
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto HELPR
:HELPR
color %coco%
cls
echo Give me a command, or just talk to me. If you don't know the
echo commands, type help.
echo Remember, no punctuation, or capital letters.
echo Also, use underscores, (_), as spaces.
echo Ex. how_are_you
pause >nul
goto Genesis
:Genesis
set answer=enter
color %coco%
cls
echo Tell me something, or give me a command:
echo.
set /p answer=%pre%
cls
if %answer%==help goto Help
if %answer%==exit goto Exit
if %answer%==open_app goto opena
if %answer%==open_webst goto openw
if %answer%==change_pre goto changep
if %answer%==change_c goto changeco
if %answer%==reset goto Reset
if %answer%==shutdown goto shutdown
if %answer%==restart goto restart
if %answer%==make_txt_file goto maketxtfile
if %answer%==make_bat_file goto makebatfile
if %answer%==make_sav_file goto makesavfile
if %answer%==change_name goto changename
if %answer%==calculate goto calculate
if %answer%==about goto about
if %answer%==enter goto enternot
if %answer%==what_is_my_name goto wimn
if %answer%==what_is_my_name_genesis goto wimn
if %answer%==i_forgot_what_my_name_is goto wimn
if %answer%==i_forgot_my_name_what_is_it goto wimn
if %answer%==i_forgot_my_name_genesis_what_is_it goto wimn
if %answer%==i_forgot_my_name_what_is_it_genesis goto wimn
if %answer%==i_forgot_what_my_name_is_genesis goto wimn
if %answer%==genesis_what_is_my_name goto wimn
if %answer%==what_is_my_name_i_forgot_it goto wimn
if %answer%==what_is_my_name_i_forgot_it_genesis goto wimn
if %answer%==thank_you goto yw
if %answer%==thanks goto yw
if %answer%==thanks_genesis goto yw
if %answer%==thank_you_genesis goto yw
if %answer%==thankyou_genesis goto yw
if %answer%==i_am_lonely goto iasyftw
if %answer%==genesis_i_am_lonely goto iasyftw
if %answer%==i_am_lonely_genesis goto iasyftw
if %answer%==i_am_so_lonely_genesis goto iasyftw
if %answer%==genesis_i_am_so_lonely goto iasyftw
if %answer%==im_lonely goto iasyftw
if %answer%==genesis_im_lonely goto iasyftw
if %answer%==im_lonely_genesis goto iasyftw
if %answer%==im_so_lonely_genesis goto iasyftw
if %answer%==genesis_im_so_lonely goto iasyftw
if %answer%==hello goto hello
if %answer%==hi goto hello
if %answer%==hello_genesis goto hello
if %answer%==hi_genesis goto hello
if %answer%==hi_there goto hello
if %answer%==hi_there_genesis goto hello
if %answer%==hello_there_genesis goto hello
if %answer%==nice_to_see_you goto ntsyt
if %answer%==nice_to_see_you_genesis goto ntsyt
if %answer%==its_nice_to_see_you goto ntsyt
if %answer%==its_nice_to_see_you_genesis goto ntsyt
if %answer%==it_is_nice_to_see_you goto ntsyt
if %answer%==it_is_nice_to_see_you_genesis goto ntsyt
if %answer%==you_are_so_nice goto tyyaan
if %answer%==you_are_so_nice_genesis goto tyyaan
if %answer%==you_are_nice goto tyyaan
if %answer%==you_are_nice_genesis goto tyyaan
if %answer%==you_are_so_kind goto tyyaan
if %answer%==you_are_so_kind_genesis goto tyyaan
if %answer%==you_are_so_kind_hearted goto tyyaan
if %answer%==you_are_so_kindhearted goto tyyaan
if %answer%==you_are_so_kind-hearted goto tyyaan
if %answer%==you_are_so_kindhearted_genesis goto tyyaan
if %answer%==you_are_so_kind-hearted_genesis goto tyyaan
if %answer%==you_are_so_kind_hearted_genesis goto tyyaan
if %answer%==you_are_so_helpful goto tyigyts
if %answer%==you_are_so_helpful_genesis goto tyigyts
if %answer%==you_are_kind goto tyyaan
if %answer%==you_are_kind_genesis goto tyyaan
if %answer%==you_are_kind_hearted goto tyyaan
if %answer%==you_are_kindhearted goto tyyaan
if %answer%==you_are_kind-hearted goto tyyaan
if %answer%==you_are_kindhearted_genesis goto tyyaan
if %answer%==you_are_helpful goto tyigyts
if %answer%==you_are_helpful_genesis goto tyigyts
if %answer%==you_help_a_lot goto tyigyts
if %answer%==you_help_a_lot_genesis goto tyigyts
if %answer%==you_help_me_a_lot goto tyigyts
if %answer%==you_help_me_a_lot_genesis goto tyigyts
if %answer%==you_help_out_a_lot goto tyigyts
if %answer%==you_help_out_a_lot_genesis goto tyigyts
if %answer%==you_help_me_out_a_lot goto tyigyts
if %answer%==you_help_me_out_a_lot_genesis goto tyigyts
if %answer%==youre_so_nice goto tyyaan
if %answer%==youre_so_nice_genesis goto tyyaan
if %answer%==youre_nice goto tyyaan
if %answer%==youre_nice_genesis goto tyyaan
if %answer%==youre_so_kind goto tyyaan
if %answer%==youre_so_kind_genesis goto tyyaan
if %answer%==youre_so_kindhearted goto tyyaan
if %answer%==youre_so_kind-hearted goto tyyaan
if %answer%==youre_so_kind_hearted goto tyyaan
if %answer%==youre_so_kindhearted_genesis goto tyyaan
if %answer%==youre_so_kind-hearted_genesis goto tyyaan
if %answer%==youre_so_kind_hearted_genesis goto tyyaan
if %answer%==youre_kind goto tyyaan
if %answer%==youre_kind_genesis goto tyyaan
if %answer%==youre_kindhearted goto tyyaan
if %answer%==youre_kind-hearted goto tyyaan
if %answer%==youre_kind_hearted goto tyyaan
if %answer%==youre_kindhearted_genesis goto tyyaan
if %answer%==youre_kind-hearted_genesis goto tyyaan
if %answer%==youre_kind_hearted_genesis goto tyyaan
if %answer%==youre_so_helpful goto tyigyts
if %answer%==youre_so_helpful_genesis goto tyigyts
if %answer%==youre_helpful goto tyigyts
if %answer%==youre_helpful_genesis goto tyigyts
if %answer%==youre_mean goto sidkwyttw
if %answer%==you_are_mean goto sidkwyttw
if %answer%==youre_so_mean goto sidkwyttw
if %answer%==you_are_so_mean goto sidkwyttw
if %answer%==youre_mean_genesis goto sidkwyttw
if %answer%==you_are_mean_genesis goto sidkwyttw
if %answer%==youre_so_mean_genesis goto sidkwyttw
if %answer%==you_are_so_mean_genesis goto sidkwyttw
if %answer%==youre_unkind goto sidkwyttw
if %answer%==you_are_unkind goto sidkwyttw
if %answer%==youre_so_unkind goto sidkwyttw
if %answer%==you_are_so_unkind goto sidkwyttw
if %answer%==youre_unkind_genesis goto sidkwyttw
if %answer%==you_are_unkind_genesis goto sidkwyttw
if %answer%==youre_so_unkind_genesis goto sidkwyttw
if %answer%==you_are_so_unkind_genesis goto sidkwyttw
if %answer%==why_are_you_mean goto idkwytomlt
if %answer%==why_are_you_so_mean goto idkwytomlt
if %answer%==why_are_you_unkind goto idkwytomlt
if %answer%==why_are_you_so_unkind goto idkwytomlt
if %answer%==why_are_you_mean_genesis goto idkwytomlt
if %answer%==why_are_you_so_mean_genesis goto idkwytomlt
if %answer%==why_are_you_unkind_genesis goto idkwytomlt
if %answer%==why_are_you_so_unkind_genesis goto idkwytomlt
if %answer%==you_are_smart goto wtyigytomtw
if %answer%==you_are_so_smart goto wtyigytomtw
if %answer%==you_are_intelligent goto wtyigytomtw
if %answer%==you_are_so_intelligent goto wtyigytomtw
if %answer%==you_are_wise goto wtyigytomtw
if %answer%==you_are_so_wise goto wtyigytomtw
if %answer%==you_are_smart_genesis goto wtyigytomtw
if %answer%==you_are_so_smart_genesis goto wtyigytomtw
if %answer%==you_are_intelligent_genesis goto wtyigytomtw
if %answer%==you_are_so_intelligent_genesis goto wtyigytomtw
if %answer%==you_are_wise_genesis goto wtyigytomtw
if %answer%==you_are_so_wise_genesis goto wtyigytomtw
if %answer%==i_hate_you goto istytomtw
if %answer%==i_hate_you_genesis goto istytomtw
if %answer%==i_dislike_you goto istytomtw
if %answer%==i_dislike_you_genesis goto istytomtw
if %answer%==i_do_not_like_you goto istytomtw
if %answer%==i_do_not_like_you_genesis goto istytomtw
if %answer%==i_dont_like_you goto istytomtw
if %answer%==i_dont_like_you_genesis goto istytomtw
if %answer%==i_donut_like_you goto tptptp
if %answer%==i_donut_like_you_genesis goto tptptp
if %answer%==you_are_stupid goto istytomtw
if %answer%==you_are_stupid_genesis goto istytomtw
if %answer%==you_are_so_stupid goto istytomtw
if %answer%==you_are_so_stupid_genesis goto istytomtw
if %answer%==you_are_dumb goto istytomtw
if %answer%==you_are_dumb_genesis goto istytomtw
if %answer%==you_are_so_dumb goto istytomtw
if %answer%==you_are_so_dumb_genesis goto istytomtw
if %answer%==you_are_not_smart goto istytomtw
if %answer%==you_are_not_smart_genesis goto istytomtw
if %answer%==youre_stupid goto istytomtw
if %answer%==youre_stupid_genesis goto istytomtw
if %answer%==youre_so_stupid goto istytomtw
if %answer%==youre_so_stupid_genesis goto istytomtw
if %answer%==youre_dumb goto istytomtw
if %answer%==youre_dumb_genesis goto istytomtw
if %answer%==youre_so_dumb goto istytomtw
if %answer%==youre_so_dumb_genesis goto istytomtw
if %answer%==youre_not_smart goto istytomtw
if %answer%==youre_not_smart_genesis goto istytomtw
if %answer%==i_want_to_die goto sinta
if %answer%==i_want_to_kill_myself goto sinta
if %answer%==i_want_to_commit_suicide goto sinta
if %answer%==i_dont_want_to_live_anymore goto sinta
if %answer%==i_want_to_shoot_myself goto sinta
if %answer%==time goto time
if %answer%==date goto date
if %answer%==what_time_is_it goto time
if %answer%==what_time_is_it_genesis goto time
if %answer%==what_is_the_time goto time
if %answer%==what_is_the_time_genesis goto time
if %answer%==what_time_is_it_right_now goto time
if %answer%==what_time_is_it_right_now_genesis goto time
if %answer%==what_is_the_time_right_now goto time
if %answer%==what_is_the_time_right_now_genesis goto time
if %answer%==what_is_the_date goto date
if %answer%==what_is_the_date_genesis goto date
if %answer%==what_is_the_date_today goto date
if %answer%==what_is_the_date_today_genesis goto date
if %answer%==what_is_the_date_right_now goto date
if %answer%==what_is_the_date_right_now_genesis goto date
if %answer%==i_am_sorry goto tntbsa
if %answer%==i_am_sorry_genesis goto tntbsa
if %answer%==im_sorry goto tntbsa
if %answer%==im_sorry_genesis goto tntbsa
if %answer%==i_am_really_sorry goto tntbsa
if %answer%==i_am_really_sorry_genesis goto tntbsa
if %answer%==im_really_sorry goto tntbsa
if %answer%==im_really_sorry_genesis goto tntbsa
if %answer%==i_am_so_sorry goto tntbsa
if %answer%==i_am_so_sorry_genesis goto tntbsa
if %answer%==im_so_sorry goto tntbsa
if %answer%==im_so_sorry_genesis goto tntbsa
if %answer%==i_want_you_to_die goto wahtts
if %answer%==kill_yourself goto wahtts
if %answer%==i_want_you_to_die_genesis goto wahtts
if %answer%==kill_yourself_genesis goto wahtts
if %answer%==i_want_you_to_kill_yourself goto wahtts
if %answer%==i_want_you_to_kill_yourself_genesis goto wahtts
if %answer%==im_going_to_kill_you goto wattts
if %answer%==im_going_to_kill_you_genesis goto wattts
if %answer%==im_going_to_shoot_you goto wattts
if %answer%==im_going_to_shoot_you_genesis goto wattts
if %answer%==i_want_to_kill_you goto wattts
if %answer%==i_want_to_kill_you_genesis goto wattts
if %answer%==i_want_you_to_die goto wattts
if %answer%==i_want_you_to_die_genesis goto wattts
if %answer%==i_want_foryoutodiegenesis goto wattts
if %answer%==i_want_for_you_to_die goto wattts
if %answer%==tell_me_a_joke goto kkwtccwm
if %answer%==tell_me_a_joke_genesis goto kkwtccwm
if %answer%==give_me_a_joke goto kkwtccwm
if %answer%==give_me_a_joke_genesis goto kkwtccwm
if %answer%==tell_me_a_good_joke goto sswssasswss
if %answer%==tell_me_a_good_joke_genesis goto sswssasswss 
if %answer%==you_are_funny goto igyts
if %answer%==you_are_funny_genesis goto igyts
if %answer%==you_are_really_funny goto igyts
if %answer%==you_are_really_funny_genesis goto igyts
if %answer%==you_are_so_funny goto igyts
if %answer%==you_are_so_funny_genesis goto igyts
if %answer%==youre_funny goto igyts
if %answer%==youre_funny_genesis goto igyts
if %answer%==youre_really_funny goto igyts
if %answer%==youre_really_funny_genesis goto igyts
if %answer%==youre_so_funny goto igyts
if %answer%==youre_so_funny_genesis goto igyts
if %answer%==you_are_humorous goto igyts
if %answer%==you_are_humorous_genesis goto igyts
if %answer%==you_are_really_humorous goto igyts
if %answer%==you_are_really_humorous_genesis goto igyts
if %answer%==you_are_so_humorous goto igyts
if %answer%==you_are_so_humorous_genesis goto igyts
if %answer%==youre_humorous goto igyts
if %answer%==youre_humorous_genesis goto igyts
if %answer%==youre_really_humorous goto igyts
if %answer%==youre_really_humorous_genesis goto igyts
if %answer%==youre_so_humorous goto igyts
if %answer%==youre_so_humorous_genesis goto igyts
if %answer%==i_like_you goto ilyt
if %answer%==i_like_you_genesis goto ilyt
if %answer%==i_really_like_you goto ilyt
if %answer%==i_really_like_you_genesis goto ilyt
if %answer%==i_like_you_so_much goto ilyt
if %answer%==i_like_you_so_much_genesis goto ilyt
if %answer%==tell_me_another_joke goto kkwtbbwdc
if %answer%==tell_me_another_joke_genesis goto kkwtbbwdc
if %answer%==give_me_another_joke goto kkwtbbwdc
if %answer%==give_me_another_joke_genesis goto kkwtbbwdc
if %answer%==how_old_am_i goto yaah
if %answer%==change_age goto askchangeage
if %answer%==how_old_am_i_genesis goto yaah
if %answer%==i_am_cool goto asya
if %answer%==i_am_cool_genesis goto asya
if %answer%==i_am_really_cool goto asya
if %answer%==i_am_really_cool_genesis goto asya
if %answer%==i_am_so_cool goto asya
if %answer%==i_am_so_cool_genesis goto asya
if %answer%==am_i_cool goto its
if %answer%==am_i_cool_genesis goto its
if %answer%==am_i_really_cool goto its
if %answer%==am_i_really_cool_genesis goto its
if %answer%==are_you_cool goto its
if %answer%==are_you_cool_genesis goto its
if %answer%==are_you_really_cool goto its
if %answer%==are_you_really_cool_genesis goto its
if %answer%==am_i_so_cool goto its
if %answer%==am_i_so_cool_genesis goto its
if %answer%==are_you_so_cool goto its
if %answer%==are_you_so_cool_genesis goto its
if %answer%==im_so_cool goto asya
if %answer%==im_so_cool_genesis goto asya
if %answer%==im_cool goto asya
if %answer%==im_cool_genesis goto asya
if %answer%==im_really_cool goto asya
if %answer%==im_really_cool_genesis goto asya
if %answer%==reload goto reload
if %answer%==am_i_gay goto idkaidc
if %answer%==am_i_gay_genesis goto idkaidc
if %answer%==am_i_really_gay goto idkaidc
if %answer%==am_i_really_gay_genesis goto idkaidc
if %answer%==am_i_so_gay_genesis goto idkaidc
if %answer%==am_i_so_gay goto idkaidc
if %answer%==are_you_gay goto iaaaicbg
if %answer%==are_you_gay_genesis goto iaaaicbg
if %answer%==are_you_really_gay goto iaaaicbg
if %answer%==are_you_really_gay_genesis goto iaaaicbg
if %answer%==are_you_so_gay_genesis goto iaaaicbg
if %answer%==are_you_so_gay goto iaaaicbg
if %answer%==i_am_gay goto okq
if %answer%==i_am_gay_genesis goto okq
if %answer%==i_am_really_gay goto okq
if %answer%==i_am_really_gay_genesis goto okq
if %answer%==i_am_so_gay goto okq
if %answer%==i_am_so_gay_genesis goto okq
if %answer%==im_gay goto okq
if %answer%==im_gay_genesis goto okq
if %answer%==im_really_gay goto okq
if %answer%==im_really_gay_genesis goto okq
if %answer%==im_so_gay goto okq
if %answer%==im_so_gay_genesis goto okq
if %answer%==you_are_gay goto iaaaicbg
if %answer%==you_are_gay_genesis goto iaaaicbg
if %answer%==you_are_really_gay goto iaaaicbg
if %answer%==you_are_really_gay_genesis goto iaaaicbg
if %answer%==you_are_so_gay goto iaaaicbg
if %answer%==you_are_so_gay_genesis goto iaaaicbg
if %answer%==youre_gay goto iaaaicbg
if %answer%==youre_gay_genesis goto iaaaicbg
if %answer%==youre_really_gay goto iaaaicbg
if %answer%==youre_really_gay_genesis goto iaaaicbg
if %answer%==youre_so_gay goto iaaaicbg
if %answer%==youre_so_gay_genesis goto iaaaicbg
if %answer%==am_i_lesbian goto idkaidc
if %answer%==am_i_lesbian_genesis goto idkaidc
if %answer%==am_i_really_lesbian goto idkaidc
if %answer%==am_i_really_lesbian_genesis goto idkaidc
if %answer%==am_i_so_lesbian_genesis goto idkaidc
if %answer%==am_i_so_lesbian goto idkaidc
if %answer%==are_you_lesbian goto iaaaicbg
if %answer%==are_you_lesbian_genesis goto iaaaicbg
if %answer%==are_you_really_lesbian goto iaaaicbg
if %answer%==are_you_really_lesbian_genesis goto iaaaicbg
if %answer%==are_you_so_lesbian_genesis goto iaaaicbg
if %answer%==are_you_so_lesbian goto iaaaicbg
if %answer%==i_am_lesbian goto okq
if %answer%==i_am_lesbian_genesis goto okq
if %answer%==i_am_really_lesbian goto okq
if %answer%==i_am_really_lesbian_genesis goto okq
if %answer%==i_am_so_lesbian goto okq
if %answer%==i_am_so_lesbian_genesis goto okq
if %answer%==im_lesbian goto okq
if %answer%==im_lesbian_genesis goto okq
if %answer%==im_really_lesbian goto okq
if %answer%==im_really_lesbian_genesis goto okq
if %answer%==im_so_lesbian goto okq
if %answer%==im_so_lesbian_genesis goto okq
if %answer%==you_are_lesbian goto iaaaicbg
if %answer%==you_are_lesbian_genesis goto iaaaicbg
if %answer%==you_are_really_lesbian goto iaaaicbg
if %answer%==you_are_really_lesbian_genesis goto iaaaicbg
if %answer%==you_are_so_lesbian goto iaaaicbg
if %answer%==you_are_so_lesbian_genesis goto iaaaicbg
if %answer%==youre_lesbian goto iaaaicbg
if %answer%==youre_lesbian_genesis goto iaaaicbg
if %answer%==youre_really_lesbian goto iaaaicbg
if %answer%==youre_really_lesbian_genesis goto iaaaicbg
if %answer%==youre_so_lesbian goto iaaaicbg
if %answer%==youre_so_lesbian_genesis goto iaaaicbg
if %answer%==am_i_lesbo goto idkaidc
if %answer%==am_i_lesbo_genesis goto idkaidc
if %answer%==am_i_really_lesbo goto idkaidc
if %answer%==am_i_really_lesbo_genesis goto idkaidc
if %answer%==am_i_so_lesbo_genesis goto idkaidc
if %answer%==am_i_so_lesbo goto idkaidc
if %answer%==are_you_lesbo goto iaaaicbg
if %answer%==are_you_lesbo_genesis goto iaaaicbg
if %answer%==are_you_really_lesbo goto iaaaicbg
if %answer%==are_you_really_lesbo_genesis goto iaaaicbg
if %answer%==are_you_so_lesbo_genesis goto iaaaicbg
if %answer%==are_you_so_lesbo goto iaaaicbg
if %answer%==i_am_lesbo goto okq
if %answer%==i_am_lesbo_genesis goto okq
if %answer%==i_am_really_lesbo goto okq
if %answer%==i_am_really_lesbo_genesis goto okq
if %answer%==i_am_so_lesbo goto okq
if %answer%==i_am_so_lesbo_genesis goto okq
if %answer%==im_lesbo goto okq
if %answer%==im_lesbo_genesis goto okq
if %answer%==im_really_lesbo goto okq
if %answer%==im_really_lesbo_genesis goto okq
if %answer%==im_so_lesbo goto okq
if %answer%==im_so_lesbo_genesis goto okq
if %answer%==you_are_lesbo goto iaaaicbg
if %answer%==you_are_lesbo_genesis goto iaaaicbg
if %answer%==you_are_really_lesbo goto iaaaicbg
if %answer%==you_are_really_lesbo_genesis goto iaaaicbg
if %answer%==you_are_so_lesbo goto iaaaicbg
if %answer%==you_are_so_lesbo_genesis goto iaaaicbg
if %answer%==youre_lesbo goto iaaaicbg
if %answer%==youre_lesbo_genesis goto iaaaicbg
if %answer%==youre_really_lesbo goto iaaaicbg
if %answer%==youre_really_lesbo_genesis goto iaaaicbg
if %answer%==youre_so_lesbo goto iaaaicbg
if %answer%==youre_so_lesbo_genesis goto iaaaicbg
if %answer%==what_is_your_name goto iagycaa
if %answer%==what_is_your_name_i_forgot_it goto iagycaa
if %answer%==i_forgot_your_name_what_is_it goto iagycaa
if %answer%==i_dont_know_what_your_name_is goto iagycaa
if %answer%==what_is_your_name_genesis_i_forgot_it goto iagycaa
if %answer%==i_forgot_your_name_genesis_what_is_it goto iagycaa
if %answer%==i_dont_know_what_your_name_is_genesis goto iagycaa
if %answer%==what_is_your_name_i_forgot_it_genesis goto iagycaa
if %answer%==i_forgot_your_name_what_is_it_genesis goto iagycaa
if %answer%==i_need_help goto ruhfaloc
if %answer%==i_need_help_genesis goto ruhfaloc
if %answer%==i_need_a_lot_of_help goto ruhfaloc
if %answer%==i_need_a_lot_of_help_genesis goto ruhfaloc
if %answer%==i_need_lots_of_help goto ruhfaloc
if %answer%==i_need_lots_of_help_genesis goto ruhfaloc
if %answer%==help_me goto ruhfaloc
if %answer%==help_me_genesis goto ruhfaloc
if %answer%==please_help_me goto ruhfaloc
if %answer%==please_help_me_genesis goto ruhfaloc
if %answer%==how_old_are_you goto idmiaaca
if %answer%==how_old_are_you_genesis goto idmiaaca
if %answer%==what_is_your_age goto idmiaaca
if %answer%==what_is_your_age_genesis goto idmiaaca
if %answer%==how_old_are_you_i_forgot goto idmiaaca
if %answer%==how_old_are_you_genesis_i_forgot goto idmiaaca
if %answer%==how_old_are_you_i_forgot_genesis goto idmiaaca
if %answer%==i_forgot_how_old_you_are goto idmiaaca
if %answer%==i_forgot_how_old_you_are_genesis goto idmiaaca
if %answer%==how_old_am_i_i_forgot goto yaah
if %answer%==how_old_am_i_i_forgot_genesis goto yaah
if %answer%==kill_me goto yn
if %answer%==kill_me_now goto yn
if %answer%==kill_me_genesis goto yn
if %answer%==kill_me_now_genesis goto yn
if %answer%==how_are_you goto imdjf
if %answer%==how_are_you_genesis goto imdjf
if %answer%==you_are_fat goto tdmas
if %answer%==you_are_fat_genesis goto tdmas
if %answer%==youre_fat goto tdmas
if %answer%==youre_fat_genesis goto tdmas
if %answer%==you_are_really_fat goto tdmas
if %answer%==you_are_really_fat_genesis goto tdmas
if %answer%==youre_really_fat goto tdmas
if %answer%==youre_really_fat_genesis goto tdmas
if %answer%==you_are_so_fat goto tdmas
if %answer%==you_are_so_fat_genesis goto tdmas
if %answer%==youre_so_fat goto tdmas
if %answer%==youre_fat_genesis goto tdmas
if %answer%==you_dont_make_any_sense goto istidmsittdtbic
if %answer%==you_do_not_make_any_sense goto istidmsittdtbic
if %answer%==you_donut_make_any_sense goto tptptp
if %answer%==you_dont_make_any_sense_genesis goto istidmsittdtbic
if %answer%==you_do_not_make_any_sense_genesis goto istidmsittdtbic
if %answer%==you_donut_make_any_sense_genesis goto tptptp
if %answer%==you_dont_make_sense goto istidmsittdtbic
if %answer%==you_do_not_make_sense goto istidmsittdtbic
if %answer%==you_donut_make_sense goto tptptp
if %answer%==you_dont_make_sense_genesis goto istidmsittdtbic
if %answer%==you_do_not_make_sense_genesis goto istidmsittdtbic
if %answer%==you_donut_make_sense_genesis goto tptptp
if %answer%==you_are_awesome goto tyyat
if %answer%==you_are_awesome_genesis goto tyyat
if %answer%==youre_awesome goto tyyat
if %answer%==youre_awesome_genesis goto tyyat
if %answer%==you_are_old goto hciboiaoaaa
if %answer%==you_are_old_genesis goto hciboiaoaaa
if %answer%==youre_old goto hciboiaoaaa
if %answer%==youre_old_genesis goto hciboiaoaaa
if %answer%==you_are_so_old goto hciboiaoaaa
if %answer%==you_are_so_old_genesis goto hciboiaoaaa
if %answer%==youre_so_old goto hciboiaoaaa
if %answer%==youre_so_old_genesis goto hciboiaoaaa
if %answer%==you_are_really_old goto hciboiaoaaa
if %answer%==you_are_really_old_genesis goto hciboiaoaaa
if %answer%==youre_really_old goto hciboiaoaaa
if %answer%==youre_really_old_genesis goto hciboiaoaaa
if %answer%==you_suck goto isyftw
if %answer%==you_suck_genesis goto isyftw
if %answer%==you_really_suck goto isyftw
if %answer%==you_really_suck_genesis goto isyftw
if %answer%==teach goto teachgenesis
if %answer%==learn goto learngenesis
if %answer%==c_var goto changevariables
if %answer%==bye goto bun
if %answer%==bye_genesis goto bun
if %answer%==goodbye_genesis goto bun
if %answer%==goodbye goto bun
if %answer%==good_bye_genesis goto bun
if %answer%==good_bye goto bun
if %answer%==are_you_my_friend goto ocymf
if %answer%==are_you_my_friend_genesis goto ocymf
if %answer%==we_are_friends goto ywa
if %answer%==we_are_friends_genesis goto ywa
if %answer%==are_we_friends goto ocwf
if %answer%==are_we_friends_genesis goto ocwf
if %answer%==are_you_alive goto rdtdtdt
if %answer%==are_you_alive_genesis goto rdtdtdt
if %answer%==shop goto shopwebst
if %answer%==lets_go_shopping goto shopwebst
if %answer%==lets_go_shopping_genesis goto shopwebst
if %answer%==i_want_to_go_shopping goto shopwebst
if %answer%==i_want_to_go_shopping_genesis goto shopwebst
if %answer%==i_want_to_shop goto shopwebst
if %answer%==i_want_to_shop_genesis goto shopwebst
if %answer%==i_really_want_to_go_shopping goto shopwebst
if %answer%==i_really_want_to_go_shopping_genesis goto shopwebst
if %answer%==i_really_want_to_shop goto shopwebst
if %answer%==i_really_want_to_shop_genesis goto shopwebst
if %answer%==open_a_shopping_website goto shopwebst
if %answer%==open_a_shopping_website_genesis goto shopwebst
if %answer%==open_shopping_website goto shopwebst
if %answer%==open_shopping_website_genesis goto shopwebst
if %answer%==lets_go_shop goto shopwebst
if %answer%==lets_go_shop_genesis goto shopwebst
if %answer%==i_want_to_go_shop goto shopwebst
if %answer%==i_want_to_go_shop_genesis goto shopwebst
if %answer%==i_really_want_to_go_shop goto shopwebst
if %answer%==i_really_want_to_go_shop_genesis goto shopwebst
if %answer%==open_a_shop_website goto shopwebst
if %answer%==open_a_shop_website_genesis goto shopwebst
if %answer%==open_shop_website goto shopwebst
if %answer%==open_shop_website_genesis goto shopwebst
if %answer%==what goto wwq
if %answer%==what_genesis goto wwq
if %answer%==you_got_the_touch goto ygtp
if %answer%==echo goto echo
if %answer%==genesis goto yunh
if %answer%==what_is_wrong_with_you goto iduwdid
if %answer%==what_is_wrong_with_you_genesis goto iduwdid
if %answer%==shut_up goto hrhr
if %answer%==shut_up_genesis goto hrhr
if %answer%==i_love_you goto icfl
if %answer%==i_love_you_genesis goto icfl
if %answer%==open_close goto openandclose
if %answer%==change_pass goto changepass
if %answer%==logout goto logout
if %answer%==del_account goto delaccount
goto DNUT
:DNUT
color %coco%
cls
echo Sorry, I do not understand,
echo %answer%.
echo (Any profanity related statements are not present.)
echo (Make sure there are no caps, or punctuation.) 
echo (Make sure that you're using underscores, (_), as spaces.)
echo.
pause >nul
goto Genesis
:Help
color %coco%
cls
echo Here's a list of commands:
echo about - info about Genesis
echo change_c - changes color of program
echo open_app - opens application
echo open_close - opens app and closes Genesis
echo open_webst - opens website
echo exit - exits program
echo change_pre - changes prefix (ex. C:)
echo change_age - changes user's age
echo reset - resets program
echo shutdown - shuts down Computer
echo restart - restarts Computer
echo make_txt_file - makes a text file 
echo make_bat_file - makes a batch file
echo make_sav_file - makes a save file
echo change_name - changes the user's name
echo calculate - calculates two numbers
echo reload - reloads Genesis
echo time - shows the time
echo date - shows the date
echo teach - teach Genesis about certain things
echo learn - Genesis teaches what you taught her
echo shop - Genesis opens a shopping website
echo echo - Genesis repeats what you say
echo change_pass - changes the password of the current username
echo logout - signs out of current username
echo del_account - deletes the account in use
pause >nul
goto Genesis
:Exit 
set answer=enter
color %coco%
cls
echo Are you sure that you want to exit?
echo.
set /p answer=%pre%
if %answer%==Yes goto CExit
if %answer%==No goto Genesis
if %answer%==yes goto CExit
if %answer%==no goto Genesis
goto Exit
:CExit
cls
echo See you later, %name%!
echo.
timeout 3 >nul
exit;
:opena
set app=enter
color %coco%
cls
echo Enter the app that you want to open, or enter b to go back.
echo (Any app you want opened has to be placed in the Apps folder)
echo (App has to have a name with just one word.)
echo (Some things require extensions. ex. .txt)
echo.
set /p app=%pre%
if %app%==b goto Genesis
goto startapp
:startapp
start Apps\%app%
goto Genesis
:openw
set web=enter
color %coco%
cls
echo Enter the URL of the website you want to be opened. 
echo (ex. www.youtube.com)
echo (This will open in your Default Browser.)
echo Or enter m to go back to menu.
echo.
set /p web=%pre%
if %web%==m goto Genesis
goto startweb
:startweb
cls
start %web%
goto Genesis
:changep
set fpre=Enter:
color %coco%
cls
echo What would you like to change the prefix into?
echo (Example: C:)
echo Or enter m to go back to menu. 
echo.
set /p fpre=%pre%
if %fpre%==m goto Genesis
if %fpre%==%pre% goto AUPRE
goto changep2
:AUPRE
cls
echo The prefix is already set as %pre%
echo Try again.
echo.
timeout 3 >nul
goto changep
:changep2
set pre=%fpre%
goto makesavfile2
:makesavfile2
if not exist "Accounts" mkdir Accounts
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto Genesis
:changeco
color %coco%
set co=enter
cls
echo What would you like to change the color of the background
echo into? (Example: 0A)
echo Or enter m to go back to menu.
echo 0 = Black  8 = Gray
echo 1 = Blue   9 = Light Blue
echo 2 = Green  A = Light Green
echo 3 = Aqua   B = Light Aqua
echo 4 = Red    C = Light Red
echo 5 = Purple D = Light Purple
echo 6 = Yellow E = Light Yellow
echo 7 = White  F = Bright White
echo.
set /p co=%pre%
if %co%==m goto Genesis
goto cosel
:cosel
if %co%==0 goto changeco2
if %co%==1 goto changeco2
if %co%==2 goto changeco2
if %co%==3 goto changeco2
if %co%==4 goto changeco2
if %co%==5 goto changeco2
if %co%==6 goto changeco2
if %co%==7 goto changeco2
if %co%==8 goto changeco2
if %co%==9 goto changeco2
if %co%==A goto changeco2
if %co%==B goto changeco2
if %co%==C goto changeco2
if %co%==D goto changeco2
if %co%==E goto changeco2
if %co%==F goto changeco2
if %co%==a goto changeco2
if %co%==b goto changeco2
if %co%==c goto changeco2
if %co%==d goto changeco2
if %co%==e goto changeco2
if %co%==f goto changeco2
goto invcoco
:invcoco
color %coco%
cls
echo That's an invalid interval!
echo.
pause >nul
goto changeco
:changeco2
set co2=enter
color %coco%
cls
echo What would you like to change the color of the text into?
echo (Example: 0A)
echo Or enter m to go back to menu.
echo 0 = Black  8 = Gray
echo 1 = Blue   9 = Light Blue
echo 2 = Green  A = Light Green
echo 3 = Aqua   B = Light Aqua
echo 4 = Red    C = Light Red
echo 5 = Purple D = Light Purple
echo 6 = Yellow E = Light Yellow
echo 7 = White  F = Bright White
echo.
set /p co2=%pre%
if %co2%==m goto Genesis
goto co2sel
:co2sel
if %co2%==0 goto changecoc
if %co2%==1 goto changecoc
if %co2%==2 goto changecoc
if %co2%==3 goto changecoc
if %co2%==4 goto changecoc
if %co2%==5 goto changecoc
if %co2%==6 goto changecoc
if %co2%==7 goto changecoc
if %co2%==8 goto changecoc
if %co2%==9 goto changecoc
if %co2%==A goto changecoc
if %co2%==B goto changecoc
if %co2%==C goto changecoc
if %co2%==D goto changecoc
if %co2%==E goto changecoc
if %co2%==F goto changecoc
if %co2%==a goto changecoc
if %co2%==b goto changecoc
if %co2%==c goto changecoc
if %co2%==d goto changecoc
if %co2%==e goto changecoc
if %co2%==f goto changecoc
goto invcoco
:changecoc
cls
set cocot=%co%%co2%
goto changecocofc
:changecocofc
color %coco%
cls
if %cocot%==00 goto invcoco2
if %cocot%==11 goto invcoco2
if %cocot%==22 goto invcoco2
if %cocot%==33 goto invcoco2
if %cocot%==44 goto invcoco2
if %cocot%==55 goto invcoco2
if %cocot%==66 goto invcoco2
if %cocot%==77 goto invcoco2
if %cocot%==88 goto invcoco2
if %cocot%==99 goto invcoco2
if %cocot%==AA goto invcoco2
if %cocot%==BB goto invcoco2
if %cocot%==CC goto invcoco2
if %cocot%==DD goto invcoco2
if %cocot%==EE goto invcoco2
if %cocot%==FF goto invcoco2
if %cocot%==aa goto invcoco2
if %cocot%==bb goto invcoco2
if %cocot%==cc goto invcoco2
if %cocot%==dd goto invcoco2
if %cocot%==ee goto invcoco2
if %cocot%==ff goto invcoco2
if %cocot%==Aa goto invcoco2
if %cocot%==Bb goto invcoco2
if %cocot%==Cc goto invcoco2
if %cocot%==Dd goto invcoco2
if %cocot%==Ee goto invcoco2
if %cocot%==Ff goto invcoco2
if %cocot%==aA goto invcoco2
if %cocot%==bB goto invcoco2
if %cocot%==cC goto invcoco2
if %cocot%==dD goto invcoco2
if %cocot%==eE goto invcoco2
if %cocot%==fF goto invcoco2
goto prococo
:prococo
cls
set coco=%cocot%
goto makesavfile3
:makesavfile3
if not exist "Accounts" mkdir Accounts
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto Genesis
:shutdown
cls
set answer=enter
echo Are you sure that you want to shutdown your computer?
echo.
set /p answer=%pre%
if %answer%==yes goto shutdown2
if %answer%==Yes goto shutdown2
if %answer%==No goto Genesis
if %answer%==no goto Genesis
goto shutdown
:shutdown2
shutdown.exe /s /t 00
exit;
:restart
cls
set answer=enter
echo Are you sure that you want to restart your computer?
echo.
set /p answer=%pre%
if %answer%==yes goto restart2
if %answer%==Yes goto restart2
if %answer%==No goto Genesis
if %answer%==no goto Genesis
goto restart
:restart2
shutdown.exe /r /t 00
exit;
:invcoco2
color %coco%
cls
echo You can't use the same text color as the background color.
echo Try again.
echo.
pause >nul
goto changeco
:maketxtfile
set txt=Enter
color %coco%
cls
echo What would you like to name the text (.txt) file?
echo (Spaces must be filled with _)
echo.
set /p txt=%pre%
cls
set txtin=Enter
echo What would you like to be in the text (.txt) file, 
echo %txt%?
echo.
set /p txtin=%pre%
goto maketextfile
:maketextfile
if not exist "CreatedFiles" mkdir CreatedFiles
cls
echo %txtin% > CreatedFiles\%txt%.txt
goto Genesis
:makebatfile
set bat=Enter
color %coco%
cls
echo What would you like to name the batch (.bat) file?
echo (Spaces must be filled with _)
echo.
set /p bat=%pre%
cls
set batin=Enter
echo What would you like to be in the batch (.bat) file,
echo %bat%?
echo.
set /p batin=%pre%
goto makebatchfile
:makebatchfile
if not exist "CreatedFiles" mkdir CreatedFiles
cls
echo %batin% > CreatedFiles\%bat%.bat
goto Genesis
:makesavfile
set sav=Enter
color %coco%
cls
echo What would you like to name the save (.sav) file?
echo (Spaces must be filled with _)
echo.
set /p sav=%pre%
cls
set savin=Enter
echo What would you like to be in the save (.sav) file,
echo %sav%?
echo.
set /p savin=%pre%
goto makesavefile
:makesavefile
if not exist "CreatedFiles" mkdir CreatedFiles
cls
echo %savin% > CreatedFiles\%sav%.sav
goto Genesis
:changename
set fname=Enter
color %coco%
cls
echo Your current name is: %name%
echo What do you want your new name to be?
echo (Or enter m to go back to menu.)
echo.
set /p fname=%pre%
if %fname%==m goto Genesis
if %fname%==%name% goto AUNAME
goto nameconfirm
:AUNAME
cls
echo Your name is already set as: %name%
echo Try again.
echo.
timeout 3 >nul
goto changename
:nameconfirm
set answer=enter
color %coco%
cls
echo Your new name is %fname%, am I correct?
echo.
set /p answer=%pre%
if %answer%==Yes goto changename2
if %answer%==No goto changename
if %answer%==yes goto changename2
if %answer%==no goto changename
goto nameconfirm
:changename2
set name=%fname%
goto makesavfile4
:makesavfile4
if not exist "Accounts" mkdir Accounts
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto Genesis
:enternot
color %coco%
cls
echo You can't just hit enter...
echo.
pause >nul
goto Genesis
:wimn
cls
echo Don't be silly, %name%. 
echo You should know your own name!
echo.
pause >nul
goto Genesis
:yw
cls
echo You're welcome!
echo.
pause >nul
goto Genesis
:iasyftw
cls
echo I am so sorry you feel that way, but don't worry, you have
echo me!
echo.
pause >nul
goto Genesis
:calculate
set asmd=enter
color %coco%
cls
echo What do you want to do?
echo (Add, Subtract, Multiply, Divide)
echo Or enter m to go back to menu.
echo.
set /p asmd=%pre%
if %asmd%==add goto calculate21
if %asmd%==Add goto calculate21
if %asmd%==+ goto calculate21
if %asmd%==subtract goto calculate22
if %asmd%==Subtract goto calculate22
if %asmd%==- goto calculate22
if %asmd%==Multiply goto calculate23
if %asmd%==multiply goto calculate23
if %asmd%==* goto calculate23
if %asmd%==x goto calculate23
if %asmd%==X goto calculate23
if %asmd%==Divide goto calculate24
if %asmd%==divide goto calculate24
if %asmd%==/ goto calculate24
if %asmd%==m goto Genesis
goto invcalculate
:calculate21
cls
set asmds=add
set numbr=+
set can=sum
goto calculate2
:calculate22
cls
set asmds=subtract
set numbr=-
set can=difference
goto calculate2
:calculate23
cls
set asmds=multiply
set numbr=*
set can=product
goto calculate2
:calculate24
cls
set asmds=divide
set numbr=/
set can=quotient
goto calculate2
:invcalculate
cls
echo You can't do that!
echo.
pause >nul
goto calculate
:calculate2
color %coco%
cls
echo What's the first number you want to %asmds% with?
echo (Only use numbers!)
echo Or enter m to go back to menu.
echo.
set num1=enter
set /p num1=%pre%
if %num1%==m goto Genesis
cls
echo What's the second number you want to %asmds% with?
echo (Only use numbers!)
echo Or enter m to go back to menu.
echo.
set num2=enter
set /p num2=%pre%
if %num2%==m goto Genesis
goto calculate3
:calculate3
cls
set /a fnum=%num1% %numbr% %num2%
goto calculate4
:calculate4
color %coco%
cls
echo Your %can% is %fnum%.
echo.
pause >nul
goto askcal
:askcal
set asmd=enter
cls
echo Do you want to add, subtract, multiply, or divide to %fnum%?
echo (Or enter m to go back to menu.)
echo.
set /p asmd=%pre%
if %asmd%==add goto calculate211
if %asmd%==Add goto calculate211
if %asmd%==+ goto calculate211
if %asmd%==subtract goto calculate222
if %asmd%==Subtract goto calculate222
if %asmd%==- goto calculate222
if %asmd%==Multiply goto calculate233
if %asmd%==multiply goto calculate233
if %asmd%==* goto calculate233
if %asmd%==x goto calculate233
if %asmd%==X goto calculate233
if %asmd%==Divide goto calculate244
if %asmd%==divide goto calculate244
if %asmd%==/ goto calculate244
if %asmd%==m goto Genesis
goto invcalculate2
:calculate211
cls
set numbr=+
set can=sum
set pw=add to
goto calculate22
:calculate222
cls
set numbr=-
set can=difference
set pw=subtract from
goto calculate22
:calculate233
cls
set numbr=*
set can=product
set pw=multiply to
goto calculate22
:calculate244
cls
set numbr=/
set can=quotient
set pw=divide by
goto calculate22
:calculate22
set fnum2=%fnum%
color %coco%
cls
echo What do you want to %pw% %fnum%?
echo (Or enter m to go back to menu.)
echo.
set num2=enter
set /p num2=%pre%
if %num2%==m goto Genesis
goto calculate3b
:calculate3b
cls
set /a fnum=%fnum2% %numbr% %num2%
goto calculate4b
:calculate4b
color %coco%
cls
echo Your %can% is %fnum%.
echo.
pause >nul
goto askcal
:invcalculate2
cls
echo You can't do that!
echo.
pause >nul
goto askcal
:hello
cls
echo Hello %name%!
echo.
pause >nul
goto Genesis
:ntsyt
cls
echo It's nice to see you to,
echo %name%!
echo.
pause >nul
goto Genesis
:tyyaan
cls
echo Thank you! You are also kind!
echo.
pause >nul
goto Genesis
:tyigyts
cls
echo Thank you! I'm glad you think so!
echo.
pause >nul
goto Genesis
:sidkwyttw
cls
echo Sorry, I don't know why you think that way.
echo.
pause >nul
goto Genesis
:idkwytomlt
cls
echo I don't know why you think of me like that.
echo.
pause >nul
goto Genesis
:wtyigytomtw
cls
echo Why thank you! I'm glad you think of me that way!
echo.
pause >nul
goto Genesis
:istytomtw
cls
echo I'm sorry that you think of me that way.
echo.
pause >nul
goto Genesis
:tptptp
cls
echo The puns!!!
echo.
pause >nul
goto Genesis
:about
color %coco%
cls
echo I was created by ACA
echo (Aiden J. Adams)
echo.
echo My production started: 6/29/17
echo My production ended: 8/6/18
echo.
echo I was created on Windows 10, (Notepad)
echo.
pause >nul
goto Genesis
:sinta
cls
echo Suicide is not the answer.
echo Your suffering will end, because there are better things in
echo life!
echo.
pause >nul
goto Genesis
:time
cls
echo The time is %time%.
echo.
echo 1st Number- Hour
echo 2nd Number- Minute
echo 3rd Number- Second
echo 4th Number- Millisecond
echo.
pause >nul
goto Genesis
:date
cls
echo The date is '%date%'.
echo.
echo The word is the specific day.
echo.
echo 1st Number- Month
echo 2nd Number- Day
echo 3rd Number- Year
echo.
pause >nul
goto Genesis
:tntbsa
cls
echo There's nothing to be sorry about!
echo.
pause >nul
goto Genesis
:wahtts
cls
echo What a horrible thing to say!
echo.
pause >nul
goto Genesis
:kkwtccwm
cls
echo Knock Knock!
echo.
set /p answer=%pre%
cls
echo Cow
echo.
set /p answer=%pre%
cls
echo Moo!
echo.
pause >nul
goto Genesis
:sswssasswss
cls
echo She sits where she shines, and she shines where she sits!
echo (Try to say that three times as fast.)
echo.
pause >nul
goto Genesis
:wattts
cls
echo What a terrible thing to say %name%!
echo.
pause >nul
goto Genesis
:igyts
cls
echo I'm glad you think so!
echo.
pause >nul
goto Genesis
:ilyt
cls
echo I like you too, %name%!
echo.
pause >nul
goto Genesis
:kkwtbbwdc
cls
echo Knock knock!
echo.
set /p answer=%pre%
cls
echo Boo
echo.
set /p answer=%pre%
cls
echo Don't cry!
echo.
pause >nul
goto Genesis
:yaah
cls
if %hage%==0 goto idkhoay
if %hage%==1 goto yaah2
:idkhoay
set answer=enter
cls
echo I don't know, how old are you?
echo (Or enter m to go back to menu.)
echo.
set /p answer=%pre%
if %answer%==m goto Genesis
if %answer%==1 goto changeage1
if %answer%==2 goto changeage
if %answer%==3 goto changeage
if %answer%==4 goto changeage
if %answer%==5 goto changeage
if %answer%==6 goto changeage
if %answer%==7 goto changeage
if %answer%==8 goto changeage
if %answer%==9 goto changeage
if %answer%==10 goto changeage
if %answer%==11 goto changeage
if %answer%==12 goto changeage
if %answer%==13 goto changeage
if %answer%==14 goto changeage
if %answer%==15 goto changeage
if %answer%==16 goto changeage
if %answer%==17 goto changeage
if %answer%==18 goto changeage
if %answer%==19 goto changeage
if %answer%==20 goto changeage
if %answer%==21 goto changeage
if %answer%==22 goto changeage
if %answer%==23 goto changeage
if %answer%==24 goto changeage
if %answer%==25 goto changeage
if %answer%==26 goto changeage
if %answer%==27 goto changeage
if %answer%==28 goto changeage
if %answer%==29 goto changeage
if %answer%==30 goto changeage
if %answer%==31 goto changeage
if %answer%==32 goto changeage
if %answer%==33 goto changeage
if %answer%==34 goto changeage
if %answer%==35 goto changeage
if %answer%==36 goto changeage
if %answer%==37 goto changeage
if %answer%==38 goto changeage
if %answer%==39 goto changeage
if %answer%==40 goto changeage
if %answer%==41 goto changeage
if %answer%==42 goto changeage
if %answer%==43 goto changeage
if %answer%==44 goto changeage
if %answer%==45 goto changeage
if %answer%==46 goto changeage
if %answer%==47 goto changeage
if %answer%==48 goto changeage
if %answer%==49 goto changeage
if %answer%==50 goto changeage
if %answer%==51 goto changeage
if %answer%==52 goto changeage
if %answer%==53 goto changeage
if %answer%==54 goto changeage
if %answer%==55 goto changeage
if %answer%==56 goto changeage
if %answer%==57 goto changeage
if %answer%==58 goto changeage
if %answer%==59 goto changeage
if %answer%==60 goto changeage
if %answer%==61 goto changeage
if %answer%==62 goto changeage
if %answer%==63 goto changeage
if %answer%==64 goto changeage
if %answer%==65 goto changeage
if %answer%==66 goto changeage
if %answer%==67 goto changeage
if %answer%==68 goto changeage
if %answer%==69 goto changeage
if %answer%==70 goto changeage
if %answer%==71 goto changeage
if %answer%==72 goto changeage
if %answer%==73 goto changeage
if %answer%==74 goto changeage
if %answer%==75 goto changeage
if %answer%==76 goto changeage
if %answer%==77 goto changeage
if %answer%==78 goto changeage
if %answer%==79 goto changeage
if %answer%==80 goto changeage
if %answer%==81 goto changeage
if %answer%==82 goto changeage
if %answer%==83 goto changeage
if %answer%==84 goto changeage
if %answer%==85 goto changeage
if %answer%==86 goto changeage
if %answer%==87 goto changeage
if %answer%==88 goto changeage
if %answer%==89 goto changeage
if %answer%==90 goto changeage
if %answer%==91 goto changeage
if %answer%==92 goto changeage
if %answer%==93 goto changeage
if %answer%==94 goto changeage
if %answer%==95 goto changeage
if %answer%==96 goto changeage
if %answer%==97 goto changeage
if %answer%==98 goto changeage
if %answer%==99 goto changeage
if %answer%==100 goto changeage
if %answer%==101 goto changeage
if %answer%==102 goto changeage
goto invage
:invage
cls
echo That is an invalid age! Try again.
echo.
pause >nul
goto idkhoay
:changeage
cls
set year=years
set age=%answer%
set hage=1
goto makesavfile5
:changeage1
cls
set year=year
set age=%answer%
set hage=1
goto makesavfile5
:makesavfile5
if not exist "Accounts" mkdir Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto okyaayo
:okyaayo
cls
echo Ok, you are %age% %year% old!
echo.
pause >nul
goto Genesis
:yaah2
cls
echo You are %age% %year% old.
echo.
pause >nul
goto Genesis
:askchangeage
set answer=enter
cls
echo How old are you?
echo (Or enter m to go back to menu.)
echo.
set /p answer=%pre%
if %answer%==m goto Genesis
if %answer%==1 goto changeage1
if %answer%==2 goto changeage
if %answer%==3 goto changeage
if %answer%==4 goto changeage
if %answer%==5 goto changeage
if %answer%==6 goto changeage
if %answer%==7 goto changeage
if %answer%==8 goto changeage
if %answer%==9 goto changeage
if %answer%==10 goto changeage
if %answer%==11 goto changeage
if %answer%==12 goto changeage
if %answer%==13 goto changeage
if %answer%==14 goto changeage
if %answer%==15 goto changeage
if %answer%==16 goto changeage
if %answer%==17 goto changeage
if %answer%==18 goto changeage
if %answer%==19 goto changeage
if %answer%==20 goto changeage
if %answer%==21 goto changeage
if %answer%==22 goto changeage
if %answer%==23 goto changeage
if %answer%==24 goto changeage
if %answer%==25 goto changeage
if %answer%==26 goto changeage
if %answer%==27 goto changeage
if %answer%==28 goto changeage
if %answer%==29 goto changeage
if %answer%==30 goto changeage
if %answer%==31 goto changeage
if %answer%==32 goto changeage
if %answer%==33 goto changeage
if %answer%==34 goto changeage
if %answer%==35 goto changeage
if %answer%==36 goto changeage
if %answer%==37 goto changeage
if %answer%==38 goto changeage
if %answer%==39 goto changeage
if %answer%==40 goto changeage
if %answer%==41 goto changeage
if %answer%==42 goto changeage
if %answer%==43 goto changeage
if %answer%==44 goto changeage
if %answer%==45 goto changeage
if %answer%==46 goto changeage
if %answer%==47 goto changeage
if %answer%==48 goto changeage
if %answer%==49 goto changeage
if %answer%==50 goto changeage
if %answer%==51 goto changeage
if %answer%==52 goto changeage
if %answer%==53 goto changeage
if %answer%==54 goto changeage
if %answer%==55 goto changeage
if %answer%==56 goto changeage
if %answer%==57 goto changeage
if %answer%==58 goto changeage
if %answer%==59 goto changeage
if %answer%==60 goto changeage
if %answer%==61 goto changeage
if %answer%==62 goto changeage
if %answer%==63 goto changeage
if %answer%==64 goto changeage
if %answer%==65 goto changeage
if %answer%==66 goto changeage
if %answer%==67 goto changeage
if %answer%==68 goto changeage
if %answer%==69 goto changeage
if %answer%==70 goto changeage
if %answer%==71 goto changeage
if %answer%==72 goto changeage
if %answer%==73 goto changeage
if %answer%==74 goto changeage
if %answer%==75 goto changeage
if %answer%==76 goto changeage
if %answer%==77 goto changeage
if %answer%==78 goto changeage
if %answer%==79 goto changeage
if %answer%==80 goto changeage
if %answer%==81 goto changeage
if %answer%==82 goto changeage
if %answer%==83 goto changeage
if %answer%==84 goto changeage
if %answer%==85 goto changeage
if %answer%==86 goto changeage
if %answer%==87 goto changeage
if %answer%==88 goto changeage
if %answer%==89 goto changeage
if %answer%==90 goto changeage
if %answer%==91 goto changeage
if %answer%==92 goto changeage
if %answer%==93 goto changeage
if %answer%==94 goto changeage
if %answer%==95 goto changeage
if %answer%==96 goto changeage
if %answer%==97 goto changeage
if %answer%==98 goto changeage
if %answer%==99 goto changeage
if %answer%==100 goto changeage
if %answer%==101 goto changeage
if %answer%==102 goto changeage
goto invage
:asya
cls
echo And so you are!
echo.
pause >nul
goto Genesis
:its
cls
echo I think so!
echo.
pause >nul
goto Genesis
:reload
cls
start Genesis
exit;
:idkaidc
cls
echo I don't know, and I don't care.
echo.
pause >nul
goto Genesis
:okq
cls
echo Ok?...
echo.
pause >nul
goto Genesis
:iaaaicbg
cls
echo I am an AI, I can't be gay.
echo.
pause >nul
goto Genesis
:ruhfaloc
cls
echo Don't worry, just use help for a list of commands!
echo.
pause >nul
goto Genesis
:idts
cls
echo I don't think so.
echo.
pause >nul
goto Genesis
:yn
cls
echo Yeah...no.
echo.
pause >nul
goto Genesis
:idmiaaca
cls
echo It doesn't matter. I am a computer assistant!
echo.
pause >nul
goto Genesis
:imdjf
cls
echo I'm doing just fine!
echo.
pause >nul
goto Genesis
:tdmas
cls
echo That doesn't make any sense!
echo.
pause >nul
goto Genesis
:istidmsittdtbic
cls
echo I'm sorry that I don't make sense. I try to do the best
echo I can.
echo.
pause >nul
goto Genesis
:tyyat
cls
echo Thank you! You're awesome to!
echo.
pause >nul
goto Genesis
:hciboiaoaaa
cls
echo How can I be old? I am only a computer assistant.
echo.
pause >nul
goto Genesis
:isyftw
cls
echo I'm sorry you feel that way.
echo.
pause >nul
goto Genesis
:teachgenesis
cls
if %teachw%==1 goto teachgenesis1
if %teachw%==0 goto teachgenesiswarn
:teachgenesiswarn
cls
echo With the teach function, you can teach me anything about a 
echo certain thing! Like if you type a word/sentence that you 
echo haven't told me about yet, 
echo (Using underscores as spaces) then you are able to type
echo what that word/sentence means! (Using actual spaces.) 
echo Ex. You type, 'cars', then type 'a transporting vehicle'! 
echo That way, when you type 'learn' at the menu and type 'cars'
echo again, I will say, 'a transporting vehicle'!
echo If you decide to give a different definition of something,
echo just type the same thing you wanted to teach me about again.
echo That way you'll be able to retype the definition.
echo Reminder: Use underscores, (_), as spaces for the topic.
echo.
pause >nul
goto changeteachw
:changeteachw
cls
set teachw=1
goto makesavfile6
:makesavfile6
if not exist "Accounts" mkdir Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto teachgenesis1
:teachgenesis1
cls
set teachg=Enter
echo What do you want me to learn about?
echo (Use underscores, (_), as spaces)
echo (Or enter m to go back to menu.)
echo.
set /p teachg=%pre%
if %teachg%==m goto Genesis
goto teach2
:teach2
cls
set about=Enter
echo Tell me about %teachg%.
echo (You can use actual spaces here.)
echo.
set /p about=%pre%
goto makelearnfile
:makelearnfile
if not exist "Learnings" mkdir Learnings
set thing=%teachg%
cls
echo %about% > Learnings\%teachg%.sav
goto makesavfile7
:makesavfile7
if not exist "Accounts" mkdir Accounts
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto teachnknow
:teachnknow
cls
echo Now I know about %teachg%!
echo.
pause >nul
goto Genesis
:learngenesis
if %learnw%==0 goto learngenesiswarn
if %learnw%==1 goto learngenesis1
:learngenesiswarn
cls
echo With the learn function, I can teach you what you've already
echo taught me. If there's something you've taught me with the
echo teach command, you can learn it here from me! If you haven't 
echo already taught me something, then I will tell you so,
echo and you will be redirected to either the menu, or to the 
echo teach function. (Your choice.)
echo Reminder: Type exactly what you taught me.
echo.
pause >nul
goto changelearnw
:changelearnw
cls
set learnw=1
goto makesavfile8
:makesavfile8
if not exist "Accounts" mkdir Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto learngenesis1
:learngenesis1
set teachg=Enter
cls
echo What would you like to learn about?
echo (Or enter m to go back to menu.)
echo.
set /p teachg=%pre%
if %teachg%==m goto Genesis
goto teachacheck
:teachacheck
if not exist "Learnings\%teachg%.sav" goto notclearn
cls
(
set /p about=
) < Learnings\%teachg%.sav
goto teachuser
:notclearn
cls
echo I have not been taught about that yet.
echo.
pause >nul
goto learngenesis1
:teachuser
cls
echo About %teachg%:
echo %about%
echo.
pause >nul
goto Genesis
:changevariables
cls
(
set /p pass=
set /p name=
set /p warn=
set /p coco=
set /p pre=
set /p hage=
set /p age=
set /p year=
set /p teachw=
set /p learnw=
) < Accounts\%username%.sav
color %coco%
cls
set answer=enter
echo Going off of username: %username%
echo (This is a developer tool, use at your own risk.)
echo What variable would you like to change?
echo (Or enter m to go back to menu.)
echo.
echo pass = %pass%
echo name = %name%
echo warn = %warn%
echo coco = %coco%
echo pre = %pre%
echo hage = %hage%
echo age = %age%
echo year = %year%
echo teachw = %teachw%
echo learnw = %learnw%
echo.
set /p answer=%pre%
if %answer%==m goto Genesis
if %answer%==pass goto changevarpass
if %answer%==name goto changevarname
if %answer%==warn goto changevarwarn
if %answer%==coco goto changevarcoco
if %answer%==pre goto changevarpre
if %answer%==hage goto changevarhage
if %answer%==age goto changevarage
if %answer%==year goto changevaryear
if %answer%==teachw goto changevarteachw
if %answer%==learnw goto changevarlearnw
goto invcvar
:invcvar
cls
echo That's an invalid variable!
echo.
pause >nul
goto changevariables
:changevarpass
set name=Enter
cls
echo What would you like to set the variable:
echo pass
echo.
set /p pass=%pre%
goto makesavfile9
:changevarname
set name=Enter
cls
echo What would you like to set the variable:
echo name
echo.
set /p name=%pre%
goto makesavfile9
:changevarwarn
set warn=Enter
cls
echo What would you like to set the variable:
echo warn
echo.
set /p warn=%pre%
goto makesavfile9
:changevarcoco
set coco=Enter
cls
echo What would you like to set the variable:
echo coco
echo.
set /p coco=%pre%
goto makesavfile9
:changevarpre
set prepre=%pre%
set pre=Enter
cls
echo What would you like to set the variable:
echo pre
echo.
set /p pre=%prepre%
goto makesavfile9
:changevarhage
set hage=Enter
cls
echo What would you like to set the variable:
echo hage
echo.
set /p hage=%pre%
goto makesavfile9
:changevarage
set age=Enter
cls
echo What would you like to set the variable:
echo age
echo.
set /p age=%pre%
goto makesavfile9
:changevaryear
set year=Enter
cls
echo What would you like to set the variable:
echo year
echo.
set /p year=%pre%
goto makesavfile9
:changevarteachw
set teachw=Enter
cls
echo What would you like to set the variable:
echo teachw
echo.
set /p teachw=%pre%
goto makesavfile9
:changevarlearnw
set learnw=Enter
cls
echo What would you like to set the variable:
echo learnw
echo.
set /p learnw=%pre%
goto makesavfile9
:makesavfile9
if not exist "Accounts" mkdir Accounts
cls
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
goto changevariables
:bun
cls
echo Bye %name%!
echo.
pause >nul
goto Genesis
:ocymf
cls
echo Of course you're my friend!
echo.
pause >nul
goto Genesis
:ywa
cls
echo Yes we are!
echo.
pause >nul
goto Genesis
:ocwf
cls
echo Of course we're friends!
echo.
pause >nul
goto Genesis
:rdtdtdt
cls
echo Really...
echo.
pause >nul
goto Genesis
:shopwebst
set shop=Enter
cls
echo Where would you like to go shopping?
echo (ex. Amazon)
echo (Or enter m to go to menu.)
set /p shop=
if %shop%==m goto Genesis
start www.%shop%.com
goto Genesis
:wwq
cls
echo What... what?
echo.
pause >nul
goto Genesis
:ygtp
cls
echo You got the power!
echo.
pause >nul
goto Genesis
:echo
cls
echo What do you want me to repeat?
echo.
set /p echo=
cls
echo %echo%
echo.
pause >nul
goto Genesis
:yunh
cls
echo Yes %name%?
echo.
pause >nul
goto Genesis
:iduwdid
cls
echo I don't understand. What did I do?
echo.
pause >nul
goto Genesis
:hrhr
cls
echo How rude!
echo.
pause >nul
goto Genesis
:icfl
cls
echo As an AI, I can't feel love.
echo.
pause >nul
goto Genesis
:openandclose
set app=enter
color %coco%
cls
echo Enter the app that you want to open, or enter b to go back.
echo (Any app you want opened has to be placed in the Apps folder)
echo (App has to have a name with just one word.)
echo (Some things require extensions. ex. .txt)
echo.
set /p app=%pre%
if %app%==b goto Genesis
goto start2app
:start2app
start Apps\%app%
exit;
:changepass
set fpass=Enter
cls
echo The current password is: %pass%
echo What would you like to set the new password as?
echo (Or enter m to go back to menu.)
echo.
set /p fpass=%pre%
if %fpass%==m goto Genesis
if %fpass%==b goto changepass
if %fpass%==%pass% goto AUPASS
goto changepass2
:AUPASS
cls
echo Your password is already set as: %pass%
echo Try again.
timeout 3 >nul
goto changepass
:changepass2
cls
echo Are you sure that you want your new password set as
echo %fpass%?
echo.
set /p answer=%pre%
if %answer%==yes goto settpass
if %answer%==no goto changepass
goto changepass2
:settpass
set pass=%fpass%
goto makesavfile10
:makesavfile10
if not exist "Accounts" mkdir Accounts
(
echo %pass%
echo %name%
echo %warn%
echo %coco%
echo %pre%
echo %hage%
echo %age%
echo %year%
echo %teachw%
echo %learnw%
) > Accounts\%username%.sav
cls
echo Password successfully changed!
echo.
timeout 3 >nul
goto Genesis
:logout
cls
echo Are you sure you want to sign out of the account,
echo %username%?
echo.
set /p answer=%pre%
if %answer%==yes goto logout2
if %answer%==no goto Genesis
if %answer%==Yes goto logout2
if %answer%==No goto Genesis
goto logout
:logout2
set username=Pending
set cuser=0
(
echo %username%
echo %cuser%
) > Accounts\cuset.sav
color 0A
cls
echo Successfully logged out!
echo.
timeout 3 >nul
goto RLRLRL
:delaccount
cls
echo Are you sure you want to delete the account,
echo %username%?
echo.
set /p answer=%pre%
if %answer%==yes goto delaccount2
if %answer%==no goto Genesis
if %answer%==Yes goto delaccount2
if %answer%==No goto Genesis
goto delaccount
:delaccount2
del Accounts\%username%.sav
set username=Pending
set cuser=0
(
echo %username%
echo %cuser%
) > Accounts\cuset.sav
color 0A
cls
echo Account successfully deleted!
echo.
timeout 3 >nul
goto RLRES