       IDENTIFICATION DIVISION.
       PROGRAM-ID. RiskScoringEngine.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       COPY TransactionRecord.

       01 WS-RISK-SCORE        PIC 9(3).
       01 WS-TXN-AMOUNT        PIC 9(9)V99.

       PROCEDURE DIVISION.

       CALCULATE-RISK.
           MOVE TRANSACTION-AMOUNT TO WS-TXN-AMOUNT

           IF WS-TXN-AMOUNT > 100000
               MOVE 700 TO WS-RISK-SCORE
           ELSE
               MOVE 200 TO WS-RISK-SCORE
           END-IF

           MOVE WS-RISK-SCORE TO TRANSACTION-RISK-SCORE
           GOBACK.
