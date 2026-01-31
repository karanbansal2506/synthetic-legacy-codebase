       IDENTIFICATION DIVISION.
       PROGRAM-ID. BatchRunner.

       PROCEDURE DIVISION.

       RUN-BATCH.
           CALL 'SettlementProcessor'
           CALL 'RiskScoringEngine'
           CALL 'ComplianceFlags'
           GOBACK.
