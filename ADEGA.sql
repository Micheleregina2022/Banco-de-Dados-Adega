-- Tabela: Adega
CREATE TABLE Adega (
    Id_adega INT PRIMARY KEY,
    Capacidade VARCHAR
);

-- Tabela: Vinho
CREATE TABLE Vinho (
    Id_vinho INT PRIMARY KEY,
    Nome VARCHAR,
    Tipo VARCHAR,
    Ano INT,
    "Teor Alcoolico" FLOAT,
    CONSTRAINT FK_Tipo FOREIGN KEY (Tipo) REFERENCES TipoVinho(Nome),
    CONSTRAINT FK_Ano FOREIGN KEY (Ano) REFERENCES Safra(Ano)
);

-- Tabela: Tipo
CREATE TABLE Tipo (
    Id_tipo INT PRIMARY KEY,
    Tranquilo VARCHAR,
    Espumante VARCHAR,
    Fortificados VARCHAR,
    Id_vinho INT,
    CONSTRAINT FK_Id_vinho_tipo FOREIGN KEY (Id_vinho) REFERENCES Vinho(Id_vinho)
);

-- Tabela: Categoria_Tranquilo
CREATE TABLE Categoria_Tranquilo (
    Id_Categoria_tranquilo INT PRIMARY KEY,
    Fino VARCHAR,
    Mesa VARCHAR
);

-- Tabela: Variedade_categoria_tranquilo
CREATE TABLE Variedade_categoria_tranquilo (
    Id_variedade_cat_tranq INT PRIMARY KEY,
    Tinto VARCHAR,
    Branco VARCHAR,
    Rose INT
);
