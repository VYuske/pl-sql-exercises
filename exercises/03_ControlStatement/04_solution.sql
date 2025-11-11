declare
   data               date := to_date ( '2023-01-01','YYYY-MM-DD' );
   dia_semana         varchar2(20);
   eh_final_de_semana boolean;

   procedure verifica_final_de_semana (
      data               in date,
      dia_semana         out varchar2,
      eh_final_de_semana out boolean
   ) is
   begin
      dia_semana := to_char(
         data,
         'DAY',
         'NLS_DATE_LANGUAGE=PORTUGUESE'
      );
      eh_final_de_semana :=
         case
            when ( trim(dia_semana) in ( 'SÁBADO',
                                         'DOMINGO' ) ) then
               true
            else
               false
         end;
   end verifica_final_de_semana;

begin
   verifica_final_de_semana(
      data,
      dia_semana,
      eh_final_de_semana
   );
   dbms_output.put_line('Dia: ' || trim(dia_semana));
   dbms_output.put_line('É final de semana? ' ||
      case
         when eh_final_de_semana then
            'Sim'
         else
            'Não'
      end
   );
end;
/