CREATE TABLE funcionalidade (
	idfuncionalidade int(11) NOT NULL auto_increment,
	codigoref varchar(10) NOT NULL,
	nome varchar(45) NOT NULL,
	PRIMARY KEY (idfuncionalidade),
	UNIQUE (codigoref)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE perfil (
	idperfil int(11) NOT NULL auto_increment,
	nome varchar(45) NOT NULL,
	PRIMARY KEY (idperfil)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE perfil_funcionalidade (
	idperfil int(11) NOT NULL,
	idfuncionalidade int(11) NOT NULL,
	KEY idperfil (idperfil),
	KEY idfuncionalidade (idfuncionalidade),
	CONSTRAINT perfil_funcionalidade_ibfk_1 FOREIGN KEY (idperfil) REFERENCES perfil (idperfil),
	CONSTRAINT perfil_funcionalidade_ibfk_2 FOREIGN KEY (idfuncionalidade) REFERENCES funcionalidade (idfuncionalidade)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE projeto(
	idprojeto int(11) NOT NULL auto_increment,
	identificador varchar(45) NOT NULL,
	nome varchar(45) NOT NULL,
	PRIMARY KEY(idprojeto),
	UNIQUE(identificador)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE papel(
	idpapel int(11) NOT NULL auto_increment,
	nome varchar(45) NOT NULL,
	idperfil int(11) NOT NULL,
	PRIMARY KEY(idpapel),
	KEY idperfil (idperfil),
	CONSTRAINT papel_ibfk_1 FOREIGN KEY (idperfil) REFERENCES perfil (idperfil)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE usuario (
  idusuario int(11) NOT NULL auto_increment,
  login varchar(45) NOT NULL,
  senha varchar(100) NOT NULL,
  nome varchar(45) NOT NULL,
  cpf varchar(45) NOT NULL,
  tel varchar(45) default NULL,
  email varchar(45) NOT NULL,
  usuarioativo tinyint(1) NOT NULL default 1,
  idperfil int(11) NOT NULL,
  PRIMARY KEY  (idusuario),
  KEY idperfil (idperfil),
  CONSTRAINT usuario_ibfk_1 FOREIGN KEY (idperfil) REFERENCES perfil (idperfil)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE projeto_papel_usuario(
	idprojeto int(11),
	idpapel int(11),
	idusuario int(11),
	KEY idprojeto (idprojeto),
	KEY idpapel (idpapel),
	KEY idusuario (idusuario),
	CONSTRAINT projeto_papel_usuario_ibfk_1 FOREIGN KEY (idprojeto) REFERENCES projeto (idprojeto),
	CONSTRAINT projeto_papel_usuario_ibfk_2 FOREIGN KEY (idpapel) REFERENCES papel (idpapel),
	CONSTRAINT projeto_papel_usuario_ibfk_3 FOREIGN KEY (idusuario) REFERENCES usuario (idusuario)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE glossario(
	identificador varchar(50) not null,
	chave varchar(50) not null,
	valor varchar(255) not null,
	PRIMARY KEY(identificador, chave)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE historico_alteracao(
	id int(11),
	identificador varchar(50) not null,
	antes varchar(255) not null,
	depois varchar(255) not null,
	PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;