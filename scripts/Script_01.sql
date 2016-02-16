-- Database: alpha

-- DROP DATABASE alpha;

CREATE DATABASE alpha
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;



-- Schema comum

CREATE SCHEMA comum
  AUTHORIZATION postgres;


comment on schema COMUM is 
'Schema para o módulo comum do sistema.';

create sequence COMUM.SEQ_BENEFICIARIO_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_BENEFICIARIO_FUNCIONARIO is 'Sequencia para o registro dos beneficiários dos funcionários.';

create sequence COMUM.SEQ_CARGO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_CARGO is 'Sequencia para a tabela cargo.';

create sequence COMUM.SEQ_EMAIL_ESTABELECIMENTO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_EMAIL_ESTABELECIMENTO is 'Sequencia para os emails dos estabelecimentos.';

create sequence COMUM.SEQ_EMAIL_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_EMAIL_FUNCIONARIO is 'Sequencia para registro dos emails dos funcionários.';

create sequence COMUM.SEQ_ENDERECO_ESTABELECIMENTO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_ENDERECO_ESTABELECIMENTO is 'Sequencia para os endereços dos estabelecimentos.';

create sequence COMUM.SEQ_ENDERECO_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_ENDERECO_FUNCIONARIO is 'Código sequencial dos endereços dos funcionários.';

create sequence COMUM.SEQ_ESTABELECIMENTO_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_ESTABELECIMENTO_FUNCIONARIO is 'Sequencia para a relação estabelecimento funcionário.';

create sequence COMUM.SEQ_ESTADO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_ESTADO is 'Código sequencial para utilização da tabela estado.';

create sequence COMUM.SEQ_ESTADO_CIVIL
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_ESTADO_CIVIL is 'Sequencia para a tabela estado civil.';

create sequence COMUM.SEQ_GRAU_ESCOLARIDADE
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_GRAU_ESCOLARIDADE is 'Sequencia para a tabela grau_escolaridade.';

create sequence COMUM.SEQ_GRAU_PARENTESCO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_GRAU_PARENTESCO is 'Sequencia para os registros do grau de parentesco';

create sequence COMUM.SEQ_HORARIO_TRABALHO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_HORARIO_TRABALHO is 'Sequencia para registros de horário de trabalho.';

create sequence COMUM.SEQ_HORARIO_TRABALHO_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_HORARIO_TRABALHO_FUNCIONARIO is 'Código sequencial dos horários de trabalho dos funcionários.';

create sequence COMUM.SEQ_REFERENCIA_BANCARIA_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_REFERENCIA_BANCARIA_FUNCIONARIO is 'Sequencia para as referencias bancárias dos funcionários.';

create sequence COMUM.SEQ_SEXO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_SEXO is 'Sequencia para a tabela sexo.';

create sequence COMUM.SEQ_TELEFONE_ESTABELECIMENTO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TELEFONE_ESTABELECIMENTO is 'Sequencia para os telefones dos estabelecimentos';

create sequence COMUM.SEQ_TELEFONE_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TELEFONE_FUNCIONARIO is 'Sequencia para registro dos telefones dos funcionários.';

create sequence COMUM.SEQ_TIPO_CONTA
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TIPO_CONTA is 'Sequencial para os tipos de conta.';

create sequence COMUM.SEQ_TIPO_EMAIL_ESTABELECIMENTO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TIPO_EMAIL_ESTABELECIMENTO is 'Sequencia para os tipos de email dos estabeleicmentos';

create sequence COMUM.SEQ_TIPO_EMAIL_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TIPO_EMAIL_FUNCIONARIO is 'Sequencia para registro dos tipos de emails dos funcionários.';

create sequence COMUM.SEQ_TIPO_ENDERECO_ESTABELECIMENTO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TIPO_ENDERECO_ESTABELECIMENTO is 'Sequencia para o tipo de endereço do estabelecimento';

create sequence COMUM.SEQ_TIPO_ENDERECO_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TIPO_ENDERECO_FUNCIONARIO is 'Sequencia para os registros do tipo de endereço do funcionário.';

create sequence COMUM.SEQ_TIPO_TELEFONE_ESTABELECIMENTO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TIPO_TELEFONE_ESTABELECIMENTO is 'Sequencia para os tipos de telefone do estabelecimento.';

create sequence COMUM.SEQ_TIPO_TELEFONE_FUNCIONARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TIPO_TELEFONE_FUNCIONARIO is 'Sequencia para a tabela de registros de tipos de telefone dos funcionários.';

create sequence COMUM.SEQ_TURNO_TRABALHO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_TURNO_TRABALHO is 'Sequencia para a tabela de turnos de trabalho.';

create sequence COMUM.SEQ_USUARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_USUARIO is 'Sequencia utilizada pela tabela de usuários.';

/*==============================================================*/
/* Table: BANCO                                                 */
/*==============================================================*/
create table COMUM.BANCO 
(
   NUMERO_BANCO         character varying(3)           not null,
   NOME_BANCO           character varying(200)         not null,
   constraint PK_BANCO primary key (NUMERO_BANCO)
);

comment on table COMUM.BANCO is 
'Armazena os nomes e códigos dos bancos.';

comment on column COMUM.BANCO.NUMERO_BANCO is 
'Armazena o número do banco.';

comment on column COMUM.BANCO.NOME_BANCO is 
'Armazena o nome do banco.';

/*==============================================================*/
/* Table: BENEFICIARIO_FUNCIONARIO                              */
/*==============================================================*/
create table COMUM.BENEFICIARIO_FUNCIONARIO 
(
   COD_BENEFICIARIO_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_BENEFICIARIO_FUNCIONARIO'),
   CPF_FUNCIONARIO      character varying(11)          not null,
   COD_GRAU_PARENTESCO  integer                        not null,
   NOME_BENEFICIARIO    character varying(200)         not null,
   CPF_BENEFICIARIO     character varying(11)          null,
   constraint PK_BENEFICIARIO_FUNCIONARIO primary key (COD_BENEFICIARIO_FUNCIONARIO)
);

comment on table COMUM.BENEFICIARIO_FUNCIONARIO is 
'Armazena os beneficiários dos funcionários.';

comment on column COMUM.BENEFICIARIO_FUNCIONARIO.COD_BENEFICIARIO_FUNCIONARIO is 
'Código sequencial dos beneficiários dos funcionários.';

comment on column COMUM.BENEFICIARIO_FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.BENEFICIARIO_FUNCIONARIO.COD_GRAU_PARENTESCO is 
'Código sequencial do grau de parentesco';

comment on column COMUM.BENEFICIARIO_FUNCIONARIO.NOME_BENEFICIARIO is 
'Armazena o nome do beneficiário do funcionário.';

comment on column COMUM.BENEFICIARIO_FUNCIONARIO.CPF_BENEFICIARIO is 
'Armazena o CPF do beneficiário do funcionário.';

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table COMUM.CARGO 
(
   COD_CARGO            integer                        not null default nextval('COMUM.SEQ_CARGO'),
   DESCRICAO_CARGO      character varying(100)         not null,
   constraint PK_CARGO primary key (COD_CARGO)
);

comment on table COMUM.CARGO is 
'Armazena os cargos dos funcionários.';

comment on column COMUM.CARGO.COD_CARGO is 
'Código sequencial do cargo.';

comment on column COMUM.CARGO.DESCRICAO_CARGO is 
'Armazena a descrição do cargo.';

/*==============================================================*/
/* Table: DIA_SEMANA                                            */
/*==============================================================*/
create table COMUM.DIA_SEMANA 
(
   COD_DIA_SEMANA       integer                        not null,
   DESCRICAO_DIA_SEMANA character varying(30)          not null,
   constraint PK_DIA_SEMANA primary key (COD_DIA_SEMANA)
);

comment on table COMUM.DIA_SEMANA is 
'Armazena os dias da semana.';

comment on column COMUM.DIA_SEMANA.DESCRICAO_DIA_SEMANA is 
'Descrição do dia da semana.';

/*==============================================================*/
/* Table: EMAIL_ESTABELECIMENTO                                 */
/*==============================================================*/
create table COMUM.EMAIL_ESTABELECIMENTO 
(
   COD_EMAIL_ESTABELECIMENTO integer                        not null default nextval('COMUM.SEQ_EMAIL_ESTABELECIMENTO'),
   CNPJ_ESTABELECIMENTO character varying(14)          not null,
   COD_TIPO_EMAIL_ESTABELECIMENTO integer                        not null,
   DESCRICAO_EMAIL_ESTABELECIMENTO character varying(100)         not null,
   constraint PK_EMAIL_ESTABELECIMENTO primary key (COD_EMAIL_ESTABELECIMENTO)
);

comment on table COMUM.EMAIL_ESTABELECIMENTO is 
'Armazena os emails dos estabelecimentos.';

comment on column COMUM.EMAIL_ESTABELECIMENTO.COD_EMAIL_ESTABELECIMENTO is 
'Código sequencial dos emails dos estabelecimentos.';

comment on column COMUM.EMAIL_ESTABELECIMENTO.CNPJ_ESTABELECIMENTO is 
'Armazena o CPNJ do estabelecimento';

comment on column COMUM.EMAIL_ESTABELECIMENTO.COD_TIPO_EMAIL_ESTABELECIMENTO is 
'Código sequencial dos tipos de emails dos estabelecimentos.';

comment on column COMUM.EMAIL_ESTABELECIMENTO.DESCRICAO_EMAIL_ESTABELECIMENTO is 
'Armazena a descrição dos emails dos estabelecimentos.';

/*==============================================================*/
/* Table: EMAIL_FUNCIONARIO                                     */
/*==============================================================*/
create table COMUM.EMAIL_FUNCIONARIO 
(
   COD_EMAIL_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_EMAIL_FUNCIONARIO'),
   COD_TIPO_EMAIL_FUNCIONARIO integer                   not null,
   CPF_FUNCIONARIO      character varying(11)          not null,
   DESCRICAO_EMAIL_FUNCIONARIO character varying(100)         not null,
   constraint PK_EMAIL_FUNCIONARIO primary key (COD_EMAIL_FUNCIONARIO)
);

comment on table COMUM.EMAIL_FUNCIONARIO is 
'Armazena os emails dos funcionários.';

comment on column COMUM.EMAIL_FUNCIONARIO.COD_EMAIL_FUNCIONARIO is 
'Código sequencial dos emails dos funcionários.';

comment on column COMUM.EMAIL_FUNCIONARIO.COD_TIPO_EMAIL_FUNCIONARIO is 
'Código sequencial dos tipos de emails dos funcionários.';

comment on column COMUM.EMAIL_FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.EMAIL_FUNCIONARIO.DESCRICAO_EMAIL_FUNCIONARIO is 
'Armazena a descrição dos emails dos funcionários.';

/*==============================================================*/
/* Table: ENDERECO_ESTABELECIMENTO                              */
/*==============================================================*/
create table COMUM.ENDERECO_ESTABELECIMENTO 
(
   COD_ENDERECO_ESTABELECIMENTO integer                        not null default nextval('COMUM.SEQ_ENDERECO_ESTABELECIMENTO'),
   CNPJ_ESTABELECIMENTO character varying(14)         not null,
   COD_TIPO_ENDERECO_ESTABELECIMENTO integer           not null,
   COD_ESTADO           integer                        not null,
   ENDERECO             character varying(200)         not null,
   BAIRRO               character varying(200)         not null,
   CIDADE               character varying(200)         not null,
   CEP                  character varying(8)           not null,
   constraint PK_ENDERECO_ESTABELECIMENTO primary key (COD_ENDERECO_ESTABELECIMENTO)
);

comment on table COMUM.ENDERECO_ESTABELECIMENTO is 
'Armazena os endereços dos estabelecimentos.';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.COD_ENDERECO_ESTABELECIMENTO is 
'Código sequencial para os registros dos endereços dos estabelecimentos.';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.CNPJ_ESTABELECIMENTO is 
'Armazena o CPNJ do estabelecimento';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.COD_TIPO_ENDERECO_ESTABELECIMENTO is 
'Código sequencial do tipo de endereço do estabelecimento.';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.COD_ESTADO is 
'Código sequencial de cada registro.';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.ENDERECO is 
'Descrição do endereço do estabelecimento.';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.BAIRRO is 
'Descrição do bairro do estabelecimento.';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.CIDADE is 
'Descrição da cidade do estabelecimento';

comment on column COMUM.ENDERECO_ESTABELECIMENTO.CEP is 
'Código de endereçamento postal do estabelecimento.';

/*==============================================================*/
/* Table: ENDERECO_FUNCIONARIO                                  */
/*==============================================================*/
create table COMUM.ENDERECO_FUNCIONARIO 
(
   COD_ENDERECO_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_ENDERECO_FUNCIONARIO'),
   COD_ESTADO           integer                        not null,
   CPF_FUNCIONARIO      character varying(11)          not null,
   COD_TIPO_ENDERECO_FUNCIONARIO integer               not null,
   ENDERECO             character varying(200)         not null,
   BAIRRO               character varying(200)         not null,
   CIDADE               character varying(200)         not null,
   CEP                  character varying(8)           not null,
   constraint PK_ENDERECO_FUNCIONARIO primary key (COD_ENDERECO_FUNCIONARIO)
);

comment on table COMUM.ENDERECO_FUNCIONARIO is 
'Armazena os endereços dos funcionários.';

comment on column COMUM.ENDERECO_FUNCIONARIO.COD_ENDERECO_FUNCIONARIO is 
'Código sequencial para os registros dos endereços dos funcionários.';

comment on column COMUM.ENDERECO_FUNCIONARIO.COD_ESTADO is 
'Código sequencial de cada registro.';

comment on column COMUM.ENDERECO_FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.ENDERECO_FUNCIONARIO.COD_TIPO_ENDERECO_FUNCIONARIO is 
'Código sequencial do tipo de endereço do funcionário.';

comment on column COMUM.ENDERECO_FUNCIONARIO.ENDERECO is 
'Descrição do endereço do funcionário.';

comment on column COMUM.ENDERECO_FUNCIONARIO.BAIRRO is 
'Descrição do bairro do funcionário.';

comment on column COMUM.ENDERECO_FUNCIONARIO.CIDADE is 
'Descrição da cidade do funcionário.';

comment on column COMUM.ENDERECO_FUNCIONARIO.CEP is 
'Código de endereçamento postal do funcionário.';

/*==============================================================*/
/* Table: ESTABELECIMENTO                                       */
/*==============================================================*/
create table COMUM.ESTABELECIMENTO 
(
   CNPJ_ESTABELECIMENTO character varying(14)          not null,
   RAZAO_SOCIAL         character varying(200)         not null,
   NOME_FANTASIA        character varying(200)         null,
   DATA_ABERTURA        date                           not null,
   DATA_CADASTRO        timestamp                       not null,
   constraint PK_ESTABELECIMENTO primary key (CNPJ_ESTABELECIMENTO)
);

comment on table COMUM.ESTABELECIMENTO is 
'Armazena os dados do estabelecimento e suas filiais';

comment on column COMUM.ESTABELECIMENTO.CNPJ_ESTABELECIMENTO is 
'Armazena o CPNJ do estabelecimento';

comment on column COMUM.ESTABELECIMENTO.RAZAO_SOCIAL is 
'Razão Social do estabelecimento';

comment on column COMUM.ESTABELECIMENTO.NOME_FANTASIA is 
'Nome fantasia do estabelecimento';

comment on column COMUM.ESTABELECIMENTO.DATA_ABERTURA is 
'Data de abertura da empresa';

comment on column COMUM.ESTABELECIMENTO.DATA_CADASTRO is 
'Data de inclusão no sistema';

/*==============================================================*/
/* Table: ESTABELECIMENTO_FUNCIONARIO                           */
/*==============================================================*/
create table COMUM.ESTABELECIMENTO_FUNCIONARIO 
(
   COD_ESTABELECIMENTO_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_ESTABELECIMENTO_FUNCIONARIO'),
   CNPJ_ESTABELECIMENTO character varying(14)          not null,
   CPF_FUNCIONARIO      character varying(11)          not null,
   constraint PK_ESTABELECIMENTO_FUNCIONARIO primary key (COD_ESTABELECIMENTO_FUNCIONARIO)
);

comment on table COMUM.ESTABELECIMENTO_FUNCIONARIO is 
'Armazena a relação funcionário estabelecimento';

comment on column COMUM.ESTABELECIMENTO_FUNCIONARIO.COD_ESTABELECIMENTO_FUNCIONARIO is 
'Código sequencial da relação estabelecimento funcionário.';

comment on column COMUM.ESTABELECIMENTO_FUNCIONARIO.CNPJ_ESTABELECIMENTO is 
'Armazena o CPNJ do estabelecimento';

comment on column COMUM.ESTABELECIMENTO_FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

/*==============================================================*/
/* Table: ESTADO                                                */
/*==============================================================*/
create table COMUM.ESTADO 
(
   COD_ESTADO           integer                        not null default nextval('COMUM.SEQ_ESTADO'),
   SIGLA_ESTADO         character varying(2)           not null,
   DESCRICAO_ESTADO     character varying(100)         not null,
   constraint PK_ESTADO primary key (COD_ESTADO)
);

comment on table COMUM.ESTADO is 
'Armazena as siglas e descrições dos estados brasileiros.';

comment on column COMUM.ESTADO.COD_ESTADO is 
'Código sequencial de cada registro.';

comment on column COMUM.ESTADO.SIGLA_ESTADO is 
'Sigla do estado.';

comment on column COMUM.ESTADO.DESCRICAO_ESTADO is 
'Descrição do estado.';

/*==============================================================*/
/* Table: ESTADO_CIVIL                                          */
/*==============================================================*/
create table COMUM.ESTADO_CIVIL 
(
   COD_ESTADO_CIVIL     integer                        not null default nextval('COMUM.SEQ_ESTADO_CIVIL'),
   DESCRICAO_ESTADO_CIVIL character varying(100)         not null,
   constraint PK_ESTADO_CIVIL primary key (COD_ESTADO_CIVIL)
);

comment on table COMUM.ESTADO_CIVIL is 
'Armazena os estados civiis.';

comment on column COMUM.ESTADO_CIVIL.COD_ESTADO_CIVIL is 
'Armazena o código sequencial do estado civil.';

comment on column COMUM.ESTADO_CIVIL.DESCRICAO_ESTADO_CIVIL is 
'Descrição do estado civil.';

/*==============================================================*/
/* Table: FUNCIONARIO                                           */
/*==============================================================*/
create table COMUM.FUNCIONARIO 
(
   CPF_FUNCIONARIO      character varying(11)          not null,
   COD_CARGO            integer                        not null,
   COD_GRAU_ESCOLARIDADE integer                       not null,
   COD_ESTADO_CIVIL     integer                        not null,
   COD_SEXO             integer                        not null,
   COD_ESTADO_NATURALIDADE integer                     not null,
   COD_ESTADO_IDENTIDADE integer                       not null,
   CPF_FUNCIONARIO_RESP_CADASTRO character varying(11) not null,
   NOME_FUNCIONARIO     character varying(200)         not null,
   DATA_NASCIMENTO      date                           not null,
   MATRICULA            character varying(50)          null,
   CARTEIRA_TRABALHO    character varying(50)          not null,
   SERIE_CARTEIRA_TRABALHO character varying(50)          not null,
   IDENTIDADE           character varying(50)          not null,
   ORGAO_EMISSOR_IDENTIDADE character varying(50)          not null,
   TITULO_ELEITOR       character varying(50)          not null,
   ZONA_TITULO_ELEITOR  character varying(50)          not null,
   SECAO_TITULO_ELEITOR character varying(50)          not null,
   CERTIFICADO_MILITAR  character varying(50)          not null,
   CATEGORIA_CERTIFICADO_MILITAR character varying(50)          not null,
   NUMERO_PIS           character varying(50)          not null,
   DATA_CADASTRO_PIS    date                           not null,
   NUMERO_CARTEIRA_HABILITACAO character varying(50)          null,
   CATEGORIA_CARTERIA_HABILITACAO character varying(1)           null,
   DATA_ADMISSAO        date                           not null,
   DATA_CADASTRO        date                           not null,
   NOME_PAI             character varying(200)         null,
   NOME_MAE             character varying(200)         null,
   NATURALIDADE         character varying(100)         not null,
   NACIONALIDADE        character(100)                 not null,
   DATA_DESLIGAMENTO    date                           null,
   UTILIZA_VALE_TRANSPORTE boolean                        not null,
   REMUNERACAO          decimal(17,2)                  not null,
   ATIVO                boolean                        not null,
   constraint PK_FUNCIONARIO primary key (CPF_FUNCIONARIO)
);

comment on table COMUM.FUNCIONARIO is 
'Tabela que armazena os dados dos funcionários.';

comment on column COMUM.FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.FUNCIONARIO.COD_CARGO is 
'Código sequencial do cargo.';

comment on column COMUM.FUNCIONARIO.COD_GRAU_ESCOLARIDADE is 
'Código sequencial do grau de escolaridade.';

comment on column COMUM.FUNCIONARIO.COD_ESTADO_CIVIL is 
'Armazena o código sequencial do estado civil.';

comment on column COMUM.FUNCIONARIO.COD_SEXO is 
'Código sequencial do sexo.';

comment on column COMUM.FUNCIONARIO.COD_ESTADO_NATURALIDADE is 
'Código sequencial de cada registro.';

comment on column COMUM.FUNCIONARIO.COD_ESTADO_IDENTIDADE is 
'Código sequencial de cada registro.';

comment on column COMUM.FUNCIONARIO.CPF_FUNCIONARIO_RESP_CADASTRO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.FUNCIONARIO.NOME_FUNCIONARIO is 
'Armazena o nome do funcionário.';

comment on column COMUM.FUNCIONARIO.DATA_NASCIMENTO is 
'Armazena a data de nascimento do funcionário.';

comment on column COMUM.FUNCIONARIO.MATRICULA is 
'Armazena a matrícula do funcionário.';

comment on column COMUM.FUNCIONARIO.CARTEIRA_TRABALHO is 
'Número da carteira de trabalho do funcionário';

comment on column COMUM.FUNCIONARIO.SERIE_CARTEIRA_TRABALHO is 
'Número de série da carteira de trabalho';

comment on column COMUM.FUNCIONARIO.IDENTIDADE is 
'Número da identidade do funcionário.';

comment on column COMUM.FUNCIONARIO.ORGAO_EMISSOR_IDENTIDADE is 
'Órgão emissor da carteira de identidade.';

comment on column COMUM.FUNCIONARIO.TITULO_ELEITOR is 
'Número do título de eleitor do funcionário.';

comment on column COMUM.FUNCIONARIO.ZONA_TITULO_ELEITOR is 
'Zona do título de eleitor do funcionário.';

comment on column COMUM.FUNCIONARIO.SECAO_TITULO_ELEITOR is 
'Seção do título de eleitor do funcionário.';

comment on column COMUM.FUNCIONARIO.CERTIFICADO_MILITAR is 
'número do certificado militar do funcionário.';

comment on column COMUM.FUNCIONARIO.CATEGORIA_CERTIFICADO_MILITAR is 
'Categoria do certificado militar do funcionário.';

comment on column COMUM.FUNCIONARIO.NUMERO_PIS is 
'Número do PIS do funcionário.';

comment on column COMUM.FUNCIONARIO.DATA_CADASTRO_PIS is 
'Data de cadastro no PIS';

comment on column COMUM.FUNCIONARIO.NUMERO_CARTEIRA_HABILITACAO is 
'Número da carteira de habilitação.';

comment on column COMUM.FUNCIONARIO.CATEGORIA_CARTERIA_HABILITACAO is 
'Categoria da carteira de habilitação.';

comment on column COMUM.FUNCIONARIO.DATA_ADMISSAO is 
'Data de admissão.';

comment on column COMUM.FUNCIONARIO.DATA_CADASTRO is 
'Data de inclusão no sistema.';

comment on column COMUM.FUNCIONARIO.NOME_PAI is 
'Nome do pai do funcionário.';

comment on column COMUM.FUNCIONARIO.NOME_MAE is 
'Nome da mãe do funcionário.';

comment on column COMUM.FUNCIONARIO.NATURALIDADE is 
'Naturalidade do funcionário.';

comment on column COMUM.FUNCIONARIO.NACIONALIDADE is 
'Nacionalidade do funcionário.';

comment on column COMUM.FUNCIONARIO.DATA_DESLIGAMENTO is 
'Data de desligamento do funcionário.';

comment on column COMUM.FUNCIONARIO.UTILIZA_VALE_TRANSPORTE is 
'Indica se o funcionário utiliza vale transporte.';

comment on column COMUM.FUNCIONARIO.REMUNERACAO is 
'Remuneração do funcionário.';

comment on column COMUM.FUNCIONARIO.ATIVO is 
'Indica se o funcionário está ativo.';

/*==============================================================*/
/* Table: GRAU_ESCOLARIDADE                                     */
/*==============================================================*/
create table COMUM.GRAU_ESCOLARIDADE 
(
   COD_GRAU_ESCOLARIDADE integer                        not null default nextval('COMUM.SEQ_GRAU_ESCOLARIDADE'),
   DESCRICAO_GRAU_ESCOLARIDADE character varying(100)         not null,
   constraint PK_GRAU_ESCOLARIDADE primary key (COD_GRAU_ESCOLARIDADE)
);

comment on table COMUM.GRAU_ESCOLARIDADE is 
'Tabela que armazena os graus de escolaridade.';

comment on column COMUM.GRAU_ESCOLARIDADE.COD_GRAU_ESCOLARIDADE is 
'Código sequencial do grau de escolaridade.';

comment on column COMUM.GRAU_ESCOLARIDADE.DESCRICAO_GRAU_ESCOLARIDADE is 
'Armazena a descrição do grau de escolaridade.';

/*==============================================================*/
/* Table: GRAU_PARENTESCO                                       */
/*==============================================================*/
create table COMUM.GRAU_PARENTESCO 
(
   COD_GRAU_PARENTESCO  integer                        not null default nextval('COMUM.SEQ_GRAU_PARENTESCO'),
   DESCRICAO_GRAU_PARENTESCO char(10)                       not null,
   constraint PK_GRAU_PARENTESCO primary key (COD_GRAU_PARENTESCO)
);

comment on table COMUM.GRAU_PARENTESCO is 
'Armazena os graus de parentesco';

comment on column COMUM.GRAU_PARENTESCO.COD_GRAU_PARENTESCO is 
'Código sequencial do grau de parentesco';

comment on column COMUM.GRAU_PARENTESCO.DESCRICAO_GRAU_PARENTESCO is 
'Armazena a descrição dos graus de parentesco.';

/*==============================================================*/
/* Table: HORARIO_TRABALHO                                      */
/*==============================================================*/
create table COMUM.HORARIO_TRABALHO 
(
   COD_HORARIO_TRABALHO integer                        not null default nextval ('COMUM.SEQ_HORARIO_TRABALHO'),
   COD_DIA_SEMANA       integer                        not null,
   HORARIO_ENTRADA      time                           not null,
   HORARIO_SAIDA        time                           not null,
   constraint PK_HORARIO_TRABALHO primary key (COD_HORARIO_TRABALHO)
);

comment on table COMUM.HORARIO_TRABALHO is 
'Registra os horários possíveis de trabalho.';

comment on column COMUM.HORARIO_TRABALHO.COD_HORARIO_TRABALHO is 
'Código sequencial dos registros de horário de trabalho.';

comment on column COMUM.HORARIO_TRABALHO.HORARIO_ENTRADA is 
'Armazena o horário de trabalho diponível para entrada.';

comment on column COMUM.HORARIO_TRABALHO.HORARIO_SAIDA is 
'Definição do horário de saída.';

/*==============================================================*/
/* Table: HORARIO_TRABALHO_FUNCIONARIO                          */
/*==============================================================*/
create table COMUM.HORARIO_TRABALHO_FUNCIONARIO 
(
   COD_HORARIO_TRABALHO_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_HORARIO_TRABALHO_FUNCIONARIO'),
   CPF_FUNCIONARIO      character varying(11)          not null,
   COD_HORARIO_TRABALHO integer                        not null,
   constraint PK_HORARIO_TRABALHO_FUNCIONARI primary key (COD_HORARIO_TRABALHO_FUNCIONARIO)
);

comment on table COMUM.HORARIO_TRABALHO_FUNCIONARIO is 
'Armazena os horários de trabalho dos funcionários.';

comment on column COMUM.HORARIO_TRABALHO_FUNCIONARIO.COD_HORARIO_TRABALHO_FUNCIONARIO is 
'Código sequencial dos horários de trabalho dos funcionários.';

comment on column COMUM.HORARIO_TRABALHO_FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.HORARIO_TRABALHO_FUNCIONARIO.COD_HORARIO_TRABALHO is 
'Código sequencial dos registros de horário de trabalho.';

/*==============================================================*/
/* Table: REFERENCIA_BANCARIA_FUNCIONARIO                       */
/*==============================================================*/
create table COMUM.REFERENCIA_BANCARIA_FUNCIONARIO 
(
   COD_REFERENCIA_BANCARIA_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_REFERENCIA_BANCARIA_FUNCIONARIO'),
   COD_TIPO_CONTA       integer                        not null,
   NUMERO_BANCO         character varying(3)           not null,
   CPF_FUNCIONARIO      character varying(11)          not null,
   NUMERO_AGENCIA       character varying(5)           not null,
   NUMERO_CONTA         character varying(7)           not null,
   constraint PK_REFERENCIA_BANCARIA_FUNCION primary key (COD_REFERENCIA_BANCARIA_FUNCIONARIO)
);

comment on table COMUM.REFERENCIA_BANCARIA_FUNCIONARIO is 
'Armazena as referências bancárias dos funcionários.';

comment on column COMUM.REFERENCIA_BANCARIA_FUNCIONARIO.COD_REFERENCIA_BANCARIA_FUNCIONARIO is 
'Código sequencial da referencia bancária do funcionário..';

comment on column COMUM.REFERENCIA_BANCARIA_FUNCIONARIO.COD_TIPO_CONTA is 
'Armazena o código sequencial do tipo de conta.';

comment on column COMUM.REFERENCIA_BANCARIA_FUNCIONARIO.NUMERO_BANCO is 
'Armazena o número do banco.';

comment on column COMUM.REFERENCIA_BANCARIA_FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.REFERENCIA_BANCARIA_FUNCIONARIO.NUMERO_AGENCIA is 
'Número da agência da referencia bancária do funcionário.';

comment on column COMUM.REFERENCIA_BANCARIA_FUNCIONARIO.NUMERO_CONTA is 
'Número da conta da referência bancária.';

/*==============================================================*/
/* Table: SEXO                                                  */
/*==============================================================*/
create table COMUM.SEXO 
(
   COD_SEXO             integer                        not null default nextval('COMUM.SEQ_SEXO'),
   DESCRICAO_SEXO       character varying(100)         not null,
   constraint PK_SEXO primary key (COD_SEXO)
);

comment on table COMUM.SEXO is 
'Tabela que armazena a descrição de sexo.';

comment on column COMUM.SEXO.COD_SEXO is 
'Código sequencial do sexo.';

comment on column COMUM.SEXO.DESCRICAO_SEXO is 
'Armazena a descrição do sexo.';

/*==============================================================*/
/* Table: TELEFONE_ESTABELECIMENTO                              */
/*==============================================================*/
create table COMUM.TELEFONE_ESTABELECIMENTO 
(
   COD_TELEFONE_ESTABELECIMENTO integer                        not null default nextval('COMUM.SEQ_TELEFONE_ESTABELECIMENTO'),
   CNPJ_ESTABELECIMENTO character varying(14)          not null,
   COD_TIPO_TELEFONE_ESTABELECIMENTO integer           not null,
   NUMERO_TELEFONE_ESTABELECIMENTO character varying(9)           not null,
   constraint PK_TELEFONE_ESTABELECIMENTO primary key (COD_TELEFONE_ESTABELECIMENTO)
);

comment on table COMUM.TELEFONE_ESTABELECIMENTO is 
'Armazena os telefones dos estabelecimentos.';

comment on column COMUM.TELEFONE_ESTABELECIMENTO.COD_TELEFONE_ESTABELECIMENTO is 
'Armazena o código sequencial dos telefones dos estabelecimentos.';

comment on column COMUM.TELEFONE_ESTABELECIMENTO.CNPJ_ESTABELECIMENTO is 
'Armazena o CPNJ do estabelecimento';

comment on column COMUM.TELEFONE_ESTABELECIMENTO.COD_TIPO_TELEFONE_ESTABELECIMENTO is 
'Armazena o código sequencial do tipo de telefone do estabelecimento.';

comment on column COMUM.TELEFONE_ESTABELECIMENTO.NUMERO_TELEFONE_ESTABELECIMENTO is 
'Armazena o número de telefone dos estabelecimentos.';

/*==============================================================*/
/* Table: TELEFONE_FUNCIONARIO                                  */
/*==============================================================*/
create table COMUM.TELEFONE_FUNCIONARIO 
(
   COD_TELEFONE_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_TELEFONE_FUNCIONARIO'),
   COD_TIPO_TELEFONE_FUNCIONARIO integer                   not null,
   CPF_FUNCIONARIO      character varying(11)              not null,
   NUMERO_TELEFONE_FUNCIONARIO character varying(9)           not null,
   constraint PK_TELEFONE_FUNCIONARIO primary key (COD_TELEFONE_FUNCIONARIO)
);

comment on table COMUM.TELEFONE_FUNCIONARIO is 
'Armazena os telefones dos funcionários.';

comment on column COMUM.TELEFONE_FUNCIONARIO.COD_TELEFONE_FUNCIONARIO is 
'Armazena o código sequencial dos telefones dos funcionários.';

comment on column COMUM.TELEFONE_FUNCIONARIO.COD_TIPO_TELEFONE_FUNCIONARIO is 
'Armazena o código sequencial do tipo de telefone do funcionário.';

comment on column COMUM.TELEFONE_FUNCIONARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.TELEFONE_FUNCIONARIO.NUMERO_TELEFONE_FUNCIONARIO is 
'Armazena o número de telefone dos funcionários.';

/*==============================================================*/
/* Table: TIPO_CONTA                                            */
/*==============================================================*/
create table COMUM.TIPO_CONTA 
(
   COD_TIPO_CONTA       integer                        not null default nextval('COMUM.SEQ_TIPO_CONTA'),
   DESCRICAO_TIPO_CONTA character varying(50)          not null,
   constraint PK_TIPO_CONTA primary key (COD_TIPO_CONTA)
);

comment on table COMUM.TIPO_CONTA is 
'Armazena os tipos de conta.';

comment on column COMUM.TIPO_CONTA.COD_TIPO_CONTA is 
'Armazena o código sequencial do tipo de conta.';

comment on column COMUM.TIPO_CONTA.DESCRICAO_TIPO_CONTA is 
'Armazena a descrição dos tipos de conta.';

/*==============================================================*/
/* Table: TIPO_EMAIL_ESTABELECIMENTO                            */
/*==============================================================*/
create table COMUM.TIPO_EMAIL_ESTABELECIMENTO 
(
   COD_TIPO_EMAIL_ESTABELECIMENTO integer                        not null default nextval('COMUM.SEQ_TIPO_EMAIL_ESTABELECIMENTO'),
   DESCRICAO_TIPO_EMAIL_ESTABELECIMENTO character varying(100)         not null,
   constraint PK_TIPO_EMAIL_ESTABELECIMENTO primary key (COD_TIPO_EMAIL_ESTABELECIMENTO)
);

comment on table COMUM.TIPO_EMAIL_ESTABELECIMENTO is 
'Armazena os tipos de emails dos estabelecimentos.';

comment on column COMUM.TIPO_EMAIL_ESTABELECIMENTO.COD_TIPO_EMAIL_ESTABELECIMENTO is 
'Código sequencial dos tipos de emails dos estabelecimentos.';

comment on column COMUM.TIPO_EMAIL_ESTABELECIMENTO.DESCRICAO_TIPO_EMAIL_ESTABELECIMENTO is 
'Armazena a descrição do tipo de email do estabelecimento.';

/*==============================================================*/
/* Table: TIPO_EMAIL_FUNCIONARIO                                */
/*==============================================================*/
create table COMUM.TIPO_EMAIL_FUNCIONARIO 
(
   COD_TIPO_EMAIL_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_TIPO_EMAIL_FUNCIONARIO'),
   DESCRICAO_TIPO_EMAIL_FUNCIONARIO character varying(100)         not null,
   constraint PK_TIPO_EMAIL_FUNCIONARIO primary key (COD_TIPO_EMAIL_FUNCIONARIO)
);

comment on table COMUM.TIPO_EMAIL_FUNCIONARIO is 
'Armazena os tipos de emails dos funcionários.';

comment on column COMUM.TIPO_EMAIL_FUNCIONARIO.COD_TIPO_EMAIL_FUNCIONARIO is 
'Código sequencial dos tipos de emails dos funcionários.';

comment on column COMUM.TIPO_EMAIL_FUNCIONARIO.DESCRICAO_TIPO_EMAIL_FUNCIONARIO is 
'Armazena a descrição do tipo de email do funcionário.';

/*==============================================================*/
/* Table: TIPO_ENDERECO_ESTABELECIMENTO                         */
/*==============================================================*/
create table COMUM.TIPO_ENDERECO_ESTABELECIMENTO 
(
   COD_TIPO_ENDERECO_ESTABELECIMENTO integer                        not null default nextval('COMUM.SEQ_TIPO_ENDERECO_ESTABELECIMENTO'),
   DESCRICAO_TIPO_ENDERECO_ESTABELECIMENTO character varying(100)         not null,
   constraint PK_TIPO_ENDERECO_ESTABELECIMEN primary key (COD_TIPO_ENDERECO_ESTABELECIMENTO)
);

comment on table COMUM.TIPO_ENDERECO_ESTABELECIMENTO is 
'Armazena os tipos de endereço dos estabelecimentos.';

comment on column COMUM.TIPO_ENDERECO_ESTABELECIMENTO.COD_TIPO_ENDERECO_ESTABELECIMENTO is 
'Código sequencial do tipo de endereço do estabelecimento.';

comment on column COMUM.TIPO_ENDERECO_ESTABELECIMENTO.DESCRICAO_TIPO_ENDERECO_ESTABELECIMENTO is 
'Descrição do tipo de endereço do estabelecimento.';

/*==============================================================*/
/* Table: TIPO_ENDERECO_FUNCIONARIO                             */
/*==============================================================*/
create table COMUM.TIPO_ENDERECO_FUNCIONARIO 
(
   COD_TIPO_ENDERECO_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_TIPO_ENDERECO_FUNCIONARIO'),
   DESCRICAO_TIPO_ENDERECO_FUNCIONARIO character varying(100)         not null,
   constraint PK_TIPO_ENDERECO_FUNCIONARIO primary key (COD_TIPO_ENDERECO_FUNCIONARIO)
);

comment on table COMUM.TIPO_ENDERECO_FUNCIONARIO is 
'Armazena os tipos de endereço dos funcionários.';

comment on column COMUM.TIPO_ENDERECO_FUNCIONARIO.COD_TIPO_ENDERECO_FUNCIONARIO is 
'Código sequencial do tipo de endereço do funcionário.';

comment on column COMUM.TIPO_ENDERECO_FUNCIONARIO.DESCRICAO_TIPO_ENDERECO_FUNCIONARIO is 
'Descrição do tipo de endereço do funcionário.';

/*==============================================================*/
/* Table: TIPO_TELEFONE_ESTABELECIMENTO                         */
/*==============================================================*/
create table COMUM.TIPO_TELEFONE_ESTABELECIMENTO 
(
   COD_TIPO_TELEFONE_ESTABELECIMENTO integer                        not null default nextval('COMUM.SEQ_TIPO_TELEFONE_ESTABELECIMENTO'),
   DESCRICAO_TIPO_TELEFONE_ESTABELECIMENTO character varying(50)          not null,
   constraint PK_TIPO_TELEFONE_ESTABELECIMEN primary key (COD_TIPO_TELEFONE_ESTABELECIMENTO)
);

comment on table COMUM.TIPO_TELEFONE_ESTABELECIMENTO is 
'Armazena os tipos de telefone dos estabelecimentos.';

comment on column COMUM.TIPO_TELEFONE_ESTABELECIMENTO.COD_TIPO_TELEFONE_ESTABELECIMENTO is 
'Armazena o código sequencial do tipo de telefone do estabelecimento.';

comment on column COMUM.TIPO_TELEFONE_ESTABELECIMENTO.DESCRICAO_TIPO_TELEFONE_ESTABELECIMENTO is 
'Armazena o tipo de telefone do estabelecimento.';

/*==============================================================*/
/* Table: TIPO_TELEFONE_FUNCIONARIO                             */
/*==============================================================*/
create table COMUM.TIPO_TELEFONE_FUNCIONARIO 
(
   COD_TIPO_TELEFONE_FUNCIONARIO integer                        not null default nextval('COMUM.SEQ_TIPO_TELEFONE_FUNCIONARIO'),
   DESCRICAO_TIPO_TELEFONE_FUNCIONARIO character varying(50)          not null,
   constraint PK_TIPO_TELEFONE_FUNCIONARIO primary key (COD_TIPO_TELEFONE_FUNCIONARIO)
);

comment on table COMUM.TIPO_TELEFONE_FUNCIONARIO is 
'Armazena os tipos de telefone dos funcionários.';

comment on column COMUM.TIPO_TELEFONE_FUNCIONARIO.COD_TIPO_TELEFONE_FUNCIONARIO is 
'Armazena o código sequencial do tipo de telefone do funcionário.';

comment on column COMUM.TIPO_TELEFONE_FUNCIONARIO.DESCRICAO_TIPO_TELEFONE_FUNCIONARIO is 
'Armazena o tipo de telefone do funcionário.';

/*==============================================================*/
/* Table: TURNO_TRABALHO                                        */
/*==============================================================*/
create table COMUM.TURNO_TRABALHO 
(
   COD_TURNO_TRABALHO   integer                        not null default nextval('COMUM.SEQ_TURNO_TRABALHO'),
   COD_HORARIO_TRABALHO integer                        not null,
   DESCRICAO_TURNO_TRABALHO character varying(100)         not null,
   constraint PK_TURNO_TRABALHO primary key (COD_TURNO_TRABALHO)
);

comment on table COMUM.TURNO_TRABALHO is 
'Armazena os turnos de trabalho disponíveis.';

comment on column COMUM.TURNO_TRABALHO.COD_TURNO_TRABALHO is 
'Código sequencial do turno de trabalho.';

comment on column COMUM.TURNO_TRABALHO.COD_HORARIO_TRABALHO is 
'Código sequencial dos registros de horário de trabalho.';

comment on column COMUM.TURNO_TRABALHO.DESCRICAO_TURNO_TRABALHO is 
'Armazena a descrição dos turnos de trabalho.';

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table COMUM.USUARIO 
(
   COD_USUARIO          integer                        not null default nextval('COMUM.SEQ_USUARIO'),
   CPF_FUNCIONARIO      character varying(11)          not null,
   "LOGIN"              character varying(50)          not null,
   SENHA                character varying(100)         not null,
   ATIVO                boolean                        not null,
   PRIMEIRO_ACESSO      boolean                        not null,
   constraint PK_USUARIO primary key (COD_USUARIO)
);

comment on table COMUM.USUARIO is 
'Armazena os usuários do sistema.';

comment on column COMUM.USUARIO.COD_USUARIO is 
'Código sequencial do usuário.';

comment on column COMUM.USUARIO.CPF_FUNCIONARIO is 
'Armazena o CPF do funcionário.';

comment on column COMUM.USUARIO."LOGIN" is 
'Armazena o login do usuário.';

comment on column COMUM.USUARIO.SENHA is 
'Armazena a senha do usuário.';

comment on column COMUM.USUARIO.ATIVO is 
'Informa se o usuário está ativo ou não.';

comment on column COMUM.USUARIO.PRIMEIRO_ACESSO is 
'Identifica se é o primeiro acesso do usuário.';

alter table COMUM.BENEFICIARIO_FUNCIONARIO
   add constraint FK_BENEFICIARIO_FUNCIONARIO_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.BENEFICIARIO_FUNCIONARIO
   add constraint FK_BENEFICIARIO_FUNCIONARIO_GRAU_PARENTESCO foreign key (COD_GRAU_PARENTESCO)
      references COMUM.GRAU_PARENTESCO (COD_GRAU_PARENTESCO)
      on update restrict
      on delete restrict;

alter table COMUM.EMAIL_ESTABELECIMENTO
   add constraint FK_EMAIL_ESTABELECIMENTO_ESTABELECIMENTO foreign key (CNPJ_ESTABELECIMENTO)
      references COMUM.ESTABELECIMENTO (CNPJ_ESTABELECIMENTO)
      on update restrict
      on delete restrict;

alter table COMUM.EMAIL_ESTABELECIMENTO
   add constraint FK_EMAIL_ESTABELECIMENTO_TIPO_EMAIL_ESTABELECIMENTO foreign key (COD_TIPO_EMAIL_ESTABELECIMENTO)
      references COMUM.TIPO_EMAIL_ESTABELECIMENTO (COD_TIPO_EMAIL_ESTABELECIMENTO)
      on update restrict
      on delete restrict;

alter table COMUM.EMAIL_FUNCIONARIO
   add constraint FK_EMAIL_FUNCIONARIO_TIPO_EMAIL_FUNCIONARIO foreign key (COD_TIPO_EMAIL_FUNCIONARIO)
      references COMUM.TIPO_EMAIL_FUNCIONARIO (COD_TIPO_EMAIL_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.EMAIL_FUNCIONARIO
   add constraint FK_EMAIL_FUNCIONARIO_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.ENDERECO_ESTABELECIMENTO
   add constraint FK_ENDERECO_ESTABELECIMENTO_ESTABELECIMENTO foreign key (CNPJ_ESTABELECIMENTO)
      references COMUM.ESTABELECIMENTO (CNPJ_ESTABELECIMENTO)
      on update restrict
      on delete restrict;

alter table COMUM.ENDERECO_ESTABELECIMENTO
   add constraint FK_ENDERECO_ESTABELECIMENTO_TIPO_ENDERECO_ESTABELECIMENTO foreign key (COD_TIPO_ENDERECO_ESTABELECIMENTO)
      references COMUM.TIPO_ENDERECO_ESTABELECIMENTO (COD_TIPO_ENDERECO_ESTABELECIMENTO)
      on update restrict
      on delete restrict;

alter table COMUM.ENDERECO_ESTABELECIMENTO
   add constraint FK_ENDERECO_ESTABELECIMENTO_ESTADO foreign key (COD_ESTADO)
      references COMUM.ESTADO (COD_ESTADO)
      on update restrict
      on delete restrict;

alter table COMUM.ENDERECO_FUNCIONARIO
   add constraint FK_ENDERECO_FUNCIONARIO_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.ENDERECO_FUNCIONARIO
   add constraint FK_ENDERECO_FUNCIONARIO_TIPO_ENDERECO_FUNCIONARIO foreign key (COD_TIPO_ENDERECO_FUNCIONARIO)
      references COMUM.TIPO_ENDERECO_FUNCIONARIO (COD_TIPO_ENDERECO_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.ENDERECO_FUNCIONARIO
   add constraint FK_ENDERECO_FUNCIONARIO_ESTADO foreign key (COD_ESTADO)
      references COMUM.ESTADO (COD_ESTADO)
      on update restrict
      on delete restrict;

alter table COMUM.ESTABELECIMENTO_FUNCIONARIO
   add constraint FK_ESTABELECIMENTO_FUNCIONARIO_ESTABELECIMENTO foreign key (CNPJ_ESTABELECIMENTO)
      references COMUM.ESTABELECIMENTO (CNPJ_ESTABELECIMENTO)
      on update restrict
      on delete restrict;

alter table COMUM.ESTABELECIMENTO_FUNCIONARIO
   add constraint FK_ESTABELECIMENTO_FUNCIONARIO_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.FUNCIONARIO
   add constraint FK_FUNCIONARIO_CARGO_CARGO foreign key (COD_CARGO)
      references COMUM.CARGO (COD_CARGO)
      on update restrict
      on delete restrict;

alter table COMUM.FUNCIONARIO
   add constraint FK_FUNCIONARIO_GRAU_ESCOLARIDADE foreign key (COD_GRAU_ESCOLARIDADE)
      references COMUM.GRAU_ESCOLARIDADE (COD_GRAU_ESCOLARIDADE)
      on update restrict
      on delete restrict;

alter table COMUM.FUNCIONARIO
   add constraint FK_FUNCIONARIO_ESTADO_CIVIL foreign key (COD_ESTADO_CIVIL)
      references COMUM.ESTADO_CIVIL (COD_ESTADO_CIVIL)
      on update restrict
      on delete restrict;

alter table COMUM.FUNCIONARIO
   add constraint FK_FUNCIONARIO_SEXO foreign key (COD_SEXO)
      references COMUM.SEXO (COD_SEXO)
      on update restrict
      on delete restrict;

alter table COMUM.FUNCIONARIO
   add constraint FK_FUNCIONARIO_ESTADO_NATURALIDADE foreign key (COD_ESTADO_NATURALIDADE)
      references COMUM.ESTADO (COD_ESTADO)
      on update restrict
      on delete restrict;

alter table COMUM.FUNCIONARIO
   add constraint FK_FUNCIONARIO_ESTADO_IDENTIDADE foreign key (COD_ESTADO_IDENTIDADE)
      references COMUM.ESTADO (COD_ESTADO)
      on update restrict
      on delete restrict;

alter table COMUM.FUNCIONARIO
   add constraint FK_FUNCIONARIO_FUNCIONARIO foreign key (CPF_FUNCIONARIO_RESP_CADASTRO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.HORARIO_TRABALHO
   add constraint FK_HORARIO_DIA_SEMANA foreign key (COD_DIA_SEMANA)
      references COMUM.DIA_SEMANA (COD_DIA_SEMANA)
      on update restrict
      on delete restrict;

alter table COMUM.HORARIO_TRABALHO_FUNCIONARIO
   add constraint FK_HORARIO_TRABALHO_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.HORARIO_TRABALHO_FUNCIONARIO
   add constraint FK_HORARIO_TRABALHO_FUNCIONARIO_HORARIO_TRABALHO foreign key (COD_HORARIO_TRABALHO)
      references COMUM.HORARIO_TRABALHO (COD_HORARIO_TRABALHO)
      on update restrict
      on delete restrict;

alter table COMUM.REFERENCIA_BANCARIA_FUNCIONARIO
   add constraint FK_REFERENCIA_BANCARIA_FUNCIONARIO_TIPO_CONTA foreign key (COD_TIPO_CONTA)
      references COMUM.TIPO_CONTA (COD_TIPO_CONTA)
      on update restrict
      on delete restrict;

alter table COMUM.REFERENCIA_BANCARIA_FUNCIONARIO
   add constraint FK_REFERENCENCIA_BANCARIA_BANCO foreign key (NUMERO_BANCO)
      references COMUM.BANCO (NUMERO_BANCO)
      on update restrict
      on delete restrict;

alter table COMUM.REFERENCIA_BANCARIA_FUNCIONARIO
   add constraint FK_REFERENCIA_BANCARIA_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.TELEFONE_ESTABELECIMENTO
   add constraint FK_TELEFONE_ESTABELECIMENTO_ESTABELECIMENTO foreign key (CNPJ_ESTABELECIMENTO)
      references COMUM.ESTABELECIMENTO (CNPJ_ESTABELECIMENTO)
      on update restrict
      on delete restrict;

alter table COMUM.TELEFONE_ESTABELECIMENTO
   add constraint FK_TELEFONE_ESTABELECIMENTO_TIPO_TELEFONE_ESTABELECIMENTO foreign key (COD_TIPO_TELEFONE_ESTABELECIMENTO)
      references COMUM.TIPO_TELEFONE_ESTABELECIMENTO (COD_TIPO_TELEFONE_ESTABELECIMENTO)
      on update restrict
      on delete restrict;

alter table COMUM.TELEFONE_FUNCIONARIO
   add constraint FK_TELEFONE_FUNCIONARIO_TIPO_TELEFONE_FUNCIONARIO foreign key (COD_TIPO_TELEFONE_FUNCIONARIO)
      references COMUM.TIPO_TELEFONE_FUNCIONARIO (COD_TIPO_TELEFONE_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.TELEFONE_FUNCIONARIO
   add constraint FK_TELEFONE_FUNCIONARIO_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

alter table COMUM.TURNO_TRABALHO
   add constraint FK_TURNO_TRABALHO_HORARIO_TRABALHO foreign key (COD_HORARIO_TRABALHO)
      references COMUM.HORARIO_TRABALHO (COD_HORARIO_TRABALHO)
      on update restrict
      on delete restrict;

alter table COMUM.USUARIO
   add constraint FK_USUARIO_FUNCIONARIO foreign key (CPF_FUNCIONARIO)
      references COMUM.FUNCIONARIO (CPF_FUNCIONARIO)
      on update restrict
      on delete restrict;

create sequence COMUM.SEQ_MODULO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_MODULO is 'Sequencia para utilização da tabela de módulos.';


create table COMUM.MODULO 
(
   COD_MODULO           integer                        not null default nextval('COMUM.SEQ_MODULO'),
   DESCRICAO_MODULO     character varying(100)         not null,
   constraint PK_MODULO primary key (COD_MODULO)
);

comment on table COMUM.MODULO is 
'Armazena os nomes dos módulos da aplicação.';

comment on column COMUM.MODULO.COD_MODULO is 
'Código sequencial de cada módulo da aplicação.';

comment on column COMUM.MODULO.DESCRICAO_MODULO is 
'Descrição do módulo da aplicação.';


create sequence COMUM.SEQ_MENU
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_MENU is 'Sequencia para a tabela de menus.';



create table COMUM.MENU 
(
   COD_MENU             integer                        not null default nextval('COMUM.SEQ_MENU'),
   COD_MODULO           integer                        not null,
   COD_MENU_PAI         integer                        null,
   DESCRICAO_MENU       character varying(200)         not null,
   URL_DESTINO          character varying(200)         null,
   constraint PK_MENU primary key (COD_MENU)
);

comment on table COMUM.MENU is 
'Armazena os menus de cada módulo';

comment on column COMUM.MENU.COD_MENU is 
'Código sequencial do módulo.';

comment on column COMUM.MENU.COD_MODULO is 
'Código sequencial de cada módulo da aplicação.';

comment on column COMUM.MENU.COD_MENU_PAI is 
'Código sequencial do módulo.';

comment on column COMUM.MENU.DESCRICAO_MENU is 
'Descrição do menu.';

comment on column COMUM.MENU.URL_DESTINO is 
'URL de destino do menu.';

alter table COMUM.MENU
   add constraint FK_MENU_MODULO foreign key (COD_MODULO)
      references COMUM.MODULO (COD_MODULO)
      on update restrict
      on delete restrict;

alter table COMUM.MENU
   add constraint FK_MENU_MENU foreign key (COD_MENU_PAI)
      references COMUM.MENU (COD_MENU)
      on update restrict
      on delete restrict;

create sequence COMUM.SEQ_PERMISSAO_USUARIO
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_PERMISSAO_USUARIO is 'Sequencia para permissão do usuário.';


create table COMUM.PERMISSAO_USUARIO 
(
   COD_PERMISSAO_USUARIO integer                        not null default nextval('COMUM.SEQ_PERMISSAO_USUARIO'),
   COD_USUARIO           integer                       not null,
   COD_MENU             integer                        not null,
   PESQUISAR            boolean                        not null,
   VISUALIZAR           boolean                        not null,
   EDITAR               boolean                        not null,
   INCLUIR              boolean                        not null,
   EXCLUIR              boolean                        not null,
   constraint PK_PERMISSAO_USUARIO primary key (COD_PERMISSAO_USUARIO)
);

comment on column COMUM.PERMISSAO_USUARIO.COD_PERMISSAO_USUARIO is 
'Código sequencial da permissão do usuário.';

comment on column COMUM.PERMISSAO_USUARIO.COD_USUARIO is 
'Código do usuário.';

comment on column COMUM.PERMISSAO_USUARIO.COD_MENU is 
'Código sequencial do módulo.';

comment on column COMUM.PERMISSAO_USUARIO.PESQUISAR is 
'Permissão para pesquisar';

comment on column COMUM.PERMISSAO_USUARIO.VISUALIZAR is 
'Permissão para visualizar.';

comment on column COMUM.PERMISSAO_USUARIO.EDITAR is 
'Permissão para editar.';

comment on column COMUM.PERMISSAO_USUARIO.INCLUIR is 
'permissão para incluir.';

comment on column COMUM.PERMISSAO_USUARIO.EXCLUIR is 
'Permissão para excluir.';

alter table COMUM.PERMISSAO_USUARIO
   add constraint FK_PERMISSAO_USUARIO_USUARIO foreign key (COD_USUARIO)
      references COMUM.USUARIO (COD_USUARIO)
      on update restrict
      on delete restrict;

alter table COMUM.PERMISSAO_USUARIO
   add constraint FK_PERMISSAO_USUARIO_MENU foreign key (COD_MENU)
      references COMUM.MENU (COD_MENU)
      on update restrict
      on delete restrict;

ALTER TABLE comum.estabelecimento
   ADD COLUMN inscricao_estadual character varying(50);
COMMENT ON COLUMN comum.estabelecimento.inscricao_estadual
  IS 'Armazena a inscrição estadual do estabelecimento.';


ALTER TABLE comum.usuario RENAME "LOGIN"  TO login;

ALTER TABLE comum.usuario
   ADD COLUMN quantidade_erros_digitacao_senha integer;
COMMENT ON COLUMN comum.usuario.quantidade_erros_digitacao_senha
  IS 'Quantidade de erros de digitação da senha.';

ALTER TABLE comum.usuario
   ADD COLUMN data_ultimo_erro_digitacao_senha date;
COMMENT ON COLUMN comum.usuario.data_ultimo_erro_digitacao_senha
  IS 'Data do último erro de digitação da senha.';

ALTER TABLE comum.usuario
   ADD COLUMN bloqueado boolean;
COMMENT ON COLUMN comum.usuario.bloqueado
  IS 'indica se o usuário está bloqueado.';

ALTER TABLE comum.usuario DROP COLUMN ativo;

ALTER TABLE comum.usuario DROP COLUMN bloqueado;

ALTER TABLE comum.usuario
   ADD COLUMN situacao_usuario integer;
COMMENT ON COLUMN comum.usuario.situacao_usuario
  IS 'Indica a situação do usuário. 1 - Ativo, 2 - Inativo, 3 - Bloqueado por número de tentativas de login, 4 - Bloqueado pelo administrador.';

ALTER TABLE comum.usuario
ALTER COLUMN situacao_usuario SET NOT NULL;

create sequence COMUM.SEQ_PARAMETRO_SISTEMA
   increment by 1
   start with 1
    minvalue 1;

comment on sequence COMUM.SEQ_PARAMETRO_SISTEMA is 'Codigo sequencial para a tabela de parâmetros do sistema.';


create table COMUM.PARAMETRO_SISTEMA 
(
   COD_PARAMETRO        integer                        not null default nextval('COMUM.SEQ_PARAMETRO_SISTEMA'),
   DESCRICAO_PARAMETRO  character varying(200)         not null,
   VALOR_PARAMETRO      character varying(100)         not null,
   TIPO_PARAMETRO       integer                        not null,
   constraint PK_PARAMETRO_SISTEMA primary key (COD_PARAMETRO)
);

comment on table COMUM.PARAMETRO_SISTEMA is 
'Armazena os parâmetros do sistema.';

comment on column COMUM.PARAMETRO_SISTEMA.COD_PARAMETRO is 
'Código sequencial do parâmetro.';

comment on column COMUM.PARAMETRO_SISTEMA.DESCRICAO_PARAMETRO is 
'Armazena a descrição do parâmetro.';

comment on column COMUM.PARAMETRO_SISTEMA.VALOR_PARAMETRO is 
'Armazena o valor do parâmetro.';

comment on column COMUM.PARAMETRO_SISTEMA.TIPO_PARAMETRO is 
'Armazena o tipo de parâmetro.';
