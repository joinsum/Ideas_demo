*** Settings ***
Resource    ../method/login_element.robot

*** Test Cases ***
登录
    [Documentation]    登录ideas系统
    TestSetup
    Login    ${name}    ${passwd}
    
    Sleep    5   
    login success assert
    TestTeardown