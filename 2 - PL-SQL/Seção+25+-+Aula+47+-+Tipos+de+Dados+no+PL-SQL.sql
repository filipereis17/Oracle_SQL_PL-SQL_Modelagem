--
-- Seção 6 - Declaração de Identificadores - Variáveis e Constantes
--
-- Aula 3 - Tipos de Dados no PL/SQL - Datatypes
--

-- Declarando Variáveis utilizando os principais Tipos de Dados

SET SERVEROUTPUT ON
DECLARE
    vNumero                         NUMBER(11,2) := 1200.50;
    vCaracterTamFixo                CHAR(100) := 'Texto de Tamanho Fixo de at� 32767 bytes';
    vCaracterTamVariavel           VARCHAR2(100) := 'Texto de Tamanho Vari�vel de at� 32767 bytes';
    vBooleano                       BOOLEAN := TRUE;
    vData                           DATE := sysdate;
    vLong                           LONG := 'Texto Tamanho Vari�vel de at� 32760 bytex';
    vRowid                          ROWID;
    vTimestamp                      TIMESTAMP := systimestamp;
    vTimestamptz                    TIMESTAMP WITH TIME ZONE := systimestamp;
    vCaractereTamFixoUniversal      NCHAR(100) := 'Texto de Tamanho Fixo Universal de at� 32767 bytes';
    vCaractereTamVariavelUniversal  NVARCHAR2(100) := 'Texto Tamanho Vari�vel Universal de at� 32767 bytes';
    vNumeroInteiro                  BINARY_INTEGER := 1200;
    vNumeroFloat                    BINARY_FLOAT := 15000000;
    vNumeroDouble                   BINARY_DOUBLE := 15000000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' || vNumero);
    DBMS_OUTPUT.PUT_LINE('String Caractere Tam Fixo = ' || vCaracterTamFixo);
    DBMS_OUTPUT.PUT_LINE('String Caractere Tam Vari�vel = ' || vCaracterTamVariavel);
    IF vBooleano = TRUE
    THEN
        DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Booleano = ' || 'FALSE OR NULL');
    END IF;
    DBMS_OUTPUT.PUT_LINE('Data = ' || vData);
    DBMS_OUTPUT.PUT_LINE('Long = ' || vLong);
    SELECT rowid
    INTO vRowid
    FROM employees
    WHERE first_name = 'Steven' AND last_name = 'King';
    DBMS_OUTPUT.PUT_LINE('Rowid = ' || vRowid);
    DBMS_OUTPUT.PUT_LINE('Timestamp = ' || vTimestamp);
    DBMS_OUTPUT.PUT_LINE('Timestamp with time zone = ' || vTimestamptz);
    DBMS_OUTPUT.PUT_LINE('Caractere Tam Fixo Universal = ' || vCaractereTamFixoUniversal);
    DBMS_OUTPUT.PUT_LINE('Caractere Tam Variavel Universal = ' || vCaractereTamVariavelUniversal);
    DBMS_OUTPUT.PUT_LINE('N�mero Inteiro = ' || vNumeroInteiro);
    DBMS_OUTPUT.PUT_LINE('N�mero Float = ' || vNumeroFloat);
    DBMS_OUTPUT.PUT_LINE('N�mero Double = ' || vNumeroDouble);
END;