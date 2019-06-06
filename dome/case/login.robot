*** Settings ***
Resource    ../method/login_element.robot

*** Test Cases ***
登录
    [Documentation]    登录ideas系统
    TestSetup
    Login    G1702405    Jusda#123
    TestTeardown