*** Settings ***
Library    Selenium2Library    
*** Variables ***
${url}    http://i2m.jusdascm.com/ideas_test/#/
${browser}    chrome
${wait}    15 seconds
${timeout}    2 minutes

${input_name}    xpath=//*[@placeholder='请输入用户名']
${input_password}    xpath=//*[@placeholder='请输入密码']    
${click_login}    xpath=//span[text()='登录']


*** Keywords ***
TestSetup
    [Documentation]    启动用例时预设
    Set Selenium Implicit Wait    ${wait}    #设置等待时间
    Set Selenium Timeout    ${timeout}    #设置超时时间
    OpenBrowser_Maximization
   
TestTeardown
    [Documentation]    案例结束时关闭浏览器
    Close All Browsers
    
    
OpenBrowser_Maximization
    [Documentation]    打开浏览器
    Selenium2Library.Open Browser    ${url}    ${browser}    #打开并指定浏览器，打开浏览地址
    Maximize Browser Window
    
Login
    [Documentation]    登录系统
    [Arguments]    ${name}    ${passwd}            #定义变量
    Input Text    ${input_name}    ${name}    #输入用户名
    Input Password    ${input_password}    ${passwd}    #输入密码
    Sleep    3    
    Click Element    ${click_login}    #点击登录按钮
       