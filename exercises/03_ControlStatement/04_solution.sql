DECLARE
   data               DATE := TO_DATE('2023-01-01','YYYY-MM-DD');
   dia_semana         VARCHAR2(20);
   eh_final_de_semana BOOLEAN;

   PROCEDURE verifica_final_de_semana(
      data               IN DATE,
      dia_semana         OUT VARCHAR2,
      eh_final_de_semana OUT BOOLEAN
   ) IS
   BEGIN
      dia_semana := TO_CHAR(
         data,
         'DAY',
         'NLS_DATE_LANGUAGE=PORTUGUESE'
      );

      eh_final_de_semana := CASE
                               WHEN TRIM(dia_semana) IN ('SÁBADO', 'DOMINGO')
                               THEN TRUE
                               ELSE FALSE
                            END;
   END verifica_final_de_semana;

BEGIN
   verifica_final_de_semana(data, dia_semana, eh_final_de_semana);

   DBMS_OUTPUT.PUT_LINE('Dia: ' || TRIM(dia_semana));
   DBMS_OUTPUT.PUT_LINE('É final de semana? ' ||
      CASE WHEN eh_final_de_semana THEN 'Sim' ELSE 'Não' END);
END;
/
