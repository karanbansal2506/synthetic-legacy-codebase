       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainBatchDriver.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY TransactionRecord.
       COPY AccountRecord.

       PROCEDURE DIVISION.

       MAIN.
           MOVE "XFR01" TO TRANSACTION-ID
           MOVE "CREDIT" TO TRANSACTION-TYPE
           MOVE 50000 TO TRANSACTION-AMOUNT

           MOVE 100000 TO ACCOUNT-BALANCE

           CALL 'SettlementProcessor'
           CALL 'RiskScoringEngine'
           CALL 'ComplianceFlags'

           DISPLAY "BALANCE:" ACCOUNT-BALANCE
           DISPLAY "RISK:" TRANSACTION-RISK-SCORE
           DISPLAY "COMPLIANT:" TRANSACTION-COMPLIANT

           STOP RUN.
