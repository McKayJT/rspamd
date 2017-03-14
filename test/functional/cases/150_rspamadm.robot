*** Settings ***
Library         Process

*** Test Cases ***
Config Test
  ${result} =  Run Process  ${RSPAMADM}  configtest
  Should Match Regexp  ${result.stderr}  ^$
  Should Match Regexp  ${result.stdout}  ^syntax OK$
  Should Be Equal As Integers  ${result.rc}  0

Config Help
  ${result} =  Run Process  ${RSPAMADM}  confighelp
  Should Match Regexp  ${result.stderr}  ^$
  Should Be Equal As Integers  ${result.rc}  0
