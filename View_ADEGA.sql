-- View: Lista de Vindimas
CREATE VIEW ListaVindimas AS
SELECT 
    v.Nome AS Nome_Vinho,
    v.Ano AS Ano_Vindima,
    v.Tipo AS Tipo_Vinho,
    v."Teor Alcoolico" AS Teor_Alcoolico,
    s.Localizacao AS Localizacao_Adega
FROM Vinho v
JOIN Safra s ON v.Ano = s.Ano;

-- View: Estoque por Tipo
CREATE VIEW EstoquePorTipo AS
SELECT 
    Tipo,
    COUNT(*) AS Quantidade
FROM Vinho
GROUP BY Tipo;

-- View: Vinhos por Produtor
CREATE VIEW VinhosPorProdutor AS
SELECT 
    p.Nome AS Nome_Produtor,
    v.Nome AS Nome_Vinho,
    v.Ano AS Ano_Vindima,
    v.Tipo AS Tipo_Vinho
FROM Vinho v
JOIN Produtor p ON v.Id_produtor = p.Id_produtor;

-- View: Detalhes do Vinho Tranquilo
CREATE VIEW DetalhesVinhoTranquilo AS
SELECT 
    v.Nome AS Nome_Vinho,
    v.Ano AS Ano_Vindima,
    v.Tipo AS Tipo_Vinho,
    t.Tranquilo AS Categoria_Tranquilo,
    tc.Fino AS Variedade_Fino,
    tc.Mesa AS Variedade_Mesa
FROM Vinho v
JOIN Tipo t ON v.Tipo = t.Nome
JOIN Categoria_Tranquilo tc ON t.Id_vinho = tc.Id_vinho
WHERE t.Tranquilo IS NOT NULL;

-- View: Vindimas Futuras
CREATE VIEW VindimasFuturas AS
SELECT 
    v.Nome AS Nome_Vinho,
    v.Ano AS Ano_Vindima,
    v.Tipo AS Tipo_Vinho
FROM Vinho v
WHERE v.Ano > YEAR(CURRENT_DATE);
