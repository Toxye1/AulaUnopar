
    create table categoria (
       id bigint not null auto_increment,
        nome varchar(20) not null,
        primary key (id)
    ) engine=MyISAM ;

    create table endereco (
       id integer not null auto_increment,
        bairro varchar(255),
        cep varchar(255),
        cidade varchar(255),
        complemento varchar(255),
        estado varchar(255),
        logradouro varchar(255),
        numero varchar(255),
        primary key (id)
    ) engine=MyISAM ;

    create table lancamento (
       codigo bigint not null auto_increment,
        data_pagamento date,
        data_vencimento date,
        descricao varchar(255),
        observacao varchar(255),
        tipo integer,
        valor decimal(19,2),
        categoria_id bigint,
        pessoa_codigo bigint,
        primary key (codigo)
    ) engine=MyISAM ;

    create table permissao (
       codigo bigint not null auto_increment,
        descricao varchar(255),
        primary key (codigo)
    ) engine=MyISAM ;

    create table pessoa (
       codigo bigint not null auto_increment,
        ativo bit,
        nome varchar(255),
        endereco_id integer,
        primary key (codigo)
    ) engine=MyISAM ;

    create table usuario (
       codigo bigint not null auto_increment,
        email varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (codigo)
    ) engine=MyISAM ;

    create table usuario_permissao (
       codigo_usuario bigint not null,
        codigo_permissao bigint not null
    ) engine=MyISAM ;

    alter table lancamento 
       add constraint FKlea09jmtx2hqws9pua8y3v2kt 
       foreign key (categoria_id) 
       references categoria (id) ;

    alter table lancamento 
       add constraint FKa4ciixm22tj9ud27ogbbefjj0 
       foreign key (pessoa_codigo) 
       references pessoa (codigo);

    alter table pessoa  
       add constraint FKei4abnsw085kx27j89rp796ny 
       foreign key (endereco_id) 
       references endereco (id);

    alter table usuario_permissao 
       add constraint FK5tjrvuwlx1yp72mrf8t8vj93e 
       foreign key (codigo_permissao) 
       references permissao (codigo);

    alter table usuario_permissao 
       add constraint FKeogfr4akeqn19xr3wmyx0n8bo 
       foreign key (codigo_usuario) 
       references usuario (codigo);

    create table categoria (
       id bigint not null auto_increment,
        nome varchar(20) not null,
        primary key (id)
    ) engine=MyISAM;

    create table endereco (
       id integer not null auto_increment,
        bairro varchar(255),
        cep varchar(255),
        cidade varchar(255),
        complemento varchar(255),
        estado varchar(255),
        logradouro varchar(255),
        numero varchar(255),
        primary key (id)
    ) engine=MyISAM;

    create table lancamento (
       codigo bigint not null auto_increment,
        data_pagamento date,
        data_vencimento date,
        descricao varchar(255),
        observacao varchar(255),
        tipo integer,
        valor decimal(19,2),
        categoria_id bigint,
        pessoa_codigo bigint,
        primary key (codigo)
    ) engine=MyISAM;

    create table permissao (
       codigo bigint not null auto_increment,
        descricao varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table pessoa (
       codigo bigint not null auto_increment,
        ativo bit,
        nome varchar(255),
        endereco_id integer,
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario (
       codigo bigint not null auto_increment,
        email varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario_permissao (
       codigo_usuario bigint not null,
        codigo_permissao bigint not null
    ) engine=MyISAM;

    alter table lancamento 
       add constraint FKlea09jmtx2hqws9pua8y3v2kt 
       foreign key (categoria_id) 
       references categoria (id);

    alter table lancamento 
       add constraint FKa4ciixm22tj9ud27ogbbefjj0 
       foreign key (pessoa_codigo) 
       references pessoa (codigo);

    alter table pessoa 
       add constraint FKei4abnsw085kx27j89rp796ny 
       foreign key (endereco_id) 
       references endereco (id);

    alter table usuario_permissao 
       add constraint FK5tjrvuwlx1yp72mrf8t8vj93e 
       foreign key (codigo_permissao) 
       references permissao (codigo);

    alter table usuario_permissao 
       add constraint FKeogfr4akeqn19xr3wmyx0n8bo 
       foreign key (codigo_usuario) 
       references usuario (codigo);

    create table categoria (
       id bigint not null auto_increment,
        nome varchar(255) not null,
        primary key (id)
    ) engine=MyISAM;

    create table endereco (
       id integer not null auto_increment,
        bairro varchar(255),
        cep varchar(255),
        cidade varchar(255),
        complemento varchar(255),
        estado varchar(255),
        logradouro varchar(255),
        numero varchar(255),
        primary key (id)
    ) engine=MyISAM;

    create table lancamento (
       codigo bigint not null auto_increment,
        data_pagamento date,
        data_vencimento date,
        descricao varchar(255),
        observacao varchar(255),
        tipo integer,
        valor decimal(19,2),
        categoria_id bigint,
        pessoa_codigo bigint,
        primary key (codigo)
    ) engine=MyISAM;

    create table permissao (
       codigo bigint not null auto_increment,
        descricao varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table pessoa (
       codigo bigint not null auto_increment,
        ativo bit,
        nome varchar(255),
        endereco_id integer,
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario (
       codigo bigint not null auto_increment,
        email varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario_permissao (
       codigo_usuario bigint not null,
        codigo_permissao bigint not null
    ) engine=MyISAM;

    alter table lancamento 
       add constraint FKlea09jmtx2hqws9pua8y3v2kt 
       foreign key (categoria_id) 
       references categoria (id);

    alter table lancamento 
       add constraint FKa4ciixm22tj9ud27ogbbefjj0 
       foreign key (pessoa_codigo) 
       references pessoa (codigo);

    alter table pessoa 
       add constraint FKei4abnsw085kx27j89rp796ny 
       foreign key (endereco_id) 
       references endereco (id);

    alter table usuario_permissao 
       add constraint FK5tjrvuwlx1yp72mrf8t8vj93e 
       foreign key (codigo_permissao) 
       references permissao (codigo);

    alter table usuario_permissao 
       add constraint FKeogfr4akeqn19xr3wmyx0n8bo 
       foreign key (codigo_usuario) 
       references usuario (codigo);

    create table categoria (
       id bigint not null auto_increment,
        nome varchar(255) not null,
        primary key (id)
    ) engine=MyISAM;

    create table endereco (
       id integer not null auto_increment,
        bairro varchar(255),
        cep varchar(255),
        cidade varchar(255),
        complemento varchar(255),
        estado varchar(255),
        logradouro varchar(255),
        numero varchar(255),
        primary key (id)
    ) engine=MyISAM;

    create table lancamento (
       codigo bigint not null auto_increment,
        data_pagamento date,
        data_vencimento date,
        descricao varchar(255),
        observacao varchar(255),
        tipo integer,
        valor decimal(19,2),
        categoria_id bigint,
        pessoa_codigo bigint,
        primary key (codigo)
    ) engine=MyISAM;

    create table permissao (
       codigo bigint not null auto_increment,
        descricao varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table pessoa (
       codigo bigint not null auto_increment,
        ativo bit,
        nome varchar(255),
        endereco_id integer,
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario (
       codigo bigint not null auto_increment,
        email varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario_permissao (
       codigo_usuario bigint not null,
        codigo_permissao bigint not null
    ) engine=MyISAM;

    alter table lancamento 
       add constraint FKlea09jmtx2hqws9pua8y3v2kt 
       foreign key (categoria_id) 
       references categoria (id);

    alter table lancamento 
       add constraint FKa4ciixm22tj9ud27ogbbefjj0 
       foreign key (pessoa_codigo) 
       references pessoa (codigo);

    alter table pessoa 
       add constraint FKei4abnsw085kx27j89rp796ny 
       foreign key (endereco_id) 
       references endereco (id);

    alter table usuario_permissao 
       add constraint FK5tjrvuwlx1yp72mrf8t8vj93e 
       foreign key (codigo_permissao) 
       references permissao (codigo);

    alter table usuario_permissao 
       add constraint FKeogfr4akeqn19xr3wmyx0n8bo 
       foreign key (codigo_usuario) 
       references usuario (codigo);

    create table categoria (
       id bigint not null auto_increment,
        nome varchar(255) not null,
        primary key (id)
    ) engine=MyISAM;

    create table endereco (
       id integer not null auto_increment,
        bairro varchar(255),
        cep varchar(255),
        cidade varchar(255),
        complemento varchar(255),
        estado varchar(255),
        logradouro varchar(255),
        numero varchar(255),
        primary key (id)
    ) engine=MyISAM;

    create table lancamento (
       codigo bigint not null auto_increment,
        data_pagamento date,
        data_vencimento date,
        descricao varchar(255),
        observacao varchar(255),
        tipo integer,
        valor decimal(19,2),
        categoria_id bigint,
        pessoa_codigo bigint,
        primary key (codigo)
    ) engine=MyISAM;

    create table permissao (
       codigo bigint not null auto_increment,
        descricao varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table pessoa (
       codigo bigint not null auto_increment,
        ativo bit,
        nome varchar(255),
        endereco_id integer,
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario (
       codigo bigint not null auto_increment,
        email varchar(255),
        nome varchar(255),
        senha varchar(255),
        primary key (codigo)
    ) engine=MyISAM;

    create table usuario_permissao (
       codigo_usuario bigint not null,
        codigo_permissao bigint not null
    ) engine=MyISAM;

    alter table lancamento 
       add constraint FKlea09jmtx2hqws9pua8y3v2kt 
       foreign key (categoria_id) 
       references categoria (id);

    alter table lancamento 
       add constraint FKa4ciixm22tj9ud27ogbbefjj0 
       foreign key (pessoa_codigo) 
       references pessoa (codigo);

    alter table pessoa 
       add constraint FKei4abnsw085kx27j89rp796ny 
       foreign key (endereco_id) 
       references endereco (id);

    alter table usuario_permissao 
       add constraint FK5tjrvuwlx1yp72mrf8t8vj93e 
       foreign key (codigo_permissao) 
       references permissao (codigo);

    alter table usuario_permissao 
       add constraint FKeogfr4akeqn19xr3wmyx0n8bo 
       foreign key (codigo_usuario) 
       references usuario (codigo)
