*** Settings ***
Documentation    Automate API responses Sample


Library    Collections
Library    String
Library    JSONLibrary
Library    RequestsLibrary
Library    OperatingSystem


*** Variables ***
${API_Base_Endpoint}      https://web-loan-application-test
${page_path}              $.page
${id_path}                $.id



*** Test Cases ***



Get Calculate end point
    Create Session  session1   ${API_Base_Endpoint}     disable_warnings=1
    ${endpoint}      Set Variable   /api/v1/loan/calculate
    ${body}=   Create Dictionary   administrationFee=40   amount=113350   conclusionFee=695   currency=SEK   interestRate=10.95   maturity=89   monthlyPaymentDay=27   productType=LOANSE02
    ${response}=     POST On Session    session1   ${endpoint}        data=${body}
    Log To Console   ${response.status_code}
    Log To Console   ${response.content}

    ${status_code}=     Convert To String       ${response.status_code}
    should be equal       ${status_code}   200

     ${json_response}=  Convert To String             ${response.content}
     ${contents}=       Get Value From Json    ${json_response}   ${id_path}
     Should Not Be Empty      ${contents}













