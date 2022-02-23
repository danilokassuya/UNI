CREATE SCHEMA APK

CREATE TABLE APK.usuario(
	identificador SERIAL,
	nome VARCHAR(30),
	dataDeNascimento DATE,
	celular VARCHAR(15),
	e_mail VARCHAR(30),
	participacao_atletica VARCHAR(30),
	senha VARCHAR(65),
	CONSTRAINT pk_comum PRIMARY KEY(identificador),
	CONSTRAINT uk_comum UNIQUE(e_mail)
);

CREATE TABLE APK.organizador(
	usuario_id INT,
	CONSTRAINT fk_organizador FOREIGN KEY(usuario_id)
		REFERENCES APK.usuario(identificador)
		ON DELETE CASCADE,
	CONSTRAINT pk_organizador PRIMARY KEY(usuario_id)
);

CREATE TABLE APK.universitario(
	usuario_id INT,
	CONSTRAINT fk_universitario FOREIGN KEY(usuario_id)
		REFERENCES APK.usuario(identificador)
		ON DELETE CASCADE,
	CONSTRAINT pk_universitario PRIMARY KEY(usuario_id)
);